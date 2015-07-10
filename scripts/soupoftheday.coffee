# Description:
#   Replies with UVic's soup of the day information
#
# use: hubot soup of the day

module.exports = (robot) ->
    robot.respond /soup of the day/i, (msg) ->
        robot.http('http://www.uvic.ca/services/food/home/events/archive/current/soup-of-the-day.php').get() (err, res, body) ->
            match = /<h2>(.|\n)+Bon Appetit/g.exec body
            data = match[0].replace /<(?:.|\n)*?>/g, ''
            msg.send data