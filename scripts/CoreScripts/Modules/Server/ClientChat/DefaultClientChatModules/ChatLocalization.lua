local ChatLocalization = {}

function ChatLocalization:Get(key,default)
  local rtv = default
  pcall(function()
		local LocalizationService = game:GetService("LocalizationService")
		local CorescriptLocalization = LocalizationService:GetCorescriptLocalizations()[1]
		rtv = CorescriptLocalization:GetString(LocalizationService.SystemLocaleId, key)
	end)
	return rtv
end

return ChatLocalization