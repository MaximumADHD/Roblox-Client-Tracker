local ChatLocalization = {}

function ChatLocalization:Get(key, default)
	local rtv = default
	pcall(function()
		local LocalizationService = game:GetService("LocalizationService")
		local ChatService = game:GetService("Chat")
		local localization = ChatService:WaitForChild("ChatLocalization", 5)
		if localization then
			rtv = localization:GetString(LocalizationService.RobloxLocaleId, key)
		else
			warn("Missing ChatLocalization. Used default for", key)
		end
	end)
	return rtv
end

return ChatLocalization