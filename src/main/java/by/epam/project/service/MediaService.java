package by.epam.project.service;

import by.epam.project.entity.impl.Film;
import by.epam.project.entity.impl.FilmInfo;
import by.epam.project.service.exception.ServiceException;

import java.util.List;

public interface MediaService {
    boolean isFilmExist(String name) throws ServiceException;

    List<Film> findAllUndeletedFilms(int currentPage, int filmsOnPage, String language) throws ServiceException;

    int calculateNumberOfRows() throws ServiceException;

    Film findFilmByName(String name,String language) throws ServiceException;

    Film findFilmById(long id,String language) throws ServiceException;

    FilmInfo findInfoById(long filmId,String language) throws ServiceException;

    boolean createFilm(String filmName) throws ServiceException;

    boolean createFilmInfo(String link, String genre, String description,
                           int yearOfCreation, long filmId, String language) throws ServiceException;
}
