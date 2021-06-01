local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local Components = SocialLibraries.Components
local AlertView = require(Components.AlertView.AlertView)
local AlertViewLabel = require(Components.AlertView.AlertViewLabel)
local AlertViewButton = require(Components.AlertView.AlertViewButton)

local SCREEN_SIZE = Vector2.new(800, 480)
local BUTTON_HEIGHT = 44

return Roact.createElement("Frame", {
	Size = UDim2.new(0, SCREEN_SIZE.X, 0, SCREEN_SIZE.Y)
}, {
	AlertView = Roact.createElement(AlertView, {
		Visible = true,
	}, {
		Title = Roact.createElement(AlertViewLabel, {
			Text = "Title!",
			TextSize = 36,
			LayoutOrder = 0,
		}),
		BodyText = Roact.createElement(AlertViewLabel, {
			Text = "This is an example of some longer body text",
			LayoutOrder = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Button = Roact.createElement(AlertViewButton, {
			LayoutOrder = 2,
			Text = "Click me!",
			onActivated = function() print("Clicked!") end,
			Size = UDim2.new(1, -6, 0, BUTTON_HEIGHT),
		})
	})
})
