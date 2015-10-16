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

MESSAGES = ['Have a good weekend!', 'Hi, how was your week?', "What was your biggest challenge this week?", 'Remember to take care of yourself physically. Take the weekend off :)', "What's the main thing you'd like to accomplish next week?"]

MESSAGE_TIME = '0 38 15 * * 5' # F 1pm
USERS = ["alexeyza"]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        for USER in USERS
                            robot.send {room: USER}, MESSAGES[Math.floor(Math.random() * MESSAGES.length)]
                null
                true