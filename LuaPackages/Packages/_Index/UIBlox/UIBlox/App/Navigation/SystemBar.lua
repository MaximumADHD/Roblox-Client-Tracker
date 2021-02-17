local Navigation = script.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local withStyle = require(UIBlox.Core.Style.withStyle)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local validateImageSetData = require(UIBlox.Core.ImageSet.Validator.validateImageSetData)
local Badge = require(UIBlox.App.Indicator.Badge)
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)

local InteractableList = require(UIBlox.Core.Control.InteractableList)
local withAnimation = require(UIBlox.Core.Animation.withAnimation)

local Placement = require(script.Parent.Enum.Placement)

local SPRING_OPTIONS = {
	frequency = 3,
}

local ICON_SIZE = getIconSize(IconSize.Medium) -- 36
local ICON_PADDING = 4

local ITEM_SIZE_X = ICON_SIZE + 2 * ICON_PADDING
local ITEM_SIZE_Y = ITEM_SIZE_X

local ICON_SIZE_X = ICON_SIZE
local ICON_SIZE_Y = ICON_SIZE_X
local ICON_HOVER_OFFSET_X = ICON_PADDING
local ICON_HOVER_OFFSET_Y = ICON_HOVER_OFFSET_X
local ICON_TRANSPARENCY = 0
local ICON_TRANSPARENCY_HOVERED = 0.5
local BADGE_POSITION_X = 18
local BADGE_POSITION_Y = -2

local MAX_SIZE_PORTRAIT_X = 600
local TAB_SIZE_PORTRAIT_Y = 48

local TAB_SIZE_LANDSCAPE_X = 64
local TAB_SIZE_LANDSCAPE_Y = TAB_SIZE_LANDSCAPE_X
local TAB_PADDING_LANDSCAPE_Y = 4
local FIRST_TAB_PADDING_LANDSCAPE_Y = 12

local ICON_POSITION_X = (ITEM_SIZE_X - ICON_SIZE_X) / 2
local ICON_POSITION_Y = (ITEM_SIZE_Y - ICON_SIZE_Y) / 2
local ICON_POSITION_HOVERED_X = ICON_POSITION_X + ICON_HOVER_OFFSET_X
local ICON_POSITION_HOVERED_Y = ICON_POSITION_Y - ICON_HOVER_OFFSET_Y

local FIRST_ITEM_PADDING_LANDSCAPE_Y = FIRST_TAB_PADDING_LANDSCAPE_Y + (TAB_SIZE_LANDSCAPE_Y - ITEM_SIZE_Y) / 2
local ITEM_PADDING_LANDSCAPE_Y = TAB_PADDING_LANDSCAPE_Y + (TAB_SIZE_LANDSCAPE_Y - ITEM_SIZE_Y)

--[[
	A navigation bar that adapts to orientation, screen resize and can be hidden.
	it also notifies on safe area (area outside the navbar) change
	safe area can change by resizing the window or hiding the systembar
]]

local SystemBar = Roact.PureComponent:extend("SystemBar")

SystemBar.validateProps = t.strictInterface({
	-- list of system bar items
	itemList = t.array(t.strictInterface({
		-- icon if the item is currently selected
		iconOn = validateImageSetData,
		-- icon if the item is not selected
		iconOff = validateImageSetData,
		-- action when clicking on this item
		onActivated = t.callback,
		-- number to display as badge next to the icon
		badgeValue = t.optional(t.integer),
	})),
	-- index of the currently selected item
	selection = t.optional(t.integer),
	-- display style: Left, Bottom, Auto (based on screen size)
	placement = t.optional(Placement.isEnumValue),
	-- hides the system bar (with animation) when true
	hidden = t.optional(t.boolean),
	-- function({Position, AbsolutePosition, Size, AbsoluteSize}) called when the safe area is resized
	onSafeAreaChanged = t.optional(t.callback),
	--- options for the main Frame (contains both systembar and safe area)
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	-- children are placed in a Frame occupying the safe area
	[Roact.Children] = t.optional(t.any),
})

SystemBar.defaultProps = {
	placement = Placement.Auto,
}

function SystemBar:isPortrait()
	if self.props.placement == Placement.Left then
		return false
	elseif self.props.placement == Placement.Bottom then
		return true
	else
		return self.state.portrait
	end
end

function SystemBar:renderItem(item, state, selected)
	local pressed = state == ControlState.Pressed
	local hovered = pressed or state == ControlState.Hover
	local hasBadge = item.badgeValue and item.badgeValue > 0

	local positionX = ICON_POSITION_X
	local positionY = ICON_POSITION_Y
	if hovered then
		if self:isPortrait() then
			positionY = ICON_POSITION_HOVERED_Y
		else
			positionX = ICON_POSITION_HOVERED_X
		end
	end
	return withAnimation({
		positionX = positionX,
		positionY = positionY,
	}, function(values)
		return withStyle(function(stylePalette)
			local theme = stylePalette.Theme
			return Roact.createElement(ImageSetComponent.Label, {
				Position = UDim2.fromOffset(
					math.floor(values.positionX + 0.5),
					math.floor(values.positionY + 0.5)
				),
				Size = UDim2.fromOffset(ICON_SIZE_X, ICON_SIZE_Y),
				BackgroundTransparency = 1,
				Image = selected and item.iconOn or item.iconOff,
				ImageColor3 = theme.IconDefault.Color,
				ImageTransparency = pressed and ICON_TRANSPARENCY_HOVERED or ICON_TRANSPARENCY,
			}, {
				Badge = hasBadge and Roact.createElement(Badge, {
					position = UDim2.fromOffset(BADGE_POSITION_X, BADGE_POSITION_Y),
					value = item.badgeValue,
				}) or nil,
			})
		end)
	end, SPRING_OPTIONS)
