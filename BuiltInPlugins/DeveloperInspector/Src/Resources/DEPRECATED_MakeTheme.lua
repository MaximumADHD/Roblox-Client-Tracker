--[[
    TODO DEVTOOLS-4731: Once the theming refactor is live for all, we
    should not use this method of theming in any plugin. However, in the
    interim we will have to support both. This is a bridge file to ensure that
    theming works with and without the flag on for the time being.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Theme = ContextServices.Theme
local getPluginTheme = require(script.Parent.getPluginTheme)

local StudioUI = Framework.StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local function DEPRECATED_makeDeveloperInspectorTheme(theme, getColor)
	return {
		Framework = StudioFrameworkStyles.new(theme, getColor),
		Plugin = getPluginTheme(theme, getColor)
	}
end

return function(makeMock)
	makeMock = makeMock or false
	if makeMock then
		return Theme.mock(DEPRECATED_makeDeveloperInspectorTheme, function()
			return {
				Name = "MockTheme",
				GetColor = function() return Color3.fromRGB(0, 0, 0) end,
			}
		end)
	else
		return Theme.new(DEPRECATED_makeDeveloperInspectorTheme)
	end
end
