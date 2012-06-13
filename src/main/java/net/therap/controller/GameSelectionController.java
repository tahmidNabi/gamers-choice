package net.therap.controller;

import net.therap.dao.GameDao;
import net.therap.domain.Game;
import net.therap.service.GameService;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by IntelliJ IDEA.
 * User: pritom
 * Date: 6/7/12
 * Time: 9:51 AM
 * To change this template use File | Settings | File Templates.
 */
public class GameSelectionController extends SimpleFormController{
    protected final Logger logger = Logger.getLogger(this.getClass());

    GameDao gameDao;
    GameService gameService;


    public GameDao getGameDao() {
        return gameDao;
    }

    public void setGameDao(GameDao gameDao) {
        this.gameDao = gameDao;
    }

    public GameService getGameService() {
        return gameService;
    }

    public void setGameService(GameService gameService) {
        this.gameService = gameService;
    }


    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

        logger.info("Got request from Game.htm" + request.getParameter("gameId"));


        int gameId = Integer.parseInt(request.getParameter("gameId"));
        Game game = gameService.getGame(gameId);


        return new ModelAndView("Game", "game", game);
    }
}
