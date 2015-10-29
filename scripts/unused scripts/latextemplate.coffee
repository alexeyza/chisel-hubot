# Description:
#   Replies with the URL to the correct Latex template.
#
# use: hubot <venue> template

module.exports = (robot) ->
    robot.respond /(.*) template/i, (res) ->
        venueType = res.match[1].toUpperCase()
        notFoundResponses = ["Do I look like Google to you?","sounds like a low rated venue, consider submitting somewhere else."]
        switch venueType
            when "THESIS" then res.send "UVic thesis template\nhttp://www.uvic.ca/library/featured/collections/uvic/thesis/latex/latextemplates.php"
            when "ICSE","CSCW" then res.send venueType+" Latex template (use the \"Option 2\" style)\nhttp://www.acm.org/sigs/publications/proceedings-templates"
            when "TSE" then res.send venueType+" Latex template\nhttp://www.computer.org/cms/Computer.org/transactions/templates/ieeetran-final_sub.zip"
            else res.send res.random notFoundResponses