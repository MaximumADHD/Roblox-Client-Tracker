--[[
	The StoryMiddleware wraps each MaterialFramework React story in a typical context stack.
]]
local main = script.Parent.Parent
local Packages = main.Parent

local Framework = require(Packages.Framework)
local React = require(Packages.React)

local ContextServices: any = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Focus = ContextServices.Focus
local Localization = ContextServices.Localization

local Mouse = ContextServices.Mouse
local Plugin = ContextServices.Plugin

local Resources = require(main.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local Theme = Resources.Theme

local StudioServices = require(main.Context.StudioServices)

local function StoryMiddleware(story)
	-- Stories use localization from Storybook and MaterialFramework
	local localization = Localization.new({
		stringResourceTable = Resources.SourceStrings,
		translationResourceTable = Resources.LocalizedStrings,
		pluginName = "Storybook",
		libraries = {
			[LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Resources.SourceStrings,
				translationResourceTable = Resources.LocalizedStrings,
			},
		},
	})

	-- TODO: Stories use the ThemeSwitcher theme

	return function(storyProps)
		local contextItems = {
			Analytics.mock(),
			localization,
			Focus.new(storyProps.focus),
			Mouse.new(storyProps.plugin:GetMouse()),
			Plugin.new(storyProps.plugin),
			StudioServices.new(),
			Theme.new(),
		}
		return ContextServices.provide(contextItems, {
			Child = React.createElement(story, storyProps),
		})
	end
end

return StoryMiddleware
