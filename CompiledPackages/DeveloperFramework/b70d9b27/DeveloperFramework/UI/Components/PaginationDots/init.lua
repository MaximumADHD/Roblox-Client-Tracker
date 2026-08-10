--[[
	A horizontal row of dots with one dot selected. Optionally shows previous and next buttons if callbacks passed.

	Required Props:
		number Count: The number of dots
		callback OnSelected: Called when the user clicks a dot
		number SelectedIndex: The currently selected dot

	Optional Props:
		boolean ShowArrows: Show the next/previous arrows
		number LayoutOrder: The layout order of the tabs
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)

local Typecheck = require(Framework.Util.Typecheck)

local Pane = require(Framework.UI.Components.Pane)
local IconButton = require(Framework.UI.Components.IconButton)

export type Props = {
	Count: number,
	LayoutOrder: number?,
	ShowArrows: boolean?,
	OnSelected: (index: number) -> (),
	SelectedIndex: number,
}

type _Props = Props & {
	Stylizer: any,
}

local PaginationDots = Roact.PureComponent:extend("PaginationDots")
Typecheck.wrap(PaginationDots, script)

function PaginationDots:init()
	self.onPrevious = function()
		self.props.OnSelected(self.props.SelectedIndex - 1)
	end
	self.onNext = function()
		self.props.OnSelected(self.props.SelectedIndex + 1)
	end
end

function PaginationDots:render()
	local props: _Props = self.props
	local style = props.Stylizer

	local dots = {}
	for i = 1, props.Count do
		dots["Dot-" .. i] = Roact.createElement(IconButton, {
			Cursor = "PointingHand",
			LayoutOrder = i,
			LeftIcon = {
				Style = {
					Background = if i == props.SelectedIndex then style.SelectedColor else style.DotColor,
					Image = style.DotImage,
				},
				Size = style.DotSize,
			},
			OnClick = function()
				self.props.OnSelected(i)
			end,
			Size = style.DotSize,
			Style = "IconOnly",
		})
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromScale(1, 0),
	}, {
		Previous = if props.ShowArrows
			then Roact.createElement(IconButton, {
				Cursor = "PointingHand",
				LayoutOrder = 1,
				LeftIcon = {
					Style = {
						Background = style.ArrowColor,
						Image = style.ArrowImage,
					},
					Rotation = 180,
					Size = style.ArrowSize,
				},
				OnClick = self.onPrevious,
				Size = style.ArrowSize,
				Style = "IconOnly",
			})
			else nil,
		Dots = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
			Size = UDim2.new(1, -style.DotsInset, 0, 0),
			Spacing = 5,
		}, dots),
		Next = if props.ShowArrows
			then Roact.createElement(IconButton, {
				Cursor = "PointingHand",
				LayoutOrder = 3,
				LeftIcon = {
					Style = {
						Background = style.ArrowColor,
						Image = style.ArrowImage,
					},
					Size = style.ArrowSize,
				},
				OnClick = self.onNext,
				Size = style.ArrowSize,
				Style = "IconOnly",
			})
			else nil,
	})
end

PaginationDots = withContext({
	Stylizer = ContextServices.Stylizer,
})(PaginationDots)

return PaginationDots