end

function SystemBar:renderPortrait(frameProps, contents)
	return withAnimation({
		offset = self.props.hidden and 0 or -TAB_SIZE_PORTRAIT_Y
	}, function(values)
		return Roact.createElement("Frame", Cryo.Dictionary.join(frameProps, {
			Position = UDim2.new(0, 0, 1, math.floor(values.offset + 0.5)),
			Size = UDim2.new(1, 0, 0, TAB_SIZE_PORTRAIT_Y),
			ZIndex = 99,
		}), {
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			InnerFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, Cryo.Dictionary.join({
				Constraint = Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(MAX_SIZE_PORTRAIT_X, TAB_SIZE_PORTRAIT_Y),
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(1 / #self.props.itemList, -ITEM_SIZE_X),
				}, {})
			}, contents))
		})
	end, SPRING_OPTIONS)
end

function SystemBar:renderLandscape(frameProps, contents)
	return withAnimation({
		offset = self.props.hidden and -TAB_SIZE_LANDSCAPE_X or 0
	}, function(values)
		return Roact.createElement("Frame", Cryo.Dictionary.join(frameProps, {
			Position = UDim2.new(0, math.floor(values.offset + 0.5), 0, 0),
			Size = UDim2.new(0, TAB_SIZE_LANDSCAPE_X, 1, 0),
			ZIndex = 99,
		}), Cryo.Dictionary.join({
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, FIRST_ITEM_PADDING_LANDSCAPE_Y),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, ITEM_PADDING_LANDSCAPE_Y),
			}),
		}, contents))
	end, SPRING_OPTIONS)
end

function SystemBar:renderBackground(...)
	if self:isPortrait() then
		return self:renderPortrait(...)
	else
		return self:renderLandscape(...)
	end
end

function SystemBar:renderSafeArea()
	local position, size
	if self.props.hidden then
		position = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, 0)
	elseif self:isPortrait() then
		position = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, -TAB_SIZE_PORTRAIT_Y)
	else
		position = UDim2.new(0, 64, 0, 0)
		size = UDim2.new(1, -TAB_SIZE_LANDSCAPE_X, 1, 0)
	end
	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onSafeAreaEvent,
		[Roact.Change.AbsolutePosition] = self.onSafeAreaEvent,
	}, self.props[Roact.Children])
end

function SystemBar:renderList(items, renderItem)
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local renderedItems = Cryo.List.map(items, function(item, key)
			return renderItem(key)
		end)
		return Roact.createElement("Frame", {
			Position = self.props.position or UDim2.new(0, 0, 0, 0),
			Size = self.props.size or UDim2.new(1, 0, 1, 0),
			ClipsDescendants = true,
			LayoutOrder = self.props.layoutOrder,
			[Roact.Change.AbsoluteSize] = function(rbx)
				if self.state.portrait and rbx.AbsoluteSize.X > rbx.AbsoluteSize.Y then
					self:setState({
						portrait = false,
					})
				elseif not self.state.portrait and rbx.AbsoluteSize.X < rbx.AbsoluteSize.Y then
					self:setState({
						portrait = true,
					})
				end
			end
		}, {
			NavBar = self:renderBackground({
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
				BorderSizePixel = 0,
			}, renderedItems),
			SafeArea = self:renderSafeArea(),
		})
	end)
end

function SystemBar:init()
	self:setState({
		portrait = true,
	})
	self.onSelectionChanged = function(selection)
		if #selection > 0 then
			self.props.itemList[selection[1]].onActivated()
		end
	end
	self.onSafeAreaEvent = function(rbx)
		if self.props.onSafeAreaChanged then
			self.props.onSafeAreaChanged({
				Position = rbx.Position,
				AbsolutePosition = rbx.AbsolutePosition,
				Size = rbx.Size,
				AbsoluteSize = rbx.AbsoluteSize,
			})
		end
	end
end

function SystemBar:render()
	local itemList = self.props.itemList
	local selection = self.props.selection
	if selection then
		if itemList[selection] == nil then
			selection = nil
		else
			selection = {selection}
		end
	end
	return Roact.createElement(InteractableList, {
		itemList = itemList,
		selection = selection,
		itemSize = UDim2.fromOffset(ITEM_SIZE_X, ITEM_SIZE_Y),
		-- since renderList and renderItem depend on state and props,
		-- we should always rerender the InteractableList
		renderList = function(...)
			return self:renderList(...)
		end,
		renderItem = function(...)
			return self:renderItem(...)
		end,
		onSelectionChanged = self.onSelectionChanged,
	})
end

return SystemBar
