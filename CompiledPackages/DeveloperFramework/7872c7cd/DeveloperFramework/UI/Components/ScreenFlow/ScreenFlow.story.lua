local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local ScreenFlow = require(Framework.UI.Components.ScreenFlow)
local Pane = require(Framework.UI.Components.Pane)
local Button = require(Framework.UI.Components.DEPRECATED_Button)
local TextLabel = require(Framework.UI.Components.TextLabel)

local StyleModifier = require(Framework.Util.StyleModifier)
local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local StartScreen = Roact.PureComponent:extend("StartScreen")
local MiddleScreen = Roact.PureComponent:extend("MiddleScreen")
local EndScreen = Roact.PureComponent:extend("EndScreen")
local EndScreenCycle = Roact.PureComponent:extend("EndScreenCycle")

local function renderScreen(props)
	local text = props.Text
	local backButtonEnabled = props.BackButtonEnabled
	local nextButtonEnabled = props.NextButtonEnabled
	local hasBackButton = props.HasBackButton
	local hasNextButton = props.HasNextButton
	local goToNext = nextButtonEnabled and props.GoToNext or function() end
	local goToPrevious = backButtonEnabled and props.GoToPrevious or function() end

	local orderIterator = LayoutOrderIterator.new()
	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, 200),
		Layout = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	}, {
		Prompt = Roact.createElement(TextLabel, {
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			Size = UDim2.new(1, 0, 1, 0),
			Text = text,
			LayoutOrder = orderIterator:getNextOrder(),
		}),

		NextAndBackButtonContainer = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, 24),
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Spacing = 12,
		}, {
			BackButton = hasBackButton and Roact.createElement(Button, {
				Text = "Back",
				StyleModifier = not backButtonEnabled and StyleModifier.Disabled or nil,
				Size = UDim2.new(0, 64, 1, 0),
				OnClick = goToPrevious,
				LayoutOrder = orderIterator:getNextOrder(),
			}),

			NextButton = hasNextButton and Roact.createElement(Button, {
				Text = "Next",
				StyleModifier = not nextButtonEnabled and StyleModifier.Disabled or nil,
				Size = UDim2.new(0, 64, 1, 0),
				OnClick = goToNext,
				LayoutOrder = orderIterator:getNextOrder(),
			}),
		}),
	})
end

function StartScreen:render()
	local props = self.props

	return renderScreen({
		Text = "First Screen",
		NextButtonEnabled = true,
		BackButtonEnabled = false,
		HasBackButton = false,
		HasNextButton = true,
		GoToNext = props.GoToNext,
		GoToPrevious = props.GoToPrevious,
	})
end

function MiddleScreen:render()
	local props = self.props

	return renderScreen({
		Text = "Second Screen",
		NextButtonEnabled = true,
		BackButtonEnabled = true,
		HasBackButton = true,
		HasNextButton = true,
		GoToNext = props.GoToNext,
		GoToPrevious = props.GoToPrevious,
	})
end

function EndScreen:render()
	local props = self.props

	return renderScreen({
		Text = "Last Screen",
		NextButtonEnabled = false,
		BackButtonEnabled = true,
		HasBackButton = true,
		HasNextButton = false,
		GoToNext = props.GoToNext,
		GoToPrevious = props.GoToPrevious,
	})
end

function EndScreenCycle:render()
	local props = self.props

	return renderScreen({
		Text = "Last Screen",
		NextButtonEnabled = true,
		BackButtonEnabled = true,
		HasBackButton = true,
		HasNextButton = true,
		GoToNext = props.GoToNext,
		GoToPrevious = props.GoToPrevious,
	})
end

local screens = {
	StartScreen,
	MiddleScreen,
	EndScreen,
}

local screensCycle = {
	StartScreen,
	MiddleScreen,
	EndScreenCycle,
}

return {
	stories = {
		{
			name = "Default Linear Flow (No Cycle)",
			story = Roact.createElement(ScreenFlow, {
				Screens = screens,
			}),
		},
		{
			name = "Default Linear Flow (Cycle)",
			story = Roact.createElement(ScreenFlow, {
				Screens = screensCycle,
			}),
		},
	},
}
