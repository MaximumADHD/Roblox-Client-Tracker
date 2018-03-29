local LocalizationService = game:GetService("LocalizationService")
local ChatService = game:GetService("Chat")

local ChatLocalization = {
	_hasFetchedLocalization = false,
}

function ChatLocalization:_getTranslator()
	if not self._translator and not self._hasFetchedLocalization then
		-- Don't keep retrying if this fails.
		self._hasFetchedLocalization = true
		
		local localizationTable = ChatService:WaitForChild("ChatLocalization", 4)
		if localizationTable then
			self._translator = localizationTable:GetTranslator(LocalizationService.RobloxLocaleId)
			LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
				-- If RobloxLocaleId changes invalidate the cached Translator.
				self._hasFetchedLocalization = false
				self._translator = nil
			end)
		else
			warn("Missing ChatLocalization. Chat interface will not be localized.")
		end
	end
	return self._translator
end

function ChatLocalization:Get(key, default)
	local rtv = default
	pcall(function()
		local translator = self:_getTranslator()
		if translator then
			rtv = translator:FormatByKey(key)
		else
			warn("Missing Translator. Used default for", key)
		end
	end)
	return rtv
end

return ChatLocalization