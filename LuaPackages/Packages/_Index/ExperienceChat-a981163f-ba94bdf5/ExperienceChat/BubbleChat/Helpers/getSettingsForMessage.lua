-- Build a settings object for the specified message. chatSettings might contain some specific settings for the given
-- message (in the UserSpecificSettings field)
local function getSettingsForMessage(chatSettings, lastMessage: any?)
	-- If no UserSpecificSettings is given, just use the main settings table as default for everyone
	local userSpecificSettings = chatSettings and chatSettings.UserSpecificSettings
	if not lastMessage or not userSpecificSettings then
		return chatSettings
	end

	-- Check if UserSpecificSettings has an entry that corresponds to the current message
	if userSpecificSettings[lastMessage.userId] then
		return userSpecificSettings[lastMessage.userId] -- For players
	end
	if lastMessage.partOrModel and userSpecificSettings[lastMessage.partOrModel:GetFullName()] then
		return userSpecificSettings[lastMessage.partOrModel:GetFullName()] -- Folderr NPCs
	end

	return chatSettings
end

return getSettingsForMessage
