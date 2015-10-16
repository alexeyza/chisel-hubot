# Description:
#   Encourages reflection
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

messages = ['Have a good weekend!', 'Hi, how was your week?', 'What was your biggest challenge this week?', 'Remember to take care of yourself physically. Take the weekend off.']

TIMEZONE = "America/Vancouver"
MESSAGE_TIME = '0 55 21 * * *' # F 1pm
ROOM = "alexeyza"

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        robot.send {room: ROOM}, "finally"
                null
                true