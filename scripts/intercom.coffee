# Description:
#   A script used as an intercom system, to notify Peggy someone was looking for her
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# URLs:
#   POST /hubot/intercom
#     message = <message>
#     to = <to>
#     email = <email>
#     name = <name>
#
#   curl -X POST http://localhost:8080/hubot/intercom -d to='alexeyza' -d name='guest' -d email=guest@gmail.com -d message='testing script'
#   curl -X POST http://blooming-crag-5072.herokuapp.com/hubot/intercom -d to='alexeyza' -d name='guest' -d email='guest@gmail.com' -d message='testing'
#
# Author:
#   alexeyza

module.exports = (robot) ->
  robot.router.post "/hubot/intercom", (req, res) ->
    body = req.body
    user = 'margaret\\.anne\\.storey' #body.to
    guest_name = body.name
    message = body.message
    guest_email = body.email

    if guest_name
        if message
            message = '\n>_"'+message+'"_'
        else
            message = ''
        if guest_email
            guest_email = ' <'+guest_email+'>'
        else
            guest_email = ''
        robot.send {room: user}, 'Hi '+user+', '+guest_name+guest_email+' was looking for you at your office just now.'+message

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end 'Thanks, we notified '+user+'\n'