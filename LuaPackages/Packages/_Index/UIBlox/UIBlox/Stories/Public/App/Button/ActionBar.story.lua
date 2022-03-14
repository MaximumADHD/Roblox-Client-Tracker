local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)

local StoryComponents = Packages.StoryComponents
local FocusContainer = require(StoryComponents.FocusContainer)
local InputManager = require(StoryComponents.InputManager)

local Core = Packages.UIBlox.Core
local ControlState = require(Core.Control.Enum.ControlState)

local App = Packages.UIBlox.App
local ButtonType = require(App.Button.Enum.ButtonType)
local ButtonStack = require(App.Button.ButtonStack)
local ActionBar = require(App.Button.ActionBar)
local Images = require(App.ImageSet.Images)

local function wrapStoryForGamepad(story)
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
	summary = "Please embed the storybook to use experimental gamepad support",
	stories = {
		L1 = {
			name = "ActionBar with One IconButton",
			summary = "Button.ActionBar",
			story = wrapStoryForGamepad(Roact.createElement(ActionBar, {
				button = {
					props = {
						onActivated = function() end,
						text = "Button",
						icon = Images["icons/common/notificationOff"],
					},
				},
				icons = {
					{
						props = {
							anchorPoint = Vector2.new(0.5, 0.5),
							position = UDim2.fromScale(0.5, 0.5),
							icon = Images["icons/common/notificationOff"],
							userInteractionEnabled = true,
							onActivated = function()
								print("Text Button Clicked!")
							end,
							onStateChanged = function(oldState, newState)
								if oldState ~= ControlState.Initialize then
									print("state changed \n oldState:", oldState, " newState:", newState)
								end
							end,
						},
					},
				},
			})),
		},
		L2 = {
			name = "ActionBar with Two IconButton",
			summary = "Button.ActionBar",
			story = wrapStoryForGamepad(Roact.createElement(ActionBar, {
				button = {
					props = {
						onActivated = function() end,
						text = "Button",
					},
				},
				icons = {
					{
						props = {
							anchorPoint = Vector2.new(0.5, 0.5),
							position = UDim2.fromScale(0.5, 0.5),
							icon = Images["icons/common/notificationOff"],
							userInteractionEnabled = true,
							onActivated = function()
								print("Text Button Clicked!")
							end,
							onStateChanged = function(oldState, newState)
								if oldState ~= ControlState.Initialize then
									print("state changed \n oldState:", oldState, " newState:", newState)
								end
							end,
						},
					},
					{
						props = {
							anchorPoint = Vector2.new(0.5, 0.5),
							position = UDim2.fromScale(0.5, 0.5),
							icon = Images["icons/common/notificationOn"],
							userInteractionEnabled = true,
							onActivated = function()
								print("Text Button Clicked!")
							end,
							onStateChanged = function(oldState, newState)
								if oldState ~= ControlState.Initialize then
									print("state changed \n oldState:", oldState, " newState:", newState)
								end
							end,
						},
					},
				},
			})),
		},
		LN = {
			name = "ActionBar with Two IconButton",
			summary = "Button.ActionBar",
			story = wrapStoryForGamepad(Roact.createElement(ActionBar, {
				button = {
					props = {
						onActivated = function() end,
						text = "Button",
					},
				},
				icons = {
					{
						props = {
							anchorPoint = Vector2.new(0.5, 0.5),
							position = UDim2.fromScale(0.5, 0.5),
							icon = Images["icons/common/notificationOff"],
							userInteractionEnabled = true,
							onActivated = function()
								print("Text Button Clicked!")
							end,
							onStateChanged = function(oldState, newState)
								if oldState ~= ControlState.Initialize then
									print("state changed \n oldState:", oldState, " newState:", newState)
								end
							end,
						},
					},
					{
						props = {
							anchorPoint = Vector2.new(0.5, 0.5),
							position = UDim2.fromScale(0.5, 0.5),
							icon = Images["icons/common/notificationOn"],
							userInteractionEnabled = true,
							onActivated = function()
								print("Text Button Clicked!")
							end,
							onStateChanged = function(oldState, newState)
								if oldState ~= ControlState.Initialize then
									print("state changed \n oldState:", oldState, " newState:", newState)
								end
							end,
						},
					},
				},
			})),
		},
		L3 = {
			name = "ActionBar with No IconButton",
			summary = "Button.ActionBar",
			story = wrapStoryForGamepad(Roact.createElement(ActionBar, {
				button = {
					props = {
						onActivated = function() end,
						text = "Button",
					},
				},
			})),
		},
		L4 = {
			name = "ActionBar with Children",
			summary = "Button.ActionBar",
			story = wrapStoryForGamepad(Roact.createElement(ActionBar, {}, {
				ButtonStack = Roact.createElement(ButtonStack, {
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
								text = "Looooooong Teeeeeeext Buuuuuuttoooooon",
							},
						},
					},
				}),
			})),
		},
	},
}
