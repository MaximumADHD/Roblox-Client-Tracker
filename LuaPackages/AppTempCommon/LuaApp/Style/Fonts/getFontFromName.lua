local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)
local Logging = require(CorePackages.Logging)
local UIBlox = require(CorePackages.UIBlox)
local validateFont = UIBlox.Style.Validator.validateFont

return function (fontName, defaultFont, fontMap)
	local mappedFont
	if fontName ~= nil and #fontName > 0 then
		mappedFont = fontMap[string.lower(fontName)]
	end

	if mappedFont == nil then
		mappedFont = fontMap[defaultFont]
		Logging.warn(string.format("Unrecognized font name: `%s`", tostring(fontName)))
	end

	ArgCheck.assert(validateFont(mappedFont))
	return mappedFont
end