local StudioFoundation = script:FindFirstAncestor("StudioFoundation")
local Packages = StudioFoundation.Parent

local React = require(Packages.React)

local Framework = require(Packages.Framework)
local Foundation = require(Packages.Foundation)

local ContextServices: any = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Design = ContextServices.Design
local Focus = ContextServices.Focus
local Mouse = ContextServices.Mouse
local Plugin = ContextServices.Plugin

local FoundationProvider = Foundation.FoundationProvider

local Theme = Foundation.Enums.Theme
local Device = Foundation.Enums.Device

local function StyleSheetWrapper(props: {
	focus: any,
	plugin: Plugin,
	children: React.ReactNode,
})
	local styleSheet = Foundation.Hooks.useStyleSheet()
	if not styleSheet then
		return nil
	end

	local contextItems = React.useMemo(function()
		return {
			Focus.new(props.focus),
			Plugin.new(props.plugin),
			Mouse.new(props.plugin:GetMouse()),
			Analytics.mock(),
			Design.new(styleSheet),
		}
	end, { styleSheet :: unknown, props.focus, props.plugin })

	return ContextServices.provide(contextItems, props.children)
end

local function StoryMiddleware(story)
	return function(storyProps)
		return React.createElement(
			FoundationProvider,
			{
				theme = Theme[storyProps.theme],
				device = Device[storyProps.platform],
				preferences = storyProps.settings,
				scale = storyProps.settings and storyProps.settings.scale,
			},
			React.createElement(StyleSheetWrapper, {
				focus = storyProps.focus,
				plugin = storyProps.plugin,
			}, { Child = React.createElement(story, storyProps) })
		)
	end
end

return StoryMiddleware
