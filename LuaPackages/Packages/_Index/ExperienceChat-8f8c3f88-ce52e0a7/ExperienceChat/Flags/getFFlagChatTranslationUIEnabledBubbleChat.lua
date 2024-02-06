local TextChatService = game:GetService("TextChatService")
local getFFlagChatTranslationUIEnabled = require(script.Parent.getFFlagChatTranslationUIEnabled)

return function()
	local isLegacyChatServiceOn = TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService
	if isLegacyChatServiceOn then
		-- Chat Bubbles should never be translated for legacy bubble chat
		return false
	end

	return getFFlagChatTranslationUIEnabled()
end
