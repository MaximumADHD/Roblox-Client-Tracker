--!nonstrict
local Style = script:FindFirstAncestor("Style")
local Packages = Style.Parent
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local Logging = require(CorePackages.Logging)
local UIBlox = require(CorePackages.UIBlox)

local Logger = require(Style.Logger)

local GetFFlagLuaAppWorkspaceUseLumberyakLogger =
	require(Packages.SharedFlags).GetFFlagLuaAppWorkspaceUseLumberyakLogger

return function(themeName, defaultTheme, themeMap)
	-- TODO: We should move this up once we address APPFDN-1784
	local validateTheme = UIBlox.Style.Validator.validateTheme

	local mappedTheme
	if themeName ~= nil and #themeName > 0 then
		mappedTheme = themeMap[string.lower(themeName)]
	end

	if mappedTheme == nil then
		mappedTheme = themeMap[defaultTheme]

		if GetFFlagLuaAppWorkspaceUseLumberyakLogger() then
			Logger:warning(string.format("Unrecognized theme name: `%s`", tostring(themeName)))
		else
			Logging.warn(string.format("Unrecognized theme name: `%s`", tostring(themeName)))
		end
	end
	ArgCheck.assert(validateTheme(mappedTheme))
	return mappedTheme
end
