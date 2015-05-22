/*******************************************************************************
 * Copyright (C) 2015 BonitaSoft S.A.
 * BonitaSoft is a trademark of BonitaSoft SA.
 * This software file is BONITASOFT CONFIDENTIAL. Not For Distribution.
 * For commercial licensing information, contact:
 * BonitaSoft, 32 rue Gustave Eiffel – 38000 Grenoble
 * or BonitaSoft US, 51 Federal Street, Suite 305, San Francisco, CA 94107
 *******************************************************************************/
package com.bonitasoft.engine.bdm;

import com.bonitasoft.engine.bdm.validator.ValidationStatus;

/**
 * @author Romain Bioteau
 * @deprecated from version 7.0.0 on, use {@link org.bonitasoft.engine.bdm.BusinessObjectModelValidationException} instead.
 */
@Deprecated
public class BusinessObjectModelValidationException extends Exception {

    private final ValidationStatus validationStatus;

    public BusinessObjectModelValidationException(final ValidationStatus validationStatus) {
        this.validationStatus = validationStatus;
    }

    @Override
    public String getMessage() {
        final StringBuilder sb = new StringBuilder();
        for (final String errorMessage : validationStatus.getErrors()) {
            sb.append("\n- ");
            sb.append(errorMessage);
        }
        return sb.toString();
    }

    private static final long serialVersionUID = 1L;

}