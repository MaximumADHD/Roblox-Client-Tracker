local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event

local SoundFeedbackEvent = {
	Name = "SoundFeedbackEvent",
}

function SoundFeedbackEvent.StartEvent()
	local sound = Instance.new("Sound")
	sound.Parent = game.Workspace

	sound.SoundId = "rbxassetid://10066947742"
	sound.Volume = 1

	sound:Play()
end

return SoundFeedbackEvent :: Event
