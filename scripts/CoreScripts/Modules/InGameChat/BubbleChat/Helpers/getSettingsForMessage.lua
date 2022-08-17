local CorePackages = game:GetService("CorePackages")

local t = require(CorePackages.Packages.t)

local Types = require(script.Parent.Parent.Types)
local maybeAssert = require(script.Parent.maybeAssert)

local flags = script.Parent.Parent.Parent.Parent.Flags

-- Build a settings object for the specified message. chatSettings might contain some specific settings for the given
-- message (in the UserSpecificSettings field)
local function getSettingsForMessage(chatSettings, message)
	maybeAssert(Types.IChatSettings(chatSettings))
	maybeAssert(t.optional(Types.IMessage)(message))

	-- If no UserSpecificSettings is given, just use the main settings table as default for everyone
	local userSpecificSettings = chatSettings.UserSpecificSettings
	if not userSpecificSettings or not message then
		return chatSettings
	end

	-- Check if UserSpecificSettings has an entry that corresponds to the current message
	local userSettings = userSpecificSettings[message.userId] -- For players
	if not userSettings and message.adornee then
		userSettings = userSpecificSettings[message.adornee:GetFullName()] -- For NPCs
	end

	return userSettings or chatSettings
end

return getSettingsForMessage
