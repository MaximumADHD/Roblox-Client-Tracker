local Stories = script.Parent.Parent.Parent.Parent

local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)

local App = Packages.UIBlox.App
local ButtonType = require(App.Button.Enum.ButtonType)
local ButtonStack = require(App.Button.ButtonStack)
local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local LONG_TEXT = "This text is too long"
local SHORT_TEXT = "Short Text"

local ButtonStackComponent = Roact.PureComponent:extend("ButtonStackComponent")

local function wrapStoryForGamepadSupport(story)
	return Roact.createElement(FocusContainer, {}, {
		InputManager = RoactGamepad.withFocusController(function(focusController)
			return Roact.createElement(InputManager, {
				focusController = focusController,
			})
		end),
		Story = story,
	})
end

function ButtonStackComponent:render()
	local controls = self.props.controls
	local buttonText = controls.autoStack and SHORT_TEXT or LONG_TEXT
	local isForceFill = controls.isForceFill
	local forcedFillDirection = controls.forcedFillDirection

	return wrapStoryForGamepadSupport(Roact.createElement(ButtonStack, {
		buttons = {
			{
				props = {
					onActivated = function() end,
					text = "Button",
				},
			},
			{
				buttonType = ButtonType.PrimarySystem,
				props = {
					onActivated = function() end,
					text = buttonText,
				},
			},
		},
		forcedFillDirection = isForceFill and forcedFillDirection or nil,
	}))
end

return {
	name = "Button Stack",
	controls = {
		autoStack = false,
		isForceFill = false,
		forcedFillDirection = { Enum.FillDirection.Horizontal, Enum.FillDirection.Vertical, Roact.None },
	},
	story = ButtonStackComponent,
}
