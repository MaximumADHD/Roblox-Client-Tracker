local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Analytics = require(ExperienceChat.Analytics)

local function getCounterName(textChatMessage: TextChatMessage): string?
	if textChatMessage.Status == Enum.TextChatMessageStatus.Success then
		local textChannel = textChatMessage.TextChannel
		if textChannel then
			local channelName = textChannel.Name
			if string.find(channelName, "^RBX") == nil then
				return "expChatMessageReceivedSuccessCustom"
			end

			if channelName == "RBXGeneral" then
				return "expChatMessageReceivedSuccessGeneral"
			elseif channelName == "RBXSystem" then
				return "expChatMessageReceivedSuccessSystem"
			elseif string.find(channelName, "^RBXWhisper") then
				return "expChatMessageReceivedSuccessWhisper"
			elseif string.find(channelName, "^RBXTeam") then
				return "expChatMessageReceivedSuccessTeam"
			else
				return "expChatMessageReceivedSuccessCustom"
			end
		end
	end

	if textChatMessage.Status == Enum.TextChatMessageStatus.Unknown then
		return "expChatMessageReceivedUnknown"
	elseif textChatMessage.Status == Enum.TextChatMessageStatus.InvalidTextChannelPermissions then
		return "expChatMessageReceivedInvalidTextChannelPermissions"
	elseif textChatMessage.Status == Enum.TextChatMessageStatus.InvalidPrivacySettings then
		return "expChatMessageReceivedInvalidPrivacySettings"
	elseif textChatMessage.Status == Enum.TextChatMessageStatus.TextFilterFailed then
		return "expChatMessageReceivedTextFilterFailed"
	elseif textChatMessage.Status == Enum.TextChatMessageStatus.Floodchecked then
		return "expChatMessageReceivedFloodchecked"
	elseif textChatMessage.Status == Enum.TextChatMessageStatus.MessageTooLong then
		return "expChatMessageReceivedMessageTooLong"
	else
		return nil
	end
end

return function(localUserId: number, textChatMessage: TextChatMessage)
	local textSource = textChatMessage.TextSource
	if textSource then
		if localUserId == textSource.UserId then
			local counterName = getCounterName(textChatMessage)

			if counterName then
				Analytics.reportCounter(counterName)
			end
		end
	end
end
