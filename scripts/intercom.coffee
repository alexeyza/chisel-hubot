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

    robot.send 'alexeyza','hello testing script'
    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end 'Thanks\n'