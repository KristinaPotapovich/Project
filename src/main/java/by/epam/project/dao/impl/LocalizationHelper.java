package by.epam.project.dao.impl;

import by.epam.project.entity.impl.Film;

public class LocalizationHelper {

    public static String buildLocalizedColumn(String columnName, String language) {
        return columnName.concat(language);
    }
}
