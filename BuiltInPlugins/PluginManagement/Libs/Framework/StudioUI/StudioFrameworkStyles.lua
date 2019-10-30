--[[
	Provides a default implementation of FrameworkStyles, assuming
	that the current environment is a Studio plugin.

	All components in the framework will be functional using the default
	values that this theme creates when calling StudioFrameworkTheme.new().
	You cannot override the values in the returned theme, but you can use
	FrameworkTheme.extendTheme() to create your own styles for components
	if you need to implement a special color scheme or design.

	Usage:
		-- This example adds default style values for all
		-- DeveloperFramework components in the Roact tree,
		-- and reacts to the Studio theme changing!
		local Theme = ContextServices.Theme

		local function makeTheme()
			return Theme.new(function(theme, getColor)
				return {
					Framework = StudioFrameworkStyles.new(theme, getColor),
				}
			end)
		end

		local theme = makeTheme()
		ContextServices.provide({theme}, {
			-- My Roact tree
		})
]]

local Framework = script.Parent.Parent

local UI = require(Framework.UI)
local Util = require(Framework.Util)

local FrameworkStyles = UI.FrameworkStyles
local StyleTable = Util.StyleTable
local Style = Util.Style

local StudioFrameworkStyles = {}

function StudioFrameworkStyles.new(theme, getColor)
	assert(theme, "StudioFrameworkStyles.new expects a 'theme' parameter.")
	assert(type(getColor) == "function", "StudioFrameworkStyles.new expects a 'getColor' function.")
	local frameworkStyles = FrameworkStyles.new()

	return StyleTable.extend(frameworkStyles, {
	})
end

return StudioFrameworkStyles
