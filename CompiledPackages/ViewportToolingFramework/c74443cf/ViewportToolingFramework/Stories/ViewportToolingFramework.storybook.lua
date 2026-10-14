--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Packages = ViewportToolingFramework.Parent

local Framework = require(Packages.Framework)
local React = require(Packages.React)

local ContextServices: any = Framework.ContextServices
local DocParser = Framework.Util.Typecheck.DocParser

local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)

local function StoryMiddleware(story)
	return function(props)
		local styleSheet = useStyleSheet()

		return ContextServices.provide({
			ContextServices.Focus.new(props.focus),
			ContextServices.Mouse.new(props.plugin:GetMouse()),
			Framework.Style.ThemeSwitcher.new(),
		}, {
			Story = React.createElement(React.Fragment, {}, {
				Story = React.createElement(story, props),

				StyleLink = React.createElement("StyleLink", {
					StyleSheet = styleSheet,
				}),
			}),
		})
	end
end

return {
	name = "Viewport Tooling Framework",
	exclude = { "_Index" },
	storyRoots = { ViewportToolingFramework },
	mapStory = StoryMiddleware,
	mapDefinition = function(definition)
		local parser = DocParser.new(definition.name, definition.source.Parent)
		local ok, result = pcall(function()
			return parser:parse()
		end)
		if ok then
			definition.docs = result
			definition.summary = result.Summary
		end
		return definition
	end,
}
