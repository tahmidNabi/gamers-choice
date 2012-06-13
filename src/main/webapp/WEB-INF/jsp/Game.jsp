<%--
  Created by IntelliJ IDEA.
  User: pritom
  Date: 6/6/12
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Simple jsp page</title></head>
<body>
<div class="post">
    <div class="title">
        ${game.gameName}
    </div>
    <div class="entry">

        <img src="images/game.jpg" alt="" height="500" width="800">

        <div class="entry">
            ${game.synopsis}
        </div>

        <table>
            <tr class="spaceunder">

                <td>
                    <table>
                        <tr>
                            <td>
                                Genre:
                            </td>
                            <td>
                                ${game.genreString}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Platform:
                            </td>
                            <td>
                                ${game.platform}
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                Release Date:
                            </td>
                            <td>
                                ${game.releaseDate}
                            </td>

                        </tr>
                        <tr>
                            <td>
                                Difficulty:
                            </td>
                            <td>
                                <%--${game.difficulty}--%>
                                <c:choose>
                                    <c:when test="${game.difficulty=='1'}">Very Easy
                                    </c:when>

                                    <c:when test="${game.difficulty=='2'}">Easy
                                    </c:when>

                                    <c:when test="${game.difficulty=='3'}">Moderate
                                    </c:when>

                                    <c:when test="${game.difficulty=='4'}">Hard
                                    </c:when>


                                    <c:otherwise>
                                        Very Hard
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </table>
                </td>

            </tr>


        </table>

        <br>
        <br>
        <fieldset>
            <legend>Ratings</legend>
            <table>
                <tr>
                    <td>
                        Presentation
                    </td>
                    <td>
                        ${game.ratingPresentation}
                    </td>
                </tr>
                <tr>
                    <td>
                        Graphics
                    </td>
                    <td>
                        ${game.ratingGraphics}
                    </td>
                </tr>

                <tr>
                    <td>
                        Gameplay
                    </td>
                    <td>
                        ${game.ratingGamePlay}
                    </td>
                </tr>

                <tr>
                    <td>
                        Sound
                    </td>
                    <td>
                        ${game.ratingSound}
                    </td>
                </tr>

                <tr>
                    <td>
                        Lasting Appeal
                    </td>
                    <td>
                        ${game.ratingLongevity}
                    </td>
                </tr>


                <tr>
                    <td>
                        Game length (in hours)
                    </td>
                    <td>
                        ${game.gameLength}
                    </td>
                </tr>


                <tr>
                    <td>
                        Overall Rating
                    </td>
                    <td>
                        ${(game.ratingPresentation+game.ratingGraphics+game.ratingGamePlay+game.ratingSound+game.ratingLongevity)/5}
                    </td>
                </tr>

            </table>
        </fieldset>

    </div>
</div>
</body>
</html>