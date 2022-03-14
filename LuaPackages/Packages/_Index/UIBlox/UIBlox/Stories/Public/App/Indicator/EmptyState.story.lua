local RunService = game:GetService("RunService")

local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)

local UIBloxConfig = require(Stories.UIBloxStorybookConfig)
local Gamepad = require(Packages.RoactGamepad)

local InputManager = require(Packages.StoryComponents.InputManager)
local FocusContainer = require(Packages.StoryComponents.FocusContainer)

local App = Packages.UIBlox.App

local EmptyState = require(App.Indicator.EmptyState)
local Images = require(App.ImageSet.Images)

local ICON = "icons/status/oof_xlarge"
local BUTTON_ICON = "icons/common/refresh"

local EmptyStateStory = Roact.PureComponent:extend("EmptyStateStory")

function EmptyStateStory:render()
	return Roact.createElement(EmptyState, {
		position = UDim2.fromScale(0.5, 0.5),
		anchorPoint = Vector2.new(0.5, 0.5),
		text = "No [Items]",
		icon = Images[ICON],
		buttonIcon = Images[BUTTON_ICON],
		onActivated = function()
			print("callback")
		end,
	})
end

local function wrapStoryForGamepad(story)
	if not UIBloxConfig.emptyStateControllerSupport or not RunService:IsRunning() then
		return story
	end

	return Roact.createElement(FocusContainer, {}, {
		InputManager = UIBloxConfig.emptyStateControllerSupport and Gamepad.withFocusController(
			function(focusController)
				return Roact.createElement(InputManager, {
					focusController = focusController,
				})
			end
		),
		EmptyStateStory = Roact.createElement(Gamepad.Focusable.Frame, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			EmptyState = Roact.createElement(story),
		}),
	})
end

return wrapStoryForGamepad(EmptyStateStory)
