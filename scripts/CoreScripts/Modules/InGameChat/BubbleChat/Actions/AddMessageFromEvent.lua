-- The ID and SpeakerUserId are converted into strings because they are used as
-- dictionary keys.
--
-- Since both of these are numbers, we would effectively be creating an array
-- with holes in it otherwise. Converting to strings gives us unique keys, and
-- also has no implications of the tables they're put into being considered as
-- arrays.

local Types = require(script.Parent.Parent.Types)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)
local AddMessage = require(script.Parent.AddMessage)

local function addMessageFromEvent(messageData)
	maybeAssert(Types.IMessageData(messageData))

	local message = {
		id = tostring(messageData.ID),
		userId = tostring(messageData.SpeakerUserId),
		name = messageData.FromSpeaker,
		text = messageData.Message or "",
		timestamp = messageData.Time
	}

	return AddMessage(message)
end

return addMessageFromEvent
