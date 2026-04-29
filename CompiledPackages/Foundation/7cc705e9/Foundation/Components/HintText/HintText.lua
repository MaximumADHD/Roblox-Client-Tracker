local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type HintTextProps = {
	-- Determines the string rendered by the UI element
	text: string,
	-- Whether the input is in an error state
	hasError: boolean?,
	-- Whether the input is disabled
	isDisabled: boolean?,
} & Types.CommonProps

local function HintText(props: HintTextProps, ref: React.Ref<GuiObject>?)
	return React.createElement(
		Text,
		withCommonProps(props, {
			Text = props.text,
			tag = {
				["size-full-0 auto-y text-caption-small text-align-x-left text-align-y-top text-wrap"] = true,
				["content-action-alert"] = props.hasError,
				["content-muted"] = Flags.FoundationInputFieldFixDisabled and props.isDisabled and not props.hasError,
				["content-default"] = (not Flags.FoundationInputFieldFixDisabled or not props.isDisabled)
					and not props.hasError,
			} :: { [string]: boolean },
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(HintText))
