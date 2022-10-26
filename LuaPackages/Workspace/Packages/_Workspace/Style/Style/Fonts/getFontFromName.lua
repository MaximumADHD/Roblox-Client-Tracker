--!nonstrict
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)
local Logging = require(CorePackages.Logging)
local UIBlox = require(CorePackages.UIBlox)

return function (fontName, defaultFont, fontMap)
	-- TODO: We should move this up once we address APPFDN-1784
	local validateFont = UIBlox.Style.Validator.validateFont

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
