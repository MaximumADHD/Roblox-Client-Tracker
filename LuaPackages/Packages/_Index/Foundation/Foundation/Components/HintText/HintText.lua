local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)

local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type HintTextProps = {
	-- Determines the string rendered by the UI element
	text: string,
	-- Whether the input is in an error state
	hasError: boolean?,
} & Types.CommonProps

local function HintText(props: HintTextProps, ref: React.Ref<GuiObject>?)
	return React.createElement(
		Text,
		withCommonProps(props, {
			Text = props.text,
			tag = {
				["size-full-0 auto-y text-caption-small text-align-x-left text-align-y-top text-wrap"] = true,
				["content-default"] = not props.hasError,
				["content-action-alert"] = props.hasError,
			} :: { [string]: boolean },
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(HintText))
