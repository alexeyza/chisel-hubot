# Description:
#   Reminds group members to confirm their meeting with Peggy
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot confirm meetings - sends a public message to the #general channel reminding everyone to verify their meeting.
#
# Author:
#   alexeyza

module.exports = (robot) ->
    robot.respond /confirm meetings/i, (msg) ->
        sender = msg.message.user.name.toLowerCase()
    
        if sender is "margaret.anne.storey" || sender is "cassie"
            robot.messageRoom '#general', "<!channel>: Please check the calendar and let @{margaret.anne.storey} know if the time doesn't work for you. You can switch directly if someone will switch with you, or remove it if you don't need to meet."
        else
            msg.reply "sorry, you're not authorized <@alexeyza>"