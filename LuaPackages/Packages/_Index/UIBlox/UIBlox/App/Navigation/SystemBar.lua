--!nonstrict
local Navigation = script.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local Foundation = require(Packages.Foundation)

local StatusIndicator = Foundation.StatusIndicator
local withStyle = require(UIBlox.Core.Style.withStyle)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local validateImageSetData = require(UIBlox.Core.ImageSet.Validator.validateImageSetData)
local Badge = require(UIBlox.App.Indicator.Badge)
local BadgeVariant = require(UIBlox.App.Indicator.Enum.BadgeVariant)
local BadgeStates = require(UIBlox.App.Indicator.Enum.BadgeStates)
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)

local InteractableList = require(UIBlox.Core.Control.InteractableList)
local withAnimation = require(UIBlox.Core.Animation.withAnimation)

local migrateBadgeVariant = require(UIBlox.Utility.migrateBadgeVariant)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

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
local EMPTY_BADGE_POSITION_X = 22
local EMPTY_BADGE_POSITION_Y = 2

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
	-- List of system bar items
	itemList = t.array(t.strictInterface({
		-- Icon if the item is currently selected
		iconOn = t.optional(validateImageSetData),
		-- Icon if the item is not selected
		iconOff = t.optional(validateImageSetData),
		-- Icon image component to replace ImageLabel component for iconOn and iconOff
		iconImageComponent = t.optional(t.union(t.table, t.callback)),
		--[[
			Either a functional or stateful component. Used instead of iconOn and iconOff. Will be passed the following props:

				* placement : Placement (enum)
				* hovered : boolean
				* selected : boolean
				* pressed : boolean
				* badgeValue : string or number
		]]
		iconComponent = t.optional(t.union(t.table, t.callback)),
		-- Action when clicking on this item
		onActivated = t.callback,
		-- Number to display as badge next to the icon
		badgeValue = t.optional(t.union(t.integer, t.string, BadgeStates.isEnumValue)),
		-- Size of icons being passed to itemlist
		itemSize = t.optional(t.UDim2),
		-- Aligns the item to the bottom when in Left placement mode, no effect in Bottom placement.
		-- Bottom aligned icons will be placed after all other icons, order is preserved otherwise.
		bottomAligned = t.optional(t.boolean),
	})),
	-- Index of the currently selected item
	selection = t.optional(t.integer),
	-- Display style: Left, Bottom, Auto (based on screen size)
	placement = t.optional(Placement.isEnumValue),
	-- Hides the system bar (with animation) when true
	hidden = t.optional(t.boolean),
	-- function({Position, AbsolutePosition, Size, AbsoluteSize}) called when the safe area is resized
	onSafeAreaChanged = t.optional(t.callback),
	-- Options for the main Frame (contains both systembar and safe area)
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	-- Offset icon layout positions
	layoutPaddingOffset = t.optional(t.UDim),
	firstItemPaddingOffset = t.optional(t.UDim),
	lastItemPaddingOffset = t.optional(t.UDim),
	-- Children are placed in a Frame occupying the safe area
	[Roact.Children] = t.optional(t.any),
	-- Rounds the corners of the bar / buttons
	roundCorners = t.optional(t.boolean),
	-- Adds outline to the buttons
	buttonStroke = t.optional(t.boolean),
	-- Sets background transparency
	bgTransparency = t.optional(t.integer),
	-- Item list sort order
	sortOrder = t.optional(t.enum(Enum.SortOrder)),
	clipsDescendants = t.optional(t.boolean),

	-- Experiment sizing for the system bar portrait height
	experimentalTabSizePortraitY = t.optional(t.number),
})

