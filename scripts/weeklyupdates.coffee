# Description:
#   Reminds group members to post weekly updates
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

MESSAGE_TIME = '00 15 09 * * 1' # Monday 10:15am
IMAGE_URL = ["https://dl.dropboxusercontent.com/u/21932852/phd.png", "https://dl.dropboxusercontent.com/u/21932852/panic2.png", "https://dl.dropboxusercontent.com/u/21932852/panic.png"]

attachment = 
    attachments:[
        text: "<!channel> A reminder to update your weekly updates.\nDo you need to meet Peggy? If so, send an agenda or YOUR MEETING WILL BE CANCELLED!"
        title: "Weekly updates reminder"
        image_url: IMAGE_URL[Math.floor(Math.random() * IMAGE_URL.length)]
    ]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        # post a custom message
                        robot.send room: 'C03PYBLB6', attachment
                null
                true