local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local useStyle = require(UIBlox.Core.Style.useStyle)

local Types = require(script.Parent.Types)
local Shortcut = require(script.Parent.Shortcut)

type ControllerBarProps = {
	-- Array of shortcut items to display
	items: { [number]: Types.ShortcutPublicProps },
	-- Position of `ControllerBar`
	position: UDim2?,
	-- Anchor point of `ControllerBar`
	anchorPoint: Vector2?,
	-- Top padding in `ControllerBar`
	spacingTop: number?,
	-- Trailing padding in `ControllerBar`
	spacingTrailing: number?,
	-- Bottom padding in `ControllerBar`
	spacingBottom: number?,
	-- Leading padding in `ControllerBar`
	spacingLeading: number?,
	-- Spacing between shortcut items in `ControllerBar`
	itemsGap: number?,
	-- Spacing between shortcut item icon and label in `ControllerBar`
	itemIconLabelGap: number?,
	-- Leading padding before `actionText` in ControllerBar` shortcut item
	actionTextSpacingLeading: number?,
}

local defaultProps: ControllerBarProps = {
	items = {},
	spacingTop = 12,
	spacingTrailing = 30,
	spacingBottom = 12,
	spacingLeading = 18,
	itemsGap = 24,
	itemIconLabelGap = 6,
	actionTextSpacingLeading = 12,
}

local function ControllerBar(providedProps: ControllerBarProps)
	local props: ControllerBarProps = Object.assign({}, defaultProps, providedProps)
	local style = useStyle()

	local children = {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, props.spacingTop),
			PaddingRight = UDim.new(0, props.spacingTrailing),
			PaddingBottom = UDim.new(0, props.spacingBottom),
			PaddingLeft = UDim.new(0, props.spacingLeading),
		}),
		ListLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, props.itemsGap),
		}),
	}

	for index, item in ipairs(props.items) do
		children["Item" .. tostring(index)] = React.createElement(Shortcut, {
			index = index,
			iconLabelGap = props.itemIconLabelGap,
			actionTextSpacingLeading = props.actionTextSpacingLeading,
			publicProps = item,
		})
	end

	return React.createElement("Frame", {
		Position = props.position,
		AnchorPoint = props.anchorPoint,
		Size = UDim2.fromOffset(0, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.UIMuted.Color,
		BackgroundTransparency = style.Theme.UIMuted.Transparency,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, children :: any)
end

return ControllerBar
