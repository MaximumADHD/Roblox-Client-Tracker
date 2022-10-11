--[[
	A set of an arbitrary number of RadioButtons.

	Props:
		int Selected = The current RadioButton to highlight.
		string Title = The title to place to the left of this RadioButtonSet.
		string Description = An optional secondary title to place above this RadioButtonSet.
		table Buttons = A collection of props for all RadioButtons to add.
		string Warning = An optional warning message to place below this RadioButtonSet.
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
local FFlagDevFrameworkRemoveFitFrame = Framework.SharedFlags.getFFlagDevFrameworkRemoveFitFrame()

local Util = Framework.Util
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local TitledFrame = Framework.StudioUI.TitledFrame
local LayoutOrderIterator = Util.LayoutOrderIterator

local RadioButton = require(Plugin.Src.Components.RadioButton)

local RadioButtonSet = Roact.PureComponent:extend("RadioButtonSet")

function RadioButtonSet:init()
	self.state = {
		maxHeight = 0,
	}

	self.layoutRef = Roact.createRef()

	self.onResize = function()
		local currentLayout = self.layoutRef.current
		if not currentLayout then
			return
		end

		self:setState({
			maxHeight = currentLayout.AbsoluteContentSize.Y,
		})
	end
end

function RadioButtonSet:render()
	local props = self.props
	local theme = props.Stylizer
	local radioButtonTheme = theme.radioButton
	local radioButtonSetTheme = theme.radioButtonSet
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
			Padding = UDim.new(0, radioButtonTheme.padding),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = self.onResize,
			[Roact.Ref] = self.layoutRef,
		}),
	}

	if props.Description then
		table.insert(
			children,
			Roact.createElement(
				"TextLabel",
				Cryo.Dictionary.join(theme.fontStyle.Normal, {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, radioButtonSetTheme.description.height),
					TextTransparency = props.Enabled and 0 or 0.5,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Text = props.Description,
				})
			)
		)
	end

	for i, button in ipairs(buttons) do
		if props.RenderItem then
			table.insert(children, props.RenderItem(i, button))
		else
			table.insert(
				children,
				Roact.createElement(RadioButton, {
					Title = button.Title,
					Id = button.Id,
					Description = button.Description,
					Selected = (button.Id == selected) or (i == selected),
					Index = i,
					Enabled = props.Enabled,
					LayoutOrder = layoutIndex:getNextOrder(),
					OnClicked = function()
						props.SelectionChanged(button)
					end,

					Children = button.Children,
				})
			)
		end
	end
	local size = UDim2.fromScale(1, 0)
	if not FFlagDevFrameworkRemoveFitFrame then
		-- Still need to define a maxHeight instead of using AutomaticSize for the TitledFrame until it is refactored.
		local maxHeight = numButtons * radioButtonTheme.size * 2
			+ numButtons * radioButtonTheme.padding
			+ (props.Description and radioButtonSetTheme.description.height or 0)

		maxHeight = math.max(self.state.maxHeight, maxHeight)
		size = UDim2.new(1, 0, 0, maxHeight)
	end

	local topFrameLayoutIndex = LayoutOrderIterator.new()
	return Roact.createElement("Frame", {
		AutomaticSize = if FFlagDevFrameworkRemoveFitFrame then Enum.AutomaticSize.Y else nil,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = props.LayoutOrder or 1,
		Size = size,
	}, {
		ListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, radioButtonSetTheme.padding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		ButtonSet = Roact.createElement(TitledFrame, {
			Title = props.Title,
			Style = "Subtitle",
			LayoutOrder = topFrameLayoutIndex:getNextOrder(),
		}, children),

		Warning = props.Warning and Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
				Text = props.Warning,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = radioButtonSetTheme.warningLabel.color,
				Size = UDim2.new(1, 0, 0, radioButtonSetTheme.warningLabel.height),
				LayoutOrder = topFrameLayoutIndex:getNextOrder(),
			})
		),
	})
end

RadioButtonSet = withContext({
	Stylizer = ContextServices.Stylizer,
})(RadioButtonSet)

return RadioButtonSet
