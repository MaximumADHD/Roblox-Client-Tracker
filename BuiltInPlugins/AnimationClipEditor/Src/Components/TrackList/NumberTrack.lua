--[[
	Represents a track in the TrackList that has any number of fields
	which can be interacted with by the user.

	Props:
		int LayoutOrder = The order this element displays in a UIListLayout.
		string Name = The name to display in this track.
		int NameWidth = An override for the horizontal width of the Name text, in pixels.
			If this prop is not provided, the width will default to the width of the Name text.
		int Indent = The level of indentation to pad this component.

		Example Items table:
		{
			{
				Name = "X:",
				Key = "X",
				Value = 0.3,
			},
			{
				Name = "Y:",
				Key = "Y",
				Value = 0.5,
			},
			{
				Name = "Z:",
				Key = "Z",
				Value = 1,
			},
		}
		table Items = An array of maps specifying which items are interactable fields.
			Each map should have a Name, Key, and Value.
				Name is the human-readable text used to display the item to the user.
				Key is used to reference the item in code.
				Value is the value that is displayed in the field.

		function OnItemChanged(key, value) = A function that is called when the user
			interacts with an Item field and changes its value. The key passed in this
			function is equal to the Key string defined in the Items prop.
		function OnChangeBegan() = A function that is called when the user starts interacting
			with an Item field. Used to dispatch AddWaypoint requests for History.
]]

local NUMBERBOX_PADDING = 4
local DRAG_MULTIPLIER = 0.05

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local StringUtils = require(Plugin.Src.Util.StringUtils)
local LayoutOrderIterator = require(Plugin.Src.Util.LayoutOrderIterator)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local TrackListEntry = require(Plugin.Src.Components.TrackList.TrackListEntry)
local Constants = require(Plugin.Src.Util.Constants)
local NumberBox = require(Plugin.Src.Components.TrackList.NumberBox)

local NumberTrack = Roact.PureComponent:extend("NumberTrack")

function NumberTrack:init(props)
	self.state = {
		values = nil,
		renderFromNumberEntry = false,
	}

	self.getTextWidth = function(text, theme)
		local font = theme.font
		local textSize = theme.trackTheme.textSize
		return StringUtils.getTextWidth(text, textSize, font)
	end

	self.onSetNumber = function(index, number)
		local props = self.props
		local state = self.state
		local items = props.Items
		local values = state.Values
		local newValues = {}
		for i, newItem in ipairs(items) do
			if values and values[i] then
				newValues[i] = values[i]
			else
				newValues[i] = newItem.Value
			end
		end
		newValues[index] = number
		self:setState({
			renderFromNumberEntry = 2,
			values = newValues,
		})
	end

	self.onItemChanged = function(key, value)
		if self.props.OnItemChanged then
			self.props.OnItemChanged(key, value)
		end
	end
end

function NumberTrack.getDerivedStateFromProps(nextProps, lastState)
	local renderFromNumberEntry = lastState.renderFromNumberEntry
	if renderFromNumberEntry and renderFromNumberEntry > 0 then
		return {
			renderFromNumberEntry = renderFromNumberEntry - 1,
		}
	else
		return {
			values = Roact.None,
		}
	end
end

function NumberTrack:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state
		local layoutOrder = props.LayoutOrder
		local indent = props.Indent or 0
		local name = props.Name
		local items = props.Items
		local values = state.values

		local trackTheme = theme.trackTheme

		local nameWidth = props.NameWidth or self.getTextWidth(name, theme)

		local layout = LayoutOrderIterator.new()

		local children = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, Constants.NUMBERTRACK_PADDING),
			}),

			ArrowPadding = Roact.createElement("Frame", {
				Size = UDim2.new(0, Constants.ARROW_SIZE * 2 - Constants.NUMBERTRACK_PADDING, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = layout:getNextOrder(),
			}),

			NameLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, nameWidth, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = layout:getNextOrder(),

				Text = name,
				Font = theme.font,
				TextSize = trackTheme.textSize,
				TextColor3 = trackTheme.textColor,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}

		for index, item in ipairs(items) do
			children[item.Key .. "_Entry"] = Roact.createElement(NumberBox, {
				Size = UDim2.new(0, Constants.NUMBERBOX_WIDTH, 1, -NUMBERBOX_PADDING),
				LayoutOrder = layout:getNextOrder(),
				Number = values and values[index] or item.Value,
				Name = item.Name,
				SetNumber = function(number)
					props.OnChangeBegan()
					self.onSetNumber(index, number)
					self.onItemChanged(item.Key, number)
				end,
				OnDragMoved = function(input)
					self.onItemChanged(item.Key, item.Value + input.Delta.X * DRAG_MULTIPLIER)
				end,
				OnDragBegan = props.OnChangeBegan,
			})
		end

		return Roact.createElement(TrackListEntry, {
			Height = Constants.TRACK_HEIGHT,
			Indent = indent,
			LayoutOrder = layoutOrder,
		}, children)
	end)
end

return NumberTrack