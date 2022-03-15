--[[
	Generic component representing the layout for a typical screen in the flow.

	Required Props:
		string Title: text displayed in header area of screen.
		string PromptText: text displayed underneath header.
		string NextButtonText: text displayed on Next Button.
		string BackButtonText: text displayed on Back Button.
		boolean NextButtonEnabled: if the next button is interactable or not
		boolean HasBackButton: if the back button should be rendered.
		callback GoToNext: function fired when next button is clicked.
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		callback RenderContent: function renders optional elements to be displayed in the middle of the layout.
		number LayoutOrder: render order of component in layout.
		callback GoToPrevious: function fired when back button is clicked.
		boolean BackButtonEnabled: if the back button is interactable or not.
		boolean Scrollable: if the entire frame is scrollable or not
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local ExpandablePane = UI.ExpandablePane
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame
local TextLabel = UI.Decoration.TextLabel

local Util = Framework.Util
local StyleModifier = Util.StyleModifier
local LayoutOrderIterator = Util.LayoutOrderIterator

local FlowScreenLayout = Roact.PureComponent:extend("FlowScreenLayout")

local Typecheck = Util.Typecheck
Typecheck.wrap(FlowScreenLayout, script)

function FlowScreenLayout:init()
	self.emptyFunc = function()
		return nil
	end
end

function FlowScreenLayout:renderPane()
	local props = self.props

	local title = props.Title
	local promptText = props.PromptText
	local backButtonText = props.BackButtonText
	local backButtonEnabled = props.BackButtonEnabled or false
	local nextButtonEnabled = props.NextButtonEnabled
	local nextButtonText = props.NextButtonText
	local hasBackButton = props.HasBackButton
	local layoutOrder = props.LayoutOrder or 1

	local goToNext = props.GoToNext
	local goToPrevious = props.GoToPrevious or self.emptyFunc
	local renderContent = props.RenderContent or self.emptyFunc

	local style = props.Stylizer

	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(ExpandablePane, {
		Text = title,
		LayoutOrder = layoutOrder,
		AlwaysExpanded = true,
		Style = "Section",
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Spacing = style.ScreenSpacing,
	}, {
		Prompt = Roact.createElement(TextLabel, {
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = promptText,
			TextWrapped = true,
			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Content = renderContent(orderIterator:getNextOrder()),

		NextAndBackButtonContainer = Roact.createElement(Pane, {
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			AutomaticSize = Enum.AutomaticSize.Y,
			Spacing = style.ButtonSpacing,
		}, {
			BackButton = hasBackButton and Roact.createElement(Button, {
				Text = backButtonText,
				Style = "Round",
				StyleModifier = not backButtonEnabled and StyleModifier.Disabled or nil,
				Size = UDim2.new(0, style.ButtonWidth, 0, style.ButtonHeight),
				OnClick = backButtonEnabled and goToPrevious or function() end,
				LayoutOrder = orderIterator:getNextOrder(),
			}),

			NextButton = Roact.createElement(Button, {
				Text = nextButtonText,
				Style = "Round",
				StyleModifier = not nextButtonEnabled and StyleModifier.Disabled or nil,
				Size = UDim2.new(0, style.ButtonWidth, 0, style.ButtonHeight),
				OnClick = nextButtonEnabled and goToNext or function() end,
				LayoutOrder = orderIterator:getNextOrder(),
			}),
		})
	})
end

function FlowScreenLayout:render()
	local props = self.props

	local scrollable = props.Scrollable

	local pane = self:renderPane()

	if not scrollable then
		return pane
	else
		return Roact.createElement(Pane, {}, {
			MainFrame = Roact.createElement(ScrollingFrame, {}, {
				ExpandablePane = pane,
			})
		})
	end
end

FlowScreenLayout = withContext({
	Stylizer = ContextServices.Stylizer,
})(FlowScreenLayout)

return FlowScreenLayout