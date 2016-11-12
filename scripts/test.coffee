# Description:
#   Replies with UVic's systems status
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot status of uvic systems - reports on the status of UVic systems
#
# Author:
#   alexeyza

module.exports = (robot) ->
    robot.respond /test/i, (msg) ->
        #create the message with attachment object
        msgData = {
          channel: res.message.room
          text: "Latest changes"
          attachments: [
            {
              fallback: "Comparing #{latestRelease.name}...#{latestRelease.target_commitish} - #{compare.html_url}",
              title: "Comparing #{latestRelease.name}...#{latestRelease.target_commitish}"
              title_link: compare.html_url
              text: commits_summary
              mrkdwn_in: ["text"]
            }
          ]
        }

        # post the message
        robot.adapter.customMessage msgData