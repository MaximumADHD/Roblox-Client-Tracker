local ChatLocalization = {}

function ChatLocalization:Get(key,default)
  local rtv = default
  pcall(function()
		local LocalizationService = game:GetService("LocalizationService")
			rtv = game:GetService("Chat").ChatLocalization:GetString(LocalizationService.RobloxLocaleId, key)
	end)
	return rtv
end

return ChatLocalization