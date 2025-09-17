local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local IconVariant = BuilderIcons.IconVariant
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useScaledValue = require(Foundation.Utility.useScaledValue)

type IconVariant = BuilderIcons.IconVariant
type CommonProps = Types.CommonProps

type Icon = {
	name: string,
	variant: IconVariant?,
}

export type SnackbarAction = {
	onActivated: () -> nil,
	text: string,
}

export type SnackbarProps = {
	action: SnackbarAction?,
	icon: (string | Icon)?,
	onClose: (() -> nil)?,
	title: string,
} & CommonProps

local SNACKBAR_DEFAULT_MAX_WIDTH = 272
local SNACKBAR_WITH_ICON_MAX_WIDTH = 304
local SNACKBAR_WITH_BUTTONS_FIXED_WIDTH = 371

local MAX_LINES = 2

local function Snackbar(props: SnackbarProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local hasIcon = props.icon and props.icon ~= ""
	local hasAction = props.action ~= nil and props.action.text ~= ""
	local hasCloseAffordance = props.onClose ~= nil
	local hasButton = hasAction or hasCloseAffordance
	local hasIconOrButton = hasIcon or hasButton

	local scaledFixedWidth = useScaledValue(SNACKBAR_WITH_BUTTONS_FIXED_WIDTH)
	local scaledMaxWidth = useScaledValue(if hasIcon then SNACKBAR_WITH_ICON_MAX_WIDTH else SNACKBAR_DEFAULT_MAX_WIDTH)
	local iconProps = if typeof(props.icon) == "string"
		then {
			name = props.icon,
			variant = IconVariant.Regular,
		}
		else props.icon
	local titleFontSize = tokens.Typography.CaptionLarge.FontSize
	local titleLineHeight = tokens.Typography.CaptionLarge.LineHeight
	local maxTitleHeight = titleFontSize * titleLineHeight * MAX_LINES
	local action = props.action :: SnackbarAction

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = if hasButton then UDim2.fromOffset(scaledFixedWidth, 0) else UDim2.fromOffset(0, 0),
			sizeConstraint = if hasButton
				then nil
				else {
					MinSize = Vector2.new(0, 0),
					MaxSize = Vector2.new(scaledMaxWidth, math.huge),
				},
			tag = {
				["align-y-center padding-y-xsmall radius-medium row align-y-center gap-large bg-action-over-media"] = true,
				["padding-left-large"] = not hasIconOrButton,
				["padding-left-medium"] = hasIconOrButton,
				["padding-right-large auto-xy"] = not hasButton,
				["padding-right-small auto-y"] = hasButton,
			},
			ref = ref,
		}),
		{
			Content = React.createElement(View, {
				LayoutOrder = 1,
				tag = "auto-xy align-y-center padding-y-small row fill gap-small",
			}, {
				Icon = if hasIcon
					then React.createElement(
						Icon,
						Dash.join(iconProps, { style = tokens.Inverse.Content.Emphasis, LayoutOrder = 1 })
					)
					else nil,

				Title = React.createElement(Text, {
					LayoutOrder = 2,
					Text = props.title,
					sizeConstraint = {
						MinSize = Vector2.new(0, 0),
						MaxSize = Vector2.new(math.huge, maxTitleHeight),
					},
					tag = "auto-xy fill text-align-x-left text-caption-large content-inverse-emphasis text-truncate-split text-wrap",
				}),
			}),

			Buttons = if hasButton
				then React.createElement(View, {
					LayoutOrder = 2,
					tag = "auto-xy align-y-center row gap-xsmall",
				}, {
					Action = if hasAction
						then React.createElement(Text, {
							LayoutOrder = 1,
							onActivated = action.onActivated,
							stateLayer = {
								mode = StateLayerMode.Inverse,
							},
							Text = action.text,
							tag = "auto-xy padding-x-small padding-y-small radius-medium text-label-medium content-inverse-link",
						})
						else nil,

					CloseAffordance = if hasCloseAffordance
						then React.createElement(View, {
							LayoutOrder = 2,
							onActivated = props.onClose,
							padding = UDim.new(0, tokens.Size.Size_150),
							stateLayer = {
								mode = StateLayerMode.Inverse,
							},
							tag = "auto-xy radius-medium",
						}, {
							React.createElement(Icon, {
								name = "x",
								variant = IconVariant.Regular,
								style = tokens.Inverse.Content.Emphasis,
							}),
						})
						else nil,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Snackbar))