SystemBar.defaultProps = {
	placement = Placement.Auto,
	layoutPaddingOffset = UDim.new(0, 0),
	firstItemPaddingOffset = UDim.new(0, 0),
	lastItemPaddingOffset = UDim.new(0, 0),
	clipsDescendants = true,

	experimentalTabSizePortraitY = TAB_SIZE_PORTRAIT_Y,
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

function SystemBar:renderItem(item, state, selected, order)
	assert(
		(item.iconOn ~= nil and item.iconOff ~= nil) or item.iconImageComponent ~= nil or item.iconComponent ~= nil,
		"items must define either iconOn and iconOff or iconImageComponent or iconComponent"
	)

	local pressed = state == ControlState.Pressed
	local hovered = pressed or state == ControlState.Hover

	if item.iconComponent then
		local placement
		if self:isPortrait() then
			placement = Placement.Bottom
		else
			placement = Placement.Left
		end

		return Roact.createElement(item.iconComponent, {
			placement = placement,
			hovered = hovered,
			selected = selected,
			pressed = pressed,
			badgeValue = item.badgeValue,
		}),
			{
				-- extraProps for InteractableListItem
				LayoutOrder = order, -- Won't take any effect if we don't specify LayoutOrder as sortOrder
			}
	end

	local hasBadge
	if item.badgeValue then
		if item.badgeValue == BadgeStates.isEmpty then
			hasBadge = true
		else
			hasBadge = (t.string(item.badgeValue) and true) or item.badgeValue > 0
		end
	else
		hasBadge = false
	end

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
			return Roact.createElement(item.iconImageComponent or ImageSetComponent.Label, {
				Position = UDim2.fromOffset(math.floor(values.positionX + 0.5), math.floor(values.positionY + 0.5)),
				Size = UDim2.fromOffset(ICON_SIZE_X, ICON_SIZE_Y),
				BackgroundTransparency = self.props.buttonStroke and 0.99 or 1,
				Image = selected and item.iconOn or item.iconOff,
				ImageColor3 = theme.IconDefault.Color,
				ImageTransparency = pressed and ICON_TRANSPARENCY_HOVERED or ICON_TRANSPARENCY,
			}, {
				Badge = hasBadge and if UIBloxConfig.useFoundationStatusIndicator
					then Roact.createElement(StatusIndicator, {
						position = if item.badgeValue == BadgeStates.isEmpty
							then UDim2.fromOffset(EMPTY_BADGE_POSITION_X, EMPTY_BADGE_POSITION_Y)
							else UDim2.fromOffset(BADGE_POSITION_X, BADGE_POSITION_Y),
						value = tonumber(item.badgeValue),
						variant = migrateBadgeVariant(BadgeVariant.Default),
						max = if tonumber(item.badgeValue) then 99 else nil,
					})
					else Roact.createElement(Badge, {
						position = if item.badgeValue == BadgeStates.isEmpty
							then UDim2.fromOffset(EMPTY_BADGE_POSITION_X, EMPTY_BADGE_POSITION_Y)
							else UDim2.fromOffset(BADGE_POSITION_X, BADGE_POSITION_Y),
						value = item.badgeValue,
					}) or nil,
				UICorner = self.props.roundCorners and Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0.15, 0),
				}) or nil,
				UIStroke = self.props.buttonStroke and Roact.createElement("UIStroke", {
					Color = Color3.new(0.4, 0.4, 0.4),
					Transparency = 0,
					Thickness = 1,
				}) or nil,
			})
		end)
	end, SPRING_OPTIONS),
		{
			-- extraProps for InteractableListItem
			LayoutOrder = order, -- Won't take any effect if we don't specify LayoutOrder as sortOrder
		}
end

