--[[
	Dropdown showing more options on a Plugin entry.
	Props:
		table Items
			{Key = "SomeKey", Text = "LocalizedText"}

		function OnItemClicked(item)
			Called when an item is clicked. Returns the item itself.
		function OnFocusLost
			Called when the dropdown loses focus.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local DropdownMenu = UILibrary.Component.DropdownMenu

local MoreDropdown = Roact.Component:extend("PluginEntry")

function MoreDropdown:init()
	self.state = {
		buttonExtents = Rect.new(),
		hoveredKey = nil,
	}

	self.updateExtents = function(rbx)
		local buttonMin = rbx.AbsolutePosition
		local buttonSize = rbx.AbsoluteSize
		local buttonMax = buttonMin + buttonSize
		local buttonExtents = Rect.new(buttonMin.X, buttonMin.Y, buttonMax.X, buttonMax.Y)
		self:setState({
			buttonExtents = buttonExtents,
		})
	end

	self.onKeyMouseEnter = function(key)
		self:setState({
			hoveredKey = key,
		})
	end

	self.onKeyMouseLeave = function(key)
		if self.state.hoveredKey == key then
			self:setState({
				hoveredKey = Roact.None,
			})
		end
	end

	self.createLabel = function(key, displayText)
		local theme = self.props.Theme:get("Plugin")

		return Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Font = Enum.Font.SourceSans,
			TextSize = 18,
			Text = displayText,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.TextColor,
			BackgroundTransparency = 1,

			[Roact.Event.MouseEnter] = function()
				self.onKeyMouseEnter(key)
			end,
			[Roact.Event.MouseLeave] = function()
				self.onKeyMouseLeave(key)
			end,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
			}),
		})
	end
end

function MoreDropdown:render()
	local props = self.props
	local state = self.state
	local items = props.Items
	local buttonExtents = state.buttonExtents
	local hoveredKey = state.hoveredKey
	local theme = self.props.Theme:get("Plugin")

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.updateExtents,
		[Roact.Change.AbsolutePosition] = self.updateExtents,
	}, {
		Dropdown = Roact.createElement(DropdownMenu, {
			SourceExtents = buttonExtents,
			Items = items,
			OnItemClicked = props.OnItemClicked,
			OnFocusLost = props.OnFocusLost,
			ShowBorder = true,
			RenderItem = function(item, index, activated)
				local key = item.Key
				local displayText = item.Text
				local isHovered = hoveredKey == key

				return Roact.createElement("ImageButton", {
					Size = UDim2.new(0, 90, 0, 35),
					BackgroundColor3 = isHovered and theme.HoverColor or theme.ButtonColor,
					BorderSizePixel = 0,
					LayoutOrder = index,
					AutoButtonColor = false,
					[Roact.Event.Activated] = activated,
				}, {
					Label = self.createLabel(key, displayText),
				})
			end,
		}),
	})
end

ContextServices.mapToProps(MoreDropdown, {
	Theme = ContextServices.Theme,
})

return MoreDropdown
