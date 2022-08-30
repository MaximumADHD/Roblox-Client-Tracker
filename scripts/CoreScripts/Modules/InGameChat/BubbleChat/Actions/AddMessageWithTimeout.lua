local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Types = require(script.Parent.Parent.Types)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)
local AddMessage = require(script.Parent.AddMessage)
local RemoveMessage = require(script.Parent.RemoveMessage)
local getSettingsForMessage = require(script.Parent.Parent.Helpers.getSettingsForMessage)

local FIntBubbleChatAddMessageRolloutPercent = game:DefineFastInt("BubbleChatAddMessageRolloutPercent", 100)

local function addMessageWithTimeout(message)
	maybeAssert(Types.IMessage(message))

	return function(store)
		store:dispatch(AddMessage(message))

		local chatSettings = getSettingsForMessage(store:getState().chatSettings, message)
		local userMessages = store:getState().userMessages[message.userId]
		local messages = store:getState().messages
		for i = 1, #userMessages - chatSettings.MaxBubbles do
			store:dispatch(RemoveMessage(messages[userMessages[i]]))
		end

		AnalyticsService:ReportCounter("RoactBubbleChat-MessagesSent")
		if FIntBubbleChatAddMessageRolloutPercent >= math.random(1, 100) then
			AnalyticsService:SendEventDeferred("client", "bubbleChatMetric", "messageAdded", {
				placeId = game.PlaceId,
				senderUserId = message.userId,
			})
		end

		wait(chatSettings.BubbleDuration)

		store:dispatch(RemoveMessage(message))
	end
end

return addMessageWithTimeout
