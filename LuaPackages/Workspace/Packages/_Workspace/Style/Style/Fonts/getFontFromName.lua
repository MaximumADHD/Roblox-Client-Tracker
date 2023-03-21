--!nonstrict
local Style = script:FindFirstAncestor("Style")
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local UIBlox = require(CorePackages.UIBlox)

local Logger = require(Style.Logger)

return function(fontName, defaultFont, fontMap)
	-- TODO: We should move this up once we address APPFDN-1784
	local validateFont = UIBlox.Style.Validator.validateFont

	local mappedFont
	if fontName ~= nil and #fontName > 0 then
		mappedFont = fontMap[string.lower(fontName)]
	end

	if mappedFont == nil then
		mappedFont = fontMap[defaultFont]

		Logger:warning(string.format("Unrecognized font name: `%s`", tostring(fontName)))
	end

	ArgCheck.assert(validateFont(mappedFont))
	return mappedFont
end
