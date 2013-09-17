/*******************************************************************************
 * Copyright (C) 2009, 2013 BonitaSoft S.A.
 * BonitaSoft is a trademark of BonitaSoft SA.
 * This software file is BONITASOFT CONFIDENTIAL. Not For Distribution.
 * For commercial licensing information, contact:
 * BonitaSoft, 32 rue Gustave Eiffel – 38000 Grenoble
 * or BonitaSoft US, 51 Federal Street, Suite 305, San Francisco, CA 94107
 *******************************************************************************/
package com.bonitasoft.engine.log.api.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.bonitasoft.engine.log.technical.TechnicalLogSeverity;
import org.bonitasoft.engine.log.technical.TechnicalLoggerService;
import org.bonitasoft.engine.scheduler.JobRegister;
import org.bonitasoft.engine.scheduler.SchedulerService;
import org.bonitasoft.engine.scheduler.exception.SSchedulerException;
import org.bonitasoft.engine.scheduler.model.SJobDescriptor;
import org.bonitasoft.engine.scheduler.model.SJobParameter;
import org.bonitasoft.engine.scheduler.trigger.Trigger;
import org.bonitasoft.engine.scheduler.trigger.UnixCronTrigger;
import org.bonitasoft.engine.services.PersistenceService;

public class InsertBatchLogsJobRegister implements JobRegister {

    private volatile boolean mustStartJob = false;

    private static final String INSERT_BATCH_LOGS_JOB = "InsertBatchLogsJob";

    private static InsertBatchLogsJobRegister INSTANCE;

    private final SchedulerService schedulerService;

    private final TechnicalLoggerService loggerService;

    private final String cronExpression;

    /**
     * @param persistenceService
     * @param schedulerService
     * @param loggerService
     * @param repeat
     *            cron expression to tell when the job must be run
     *            e.g. * *\/2 * * * ? to run it every 2 minutes
     */
    public InsertBatchLogsJobRegister(final PersistenceService persistenceService, final SchedulerService schedulerService,
            final TechnicalLoggerService loggerService, final String cronExpression) {
        this.schedulerService = schedulerService;
        this.loggerService = loggerService;
        this.cronExpression = cronExpression;
        InsertBatchLogsJob.setPersistenceService(persistenceService);
        mustStartJob = true;
        INSTANCE = this;
    }

    public static InsertBatchLogsJobRegister getInstance() {
        return INSTANCE;
    }

    @Override
    public void registerJobIfNotRegistered() {
        if (mustStartJob) {
            synchronizedRegister();
        }
    }

    private synchronized void synchronizedRegister() {
        if (mustStartJob) {
            try {
                final List<String> jobs = schedulerService.getAllJobs();
                if (!jobs.contains(INSERT_BATCH_LOGS_JOB)) {
                    if (loggerService.isLoggable(this.getClass(), TechnicalLogSeverity.INFO)) {
                        loggerService.log(this.getClass(), TechnicalLogSeverity.INFO, "Register insert batch logs with repeat cron: " + cronExpression);
                    }
                    final SJobDescriptor jobDescriptor = schedulerService.getJobDescriptorBuilder()
                            .createNewInstance(InsertBatchLogsJob.class.getName(), INSERT_BATCH_LOGS_JOB, true).done();
                    final ArrayList<SJobParameter> jobParameters = new ArrayList<SJobParameter>();
                    final Trigger trigger = new UnixCronTrigger("UnixCronTrigger" + UUID.randomUUID().getLeastSignificantBits(), new Date(), cronExpression);
                    schedulerService.schedule(jobDescriptor, jobParameters, trigger);
                } else {
                    loggerService.log(this.getClass(), TechnicalLogSeverity.INFO, "The insert job was already started");
                }
            } catch (final SSchedulerException e) {
                loggerService.log(this.getClass(), TechnicalLogSeverity.ERROR, "Unable to register job because " + e.getMessage());
                if (loggerService.isLoggable(this.getClass(), TechnicalLogSeverity.DEBUG)) {
                    loggerService.log(this.getClass(), TechnicalLogSeverity.DEBUG, e);
                }
            }
            mustStartJob = false;
        }
    }

}