function SystemBar:renderPortrait(frameProps, contents)
	return withAnimation({
		offset = self.props.hidden and 0 or -self.props.experimentalTabSizePortraitY,
	}, function(values)
		return Roact.createElement(
			"Frame",
			Cryo.Dictionary.join(frameProps, {
				Position = UDim2.new(0, 0, 1, math.floor(values.offset + 0.5)),
				Size = UDim2.new(1, 0, 0, self.props.experimentalTabSizePortraitY),
				ZIndex = 99,
			}),
			{
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				InnerFrame = Roact.createElement(
					"Frame",
					{
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					},
					Cryo.Dictionary.join({
						Constraint = Roact.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(MAX_SIZE_PORTRAIT_X, self.props.experimentalTabSizePortraitY),
						}),
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							Padding = self.props.layoutPaddingOffset + UDim.new(1 / #self.props.itemList, -ITEM_SIZE_X),
							SortOrder = self.props.sortOrder,
						}, {}),
					}, contents)
				),
			}
		)
	end, SPRING_OPTIONS)
end

function SystemBar:renderLandscape(frameProps, contents, bottomAligned)
	return withAnimation({
		offset = self.props.hidden and -TAB_SIZE_LANDSCAPE_X or 0,
	}, function(values)
		return Roact.createElement(
			"Frame",
			Cryo.Dictionary.join(frameProps, {
				Position = UDim2.new(0, math.floor(values.offset + 0.5), 0, 0),
				Size = UDim2.new(0, TAB_SIZE_LANDSCAPE_X, 1, 0),
				ZIndex = 99,
				BackgroundTransparency = if bottomAligned then 1 else nil,
			}),
			Cryo.Dictionary.join({
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = if not bottomAligned
						then self.props.firstItemPaddingOffset + UDim.new(0, FIRST_ITEM_PADDING_LANDSCAPE_Y)
						else nil,
					PaddingBottom = if bottomAligned
						then self.props.lastItemPaddingOffset + UDim.new(0, ITEM_PADDING_LANDSCAPE_Y)
						else nil,
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = if bottomAligned then Enum.VerticalAlignment.Bottom else nil,
					Padding = self.props.layoutPaddingOffset + UDim.new(0, ITEM_PADDING_LANDSCAPE_Y),
					SortOrder = self.props.sortOrder,
				}),
			}, contents)
		)
	end, SPRING_OPTIONS)
end

function SystemBar:renderBackground(frameProps, contents)
	if self:isPortrait() then
		return self:renderPortrait(frameProps, contents)
	else
		local topItems = Cryo.List.filter(contents, function(_, index)
			return not self.props.itemList[index].bottomAligned
		end)
		local bottomItems = Cryo.List.filter(contents, function(_, index)
			return self.props.itemList[index].bottomAligned
		end)
		local rendered = self:renderLandscape(frameProps, topItems)
		if #bottomItems > 0 then
			rendered = Roact.createFragment({
				NavBar = rendered,
				BottomAlignedNavBar = self:renderLandscape(frameProps, bottomItems, true),
			})
		end
		return rendered
	end
end

function SystemBar:renderSafeArea()
	local position, size
	if self.props.hidden then
		position = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, 0)
	elseif self:isPortrait() then
		position = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, -self.props.experimentalTabSizePortraitY)
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
			BackgroundColor3 = Color3.new(0, 0, 0),
			ClipsDescendants = self.props.clipsDescendants,
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = self.props.bgTransparency or 1,
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
			end,
		}, {
			NavBar = self:renderBackground({
				BackgroundColor3 = theme.NavigationBar.Color,
				BackgroundTransparency = self.props.roundCorners and 1 or theme.NavigationBar.Transparency,
				BorderSizePixel = 0,
			}, renderedItems),
			SafeArea = self:renderSafeArea(),
		}, {
			UICorner = self.props.roundCorners and Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0.15, 0) or nil,
			}) or nil,
		})
	end)
end

function SystemBar:init()
	self:setState({
		portrait = true,
	})
	self.onSelectionChanged = function(selection)
		if #selection > 0 then
			local item = self.props.itemList[selection[1]]
			if item and item.onActivated then
				item.onActivated()
			end
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
			selection = { selection }
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
		sortOrder = self.props.sortOrder,
		onSelectionChanged = self.onSelectionChanged,
	})
end

return SystemBar
