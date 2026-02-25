local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
type IconSize = IconSize.IconSize

local Translator = require(Foundation.Utility.Localization.Translator)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

export type EmptyProps = {
	icon: {
		name: string?,
		size: IconSize?,
	}?,
	text: string?,
	button: {
		text: string?,
		icon: string?,
		onActivated: () -> ()?,
	}?,
} & Types.CommonProps

local defaultProps = {
	icon = {
		name = "icons/status/oof_xlarge",
		size = IconSize.Large,
	},
	text = Translator:FormatByKey("CommonUI.Controls.NoResultsFound"),
	button = {
		icon = "icons/common/refresh",
		text = Translator:FormatByKey("CommonUI.Controls.Action.Refresh"),
		onActivated = nil,
	},
	testId = "--foundation-empty",
}

local function Empty(emptyProps: EmptyProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(emptyProps, defaultProps)
	local tokens = useTokens()

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "auto-xy size-full col align-y-center align-x-center gap-small",
			ref = ref,
		}),
		{
			Icon = React.createElement(Icon, {
				name = props.icon.name,
				size = props.icon.size,
				style = tokens.Color.Content.Default,
				LayoutOrder = 1,
			}),
			Text = React.createElement(Text, {
				Text = props.text,
				LayoutOrder = 2,
				tag = "size-full-0 auto-y text-body-large content-default text-wrap text-align-x-center",
				testId = `{props.testId}--text`,
			}),
			Button = if props.button and props.button.onActivated
				then React.createElement(Button, {
					text = props.button.text,
					icon = props.button.icon,
					onActivated = props.button.onActivated,
					LayoutOrder = 3,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Empty))
