--[[
	A set of an arbitrary number of RadioButtons.

	Props:
		int Selected = The current RadioButton to highlight.
		string Title = The title to place to the left of this RadioButtonSet.
		string Description = An optional secondary title to place above this RadioButtonSet.
		table Buttons = A collection of props for all RadioButtons to add.
		e.g.
		{
			{
				Id = boolean/string, boolean can be used for on/off buttons, strings can be used for sets that
					have more than 2 buttons,
				Title = string, title that this button will have,
				Children = optional, additional child comoponents that belong to this button.
			},
			{
				Id = ...,
				Title = ...,
			},
		}

		function SelectionChanged(index, title) = A callback for when the selected option changes.
		int LayoutOrder = The order this RadioButtonSet will sort to when placed in a UIListLayout.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)

local RadioButton = require(Plugin.Src.Components.RadioButton)
local TitledFrame = UILibrary.Component.TitledFrame

local Constants = require(Plugin.Src.Resources.Constants)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local RadioButtonSet = Roact.PureComponent:extend("RadioButtonSet")

function RadioButtonSet:init()
	self.state = {
		maxHeight = 0
	}

	self.layoutRef = Roact.createRef()

	self.onResize = function()
		local currentLayout = self.layoutRef.current
		if not currentLayout then
			return
		end

		self:setState({
			maxHeight = currentLayout.AbsoluteContentSize.Y
		})
	end
end

function RadioButtonSet:render()
	local props = self.props
	local theme = props.Stylizer

	local layoutIndex = LayoutOrderIterator.new()

	local selected
	if props.Selected ~= nil then
		selected = props.Selected
	else
		selected = 1
	end

	local buttons = props.Buttons
	local numButtons = #buttons

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, Constants.RADIO_BUTTON_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = self.onResize,
			[Roact.Ref] = self.layoutRef,
		})
	}

	for i, button in ipairs(buttons) do
		children = Cryo.Dictionary.join(children, {
			[button.Id] = Roact.createElement(RadioButton, {
				Title = button.Title,
				Id = button.Id,
				Description = button.Description,
				Selected = (button.Id == selected) or (i == selected),
				Index = i,
				Enabled = props.Enabled,
				RadioButtonStyle = theme.radioButton,
				LayoutOrder = layoutIndex:getNextOrder(),
				OnClicked = function()
					props.SelectionChanged(button)
				end,

				Children = button.Children,
			})
		})
	end

	local maxHeight = numButtons * Constants.RADIO_BUTTON_SIZE * 2
		+ numButtons * Constants.RADIO_BUTTON_PADDING

	maxHeight = math.max(self.state.maxHeight, maxHeight)

	return Roact.createElement(TitledFrame, {
			Title = props.Title,
			MaxHeight = maxHeight,
			LayoutOrder = props.LayoutOrder or 1,
			TextSize = Constants.TEXT_SIZE,
		}, children)
end

RadioButtonSet = withContext({
	Stylizer = ContextServices.Stylizer,
})(RadioButtonSet)

return RadioButtonSet
