-- The ID and SpeakerUserId are converted into strings because they are used as
-- dictionary keys.
--
-- Since both of these are numbers, we would effectively be creating an array
-- with holes in it otherwise. Converting to strings gives us unique keys, and
-- also has no implications of the tables they're put into being considered as
-- arrays.

local Players = game:GetService("Players")

local Types = require(script.Parent.Parent.Types)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)
local AddMessageWithTimeout = require(script.Parent.AddMessageWithTimeout)

local function addMessageFromEvent(messageData)
	maybeAssert(Types.IMessageData(messageData))

	return function(store)
		local ok, player = pcall(function()
			return Players:GetPlayerByUserId(messageData.SpeakerUserId)
		end)

		if ok and player then
			local character = player.Character

			if character then
				local message = {
					id = tostring(messageData.ID),
					userId = tostring(messageData.SpeakerUserId),
					name = messageData.FromSpeaker,
					text = messageData.Message or "",
					timestamp = messageData.Time,
					adornee = character,
				}

				return store:dispatch(AddMessageWithTimeout(message))
			end
		end
	end
end

return addMessageFromEvent
