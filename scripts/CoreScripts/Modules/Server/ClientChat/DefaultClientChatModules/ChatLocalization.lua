local LocalizationService = game:GetService("LocalizationService")
local ChatService = game:GetService("Chat")

local ChatLocalization = {
	_hasFetchedLocalization = false,
}

function ChatLocalization:_getLocalizationTable()
	if not self._localizationTable then
		if not self._hasFetchedLocalization then
			self._hasFetchedLocalization = true
			self._localizationTable = ChatService:WaitForChild("ChatLocalization", 4)
		end
	end

	return self._localizationTable
end

function ChatLocalization:Get(key, default)
	local rtv = default
	pcall(function()
		local localizationTable = self:_getLocalizationTable()
		if localizationTable then
			rtv = localizationTable:GetString(
				LocalizationService.RobloxLocaleId, key
			)
		else
			warn("Missing ChatLocalization. Used default for", key)
		end
	end)
	return rtv
end

return ChatLocalization