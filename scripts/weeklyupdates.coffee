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
IMAGE_URL = ["https://photos-5.dropbox.com/t/2/AADXUAfUcGDEtAs2gUyPLw183uIWx0BEvvrEaqwuY0oz_w/12/21932852/png/32x32/1/_/1/2/phd.png/ELnPuxAYy-kDIAcoBw/54pDX9lvlMGQlvvWytd126hf0FSXxliP5ERsvZTN2Mw?size=1280x960&size_mode=3", "https://photos-2.dropbox.com/t/2/AACaHs2fwIx7hsKxpZdHwVQIYGZs1zUlZAWL4ZNFCzd8wg/12/21932852/png/32x32/1/_/1/2/panic2.png/ELnPuxAYy-kDIAcoBw/li3NrIxGa7OSoMva6ZOmk7TpsBD-59DagMA4LP4v4Xw?size=1280x960&size_mode=3", "https://photos-2.dropbox.com/t/2/AABy_7A7spn41m-gPp04u34N-dglyyMv67dTp4-qWxyG5Q/12/21932852/png/32x32/1/_/1/2/panic.png/ELnPuxAYy-kDIAcoBw/FSdZCa-6_94Na-AUAlWIpS6i_qMf7xGTIRhKHQTGyWo?size=1280x960&size_mode=3"]

attachment = 
    attachments:[
        text: "A reminder to update your weekly updates.\nDo you need to meet Peggy this week? If so, add your agenda to the GMAIL meeting or YOUR MEETING WILL BE CANCELLED!"
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
