# Description:
#   Reminds group members to confirm their meeting with Peggy
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

MESSAGE = "Just a reminder for your meeting with Peggy tomorrow. Please send an agenda to <@U03Q115P4>, or remove the meeting from the calendar if you don't need to meet."

MESSAGE_TIME = '0 0 13 * * 3' # W 1pm
USERS = ["alexeyza","cagomezt", "bin","maryi","clebeuf","everbeek","marllos","tania"]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        for USER in USERS
                            robot.send {room: USER}, MESSAGE
                null
                true