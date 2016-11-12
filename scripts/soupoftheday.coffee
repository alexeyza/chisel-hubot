# Description:
#   Replies with UVic's soup of the day information
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot soup of the day - prints the offered soup of the day at UVic
#
# Author:
#   alexeyza

module.exports = (robot) ->
    robot.respond /soup of the day/i, (msg) ->
        robot.http('http://www.uvic.ca/services/food/home/events/current/todays-soups.php').get() (err, res, body) ->
            match = body.match(/\<h3\>\<a href=\"\#\"\>([\w\s\'é]+)\<\/a\>\<\/h3\>\<div\>\<ul\>\n(\<li\>[\w\s\&\;]*\<\/li\>\n)+\<\/ul\>\<\/div\>/g)
            if match
                output = ''
                for place in match
                    data = /\<h3\>\<a href=\"\#\"\>([\w\s\'é]+)\<\/a\>\<\/h3\>\<div\>\<ul\>\n(\<li\>[\w\s\&\;]*\<\/li\>\n)+\<\/ul\>\<\/div\>/g.exec place
                    if data
                        output += '*'+data[1]
                        output += '*\n'
                        soups = data[0].match(/\<li\>([\w\s\&\;]*)\<\/li\>\n/g)
                        # output += soups[1]
                        for soup in soups
                            output += soup.substr(4,soup.lastIndexOf('<')-4).replace /\&amp;/g, '\&'
                            output += '\n'
                        output += '\n'
                #output += 'https://www.uvic.ca/services/food/assets/images/photos/main/bnr_soup_special.jpg'
            msg.send output