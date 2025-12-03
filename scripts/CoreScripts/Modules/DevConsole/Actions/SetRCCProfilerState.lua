--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(waitingForRecording, lastFileOutputLocation)

    return {
        waitingForRecording = waitingForRecording,
        lastFileOutputLocation = lastFileOutputLocation or "",
    }
end)