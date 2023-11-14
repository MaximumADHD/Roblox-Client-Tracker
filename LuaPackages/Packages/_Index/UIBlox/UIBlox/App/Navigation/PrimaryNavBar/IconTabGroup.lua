--!nocheck
local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)

-- Packages
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

-- UIBlox Core
local InteractableList = require(UIBlox.Core.Control.InteractableList)
local SelectionMode = require(UIBlox.Core.Control.Enum.SelectionMode)
local useSelectionCursor = require(App.SelectionImage.useSelectionCursor)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)
local useCursor = require(UIBlox.App.SelectionCursor.useCursor)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local IconTab = require(script.Parent.IconTab)
local HorizontalContainer = require(script.Parent.HorizontalContainer)

-- Types
local Types = require(script.Parent.Types)

-- Constants
local Constants = require(script.Parent.Constants)

type Props = Types.IconTabGroupProps

local defaultProps: Props = {
	selection = { 1 },
	items = {},
	padding = {
		left = Constants.ICON_TAB_PADDING,
		right = Constants.ICON_TAB_PADDING,
	},
	itemSpacing = UDim.new(0, Constants.ICON_TAB_ITEM_SPACING),
	itemPadding = {
		left = Constants.ICON_TAB_ITEM_PADDING_LEFT,
		right = Constants.ICON_TAB_ITEM_PADDING_RIGHT,
	},
}

local function IconTabGroup(providedProps: Props)
	local props: Props = Object.assign({}, defaultProps, providedProps)
	local selectionCursor = if UIBloxConfig.useNewSelectionCursor
		then useCursor(UDim.new(0.5, 0), 0)
		else useSelectionCursor(CursorKind.XLargePill)
	return HorizontalContainer({
		size = UDim2.new(0, 0, 0, Constants.ICON_TAB_GROUP_HEIGHT),
		showRoundedBackground = false,
		automaticSize = Enum.AutomaticSize.X,
		padding = props.padding,
	}, {
		MainTabList = React.createElement(InteractableList, {
			size = UDim2.new(0, 0, 1, 0),
			automaticSize = Enum.AutomaticSize.X,
			fillDirection = Enum.FillDirection.Horizontal,
			horizontalAlignment = Enum.HorizontalAlignment.Left,
			sortOrder = Enum.SortOrder.LayoutOrder,
			itemList = props.items,
			itemSize = UDim2.fromScale(0, 0),
			renderItem = function(item: Types.IconTabItem, state: ControlState, selected: boolean)
				local index: integer = Cryo.List.find(props.items, item)
				local extraProps = {
					LayoutOrder = index,
					AutomaticSize = Enum.AutomaticSize.XY,
					SelectionImageObject = selectionCursor,
				}
				return React.createElement(IconTab, {
					item = item,
					selected = selected,
					controlState = state,
					padding = props.itemPadding,
				}),
					extraProps
			end,
			onSelectionChanged = function(selection: table)
				local item: Types.IconTabItem = props.items[selection[1]]
				if item ~= nil then
					if item.onActivated ~= nil then
						item.onActivated()
					end
				end
			end,
			selection = props.selection,
			selectionMode = SelectionMode.Single,
			padding = props.itemSpacing,
		}),
	})
end

return IconTabGroup
