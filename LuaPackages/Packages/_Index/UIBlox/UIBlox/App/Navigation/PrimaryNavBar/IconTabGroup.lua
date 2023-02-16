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
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local useSelectionCursor = require(App.SelectionImage.useSelectionCursor)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)

local IconTab = require(script.Parent.IconTab)
local HorizontalContainer = require(script.Parent.HorizontalContainer)

-- Types
local Types = require(script.Parent.Types)

-- Constants
local Constants = require(script.Parent.Constants)

type Props = Types.IconTabGroupProps

local defaultProps: Props = {
	items = {},
}

return function(providedProps: Props)
	local props: Props = Object.assign({}, defaultProps, providedProps)
	local selectionCursor = useSelectionCursor(CursorKind.LargePill)
	-- first IconTab is selected by default, selection status is handled inside InteractableList
	local currentSelection, setCurrentSelection = React.useState(1)
	return HorizontalContainer({
		size = UDim2.new(0, 0, 0, Constants.ICON_TAB_HEIGHT),
		showRoundedBackground = false,
		roundedBackgroundHeight = Constants.ICON_TAB_ITEM_HEIGHT,
		roundCornerRadius = Constants.ICON_TAB_ITEM_HEIGHT / 2,
		automaticSize = Enum.AutomaticSize.X,
		padding = {
			left = Constants.ICON_TAB_PADDING_LEFT,
			right = Constants.ICON_TAB_PADDING_RIGHT,
			top = (Constants.ICON_TAB_HEIGHT - Constants.ICON_TAB_ITEM_HEIGHT) / 2,
		},
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
				}),
					extraProps
			end,
			onSelectionChanged = function(selection: table)
				local item: Types.IconTabItem = props.items[selection[1]]
				if item ~= nil and currentSelection ~= selection[1] then
					setCurrentSelection(selection[1])
					if item.onActivated ~= nil then
						item.onActivated()
					end
				end
			end,
			selectionMode = SelectionMode.Single,
			padding = UDim.new(0, Constants.ICON_TAB_ITEM_SPACING),
		}),
	})
end
