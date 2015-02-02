/*******************************************************************************
 * Copyright (C) 2009, 2012 BonitaSoft S.A.
 * BonitaSoft is a trademark of BonitaSoft SA.
 * This software file is BONITASOFT CONFIDENTIAL. Not For Distribution.
 * For commercial licensing information, contact:
 * BonitaSoft, 32 rue Gustave Eiffel – 38000 Grenoble
 * or BonitaSoft US, 51 Federal Street, Suite 305, San Francisco, CA 94107
 *******************************************************************************/
package org.bonitasoft.engine.parameter;

import org.bonitasoft.engine.commons.exceptions.SBonitaException;

/**
 * @author Matthieu Chaffotte
 */
public class SParameterProcessNotFoundException extends SBonitaException {

    private static final long serialVersionUID = 946351177446570851L;

    public SParameterProcessNotFoundException(final String message) {
        super(message);
    }

    public SParameterProcessNotFoundException(final Throwable cause) {
        super(cause);
    }

}
