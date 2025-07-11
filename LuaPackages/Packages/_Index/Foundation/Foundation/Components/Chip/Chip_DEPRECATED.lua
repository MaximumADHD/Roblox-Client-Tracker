local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local NewChip = require(script.Parent.Chip)

local IconSize = require(Foundation.Enums.IconSize)
local IconPosition = require(Foundation.Enums.IconPosition)
type IconPosition = IconPosition.IconPosition

local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

type Icon = {
	name: string,
	position: IconPosition,
}

-- Use new Chip props since it's fully backward compatible. The newer props would be just ignored here, but the type system is happy.
type ChipProps = NewChip.ChipProps

local defaultProps = {
	isDisabled = false,
	isChecked = false,
}

local function Chip(chipProps: ChipProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(chipProps, defaultProps)

	local tokens = useTokens()
	local cursor = useCursor(CursorType.SmallPill)

	local icon = React.useMemo(function(): Icon?
		if typeof(props.icon) == "string" then
			return {
				name = props.icon,
				position = IconPosition.Left,
			}
		else
			return props.icon
		end
	end, { props.icon })

	local contentStyle = if props.isChecked
		then tokens.Color.ActionSubEmphasis.Foreground
		else tokens.Color.Content.Emphasis

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then 0.5 else nil,
			selection = {
				Selectable = not props.isDisabled,
				SelectionImageObject = cursor,
			},
			onActivated = props.onActivated,
			isDisabled = props.isDisabled,
			stateLayer = if props.isChecked
				then {
					mode = StateLayerMode.Inverse,
				}
				else nil,
			tag = {
				["row gap-xsmall size-0-700 padding-medium auto-x align-y-center align-x-center clip radius-circle"] = true,
				["bg-action-sub-emphasis"] = props.isChecked,
				["bg-shift-200"] = not props.isChecked,
			},
			ref = ref,
		}),
		{
			Icon = if icon
				then React.createElement(Icon, {
					name = icon.name,
					size = IconSize.Small,
					style = contentStyle,
					LayoutOrder = if icon.position == IconPosition.Left then 1 else 3,
				})
				else nil,
			Text = if props.text and props.text ~= ""
				then React.createElement(Text, {
					Text = props.text,
					textStyle = contentStyle,
					LayoutOrder = 2,
					tag = "auto-x size-0-full shrink text-caption-large text-truncate-end",
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Chip))
