# Description:
#   "Accepts POST data and broadcasts it"
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
#     type = <type>
#
#   curl -X POST http://localhost:8080/hubot/intercom -d to='alexeyza' -d name='guest' -d email=guest@gmail.com -d message='testing script'
#
# Author:
#   alexeyza

module.exports = (robot) ->
  robot.router.post "/hubot/intercom", (req, res) ->
    body = req.body
    user = '@'+body.to
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
      robot.send user, 'Hi '+user+', '+guest_name+guest_email+' is looking for you at your office right now.'+message+'"'

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end 'Thanks\n'