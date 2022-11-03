--!nonstrict
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local Logging = require(CorePackages.Logging)
local UIBlox = require(CorePackages.UIBlox)

return function (themeName, defaultTheme, themeMap)
	-- TODO: We should move this up once we address APPFDN-1784
	local validateTheme = UIBlox.Style.Validator.validateTheme

	local mappedTheme
	if themeName ~= nil and #themeName > 0 then
		mappedTheme = themeMap[string.lower(themeName)]
	end

	if mappedTheme == nil then
		mappedTheme = themeMap[defaultTheme]
		Logging.warn(string.format("Unrecognized theme name: `%s`", tostring(themeName)))
	end
	ArgCheck.assert(validateTheme(mappedTheme))
	return mappedTheme
end
