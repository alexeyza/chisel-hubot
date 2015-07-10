# Description:
#   Replies with UVic's soup of the day information
#
# use: hubot soup of the day

module.exports = (robot) ->
    robot.respond /soup of the day/i, (msg) ->
        robot.http('http://www.uvic.ca/services/food/home/events/archive/current/soup-of-the-day.php').get() (err, res, body) ->
            match = /<h2>(.|\n)+Bon Appetit/g.exec body
            data = match[0].replace /<(?:.|\n)*?>/g, ''
            data2 = data.replace /(&#160;)/, ' '
            data3 = data2.replace /(&#8217;)/, '\''
            data4 = data3.replace /(&amp;)/, '&'
            data5 = data4.replace /(\n\n\n Bon Appetit)/,  ''
            data6 = data5.replace /(\n\n)/g, '\n'
            data7 = ((((data6.replace /(Court)/, '\n*Court*').replace /(Mac's)/, "\n*Mac's*").replace /(Nibbles & Bytes)/, "\n*Nibbles & Bytes*").replace /(SciCafe)/, "\n*SciCafe*").replace /(Commons)/, "\n*Commons*"
            msg.send data7