--!nonstrict

local LocalizationService = game:GetService("LocalizationService")
local ChatService = game:GetService("Chat")

local existingKey = {
	["System"] = "InGame.Chat.Label.SystemMessagePrefix",
	["Team"] = "InGame.Chat.Label.TeamMessagePrefix",
}

local whisperPatterns = {
	["From(%s.+)"] = {
		English = "From",
		LocalizationKey = "InGame.Chat.Label.From",
	},

	["To(%s.+)"] = {
		English = "To",
		LocalizationKey = "InGame.Chat.Label.To",
	},
}

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

function ChatLocalization:Get(key, default, extraParameters)
	local rtv = default
	pcall(function()
		local translator = self:_getTranslator()
		if translator then
			rtv = translator:FormatByKey(key, extraParameters)
		else
			warn("Missing Translator. Used default for", key)
		end
	end)
	return rtv
end

function ChatLocalization:LocalizeFormattedMessage(message)
	local keyStart, keyEnd = string.find(message, "{RBX_LOCALIZATION_KEY}")
	if not keyStart then
		return message
	end

	local defaultStart, defaultEnd = string.find(message, "{RBX_LOCALIZATION_DEFAULT}")
	if not defaultStart then
		return message
	end

	local paramStart, paramEnd = string.find(message, "{RBX_LOCALIZATION_PARAMS}")
	local key = string.sub(message, keyEnd + 1, defaultStart - 1)
	local default
	if not paramStart then
		default = string.sub(message, defaultEnd + 1)
		return self:Get(key, default)
	end

	default = string.sub(message, defaultEnd + 1, paramStart - 1)
	local params = string.sub(message, paramEnd + 1)
	local extraParameters = {}
	for k,v in string.gmatch(params,"([^%s]+)=([^%s]+)") do
		extraParameters[k] = v
	end

	return self:Get(key, default, extraParameters)
end

function ChatLocalization:FormatMessageToSend(key, defaultMessage, parameterName, value)
	if parameterName and value then
		return "{RBX_LOCALIZATION_KEY}"..key.."{RBX_LOCALIZATION_DEFAULT}"..defaultMessage
			.."{RBX_LOCALIZATION_PARAMS}"..parameterName.."="..value
	else
		return "{RBX_LOCALIZATION_KEY}"..key.."{RBX_LOCALIZATION_DEFAULT}"..defaultMessage
	end
end

-- try localize whole/part of string
-- no more-than-1 replacement for current existing keys.
function ChatLocalization:tryLocalize(rawString)
	if existingKey[rawString] then
		return self:Get(existingKey[rawString], rawString)
	end

	for enString, localizationKey in pairs(existingKey) do
		if string.find(rawString, enString) then
			local localizedPart = self:Get(localizationKey, enString)
			return string.gsub(rawString, enString, localizedPart, 1)
		end
	end

	for pattern, info in pairs(whisperPatterns) do
		local startIndex = string.find(rawString, pattern)
		local namePart = string.match(rawString, pattern)
		if startIndex and namePart then
			local localizedPart = self:Get(info.LocalizationKey, info.English)
			local startPart = if startIndex > 1 then rawString:sub(1, startIndex - 1) else ""
			return startPart .. localizedPart .. namePart
		end
	end

	return rawString
end

return ChatLocalization