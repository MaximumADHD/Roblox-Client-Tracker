local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local App = Packages.UIBlox.App
local RobuxBalance = require(App.Control.RobuxBalance)

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

return {
	stories = {
		L1 = {
			name = "RobuxBalance with tooltip",
			summary = "Control.RobuxBalance",
			story = wrapStoryForGamepadSupport(Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				RobuxBalance = Roact.createElement(RobuxBalance, {
					onActivated = print,
					displayText = "99M",
					fullText = "99000000",
					userInteractionEnabled = true,
					position = UDim2.new(1, 0, 0, 0),
				}),
			})),
		},
		L2 = {
			name = "RobuxBalance without tooltip",
			summary = "Control.RobuxBalance",
			story = wrapStoryForGamepadSupport(Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				RobuxBalance = Roact.createElement(RobuxBalance, {
					onActivated = print,
					displayText = "99.99M",
					userInteractionEnabled = true,
					position = UDim2.new(1, 0, 0, 0),
				}),
			})),
		},
		L3 = {
			name = "RobuxBalance with long text",
			summary = "Control.RobuxBalance",
			story = wrapStoryForGamepadSupport(Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				RobuxBalance = Roact.createElement(RobuxBalance, {
					onActivated = print,
					displayText = "99.999M Robux",
					fullText = "99999000",
					userInteractionEnabled = true,
					position = UDim2.new(1, 0, 0, 0),
				}),
			})),
		},
		L4 = {
			name = "RobuxBalance with one digit",
			summary = "Control.RobuxBalance",
			story = wrapStoryForGamepadSupport(Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				RobuxBalance = Roact.createElement(RobuxBalance, {
					onActivated = print,
					displayText = "9",
					fullText = "9",
					userInteractionEnabled = true,
					position = UDim2.new(1, 0, 0, 0),
				}),
			})),
		},
	},
}
