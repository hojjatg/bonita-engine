/**
 * Copyright (C) 2014 BonitaSoft S.A.
 * BonitaSoft, 32 rue Gustave Eiffel - 38000 Grenoble
 * This library is free software; you can redistribute it and/or modify it under the terms
 * of the GNU Lesser General Public License as published by the Free Software Foundation
 * version 2.1 of the License.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this
 * program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
 * Floor, Boston, MA 02110-1301, USA.
 **/
package org.bonitasoft.engine.commons;

import java.io.File;

/**
 * String manipulation utilitary class.
 *
 * @author Emmanuel Duchastenier
 */
public class StringUtils {
    /**
     * Replaces all "\" or "/" characters to sytem-dependent {@link File#separator} character, and ensures that there is no consecutive doubles.
     *
     * @param path the path-like string to clean.
     * @return the cleaned path-like string.
     */
    public static String uniformizePathPattern(final String path) {
        return path.replaceAll("[\\\\/]", File.separator).replaceAll(File.separator + "{2,}", File.separator);
    }
}
