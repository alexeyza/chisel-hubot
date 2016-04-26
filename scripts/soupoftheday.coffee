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
        robot.http('https://www.uvic.ca/services/food/home/events/current/soup-of-the-day.php').get() (err, res, body) ->
            match = body.match(/<p>[<strong>]*<a href="[\.\/\w]*">([<strong>]*[\w\&\#\;\<\>\/\s]*[<\/strong>]*)<\/a>[<\/strong>]*<\/p>\n<ul>\n([\w\s\<\>\/\"\n\=]*)<\/ul>/g)
            if match
                output = ''
                for place in match
                    data = /<p>[<strong>]*<a href="[\.\/\w]*">([<strong>]*[\w\&\#\;\<\>\/\s]*[<\/strong>]*)<\/a>[<\/strong>]*<\/p>\n<ul>\n([\w\s\<\>\/\"\n\=]*)<\/ul>/g.exec place
                    if data
                        output += '*'+(((data[1].replace /<strong>/g, '').replace /<\/strong>/g, '').replace /\&amp;/g, '\&').replace /\&\#8217;/g, '\''
                        output += '*\n'
                        output += (((data[2].replace /<li>/g, '').replace /<\/li>/g, '').replace /<span class="spell">/g, '').replace /<\/span>/g,''
                        output += '\n'
            msg.send output.replace(/\n$/, '')