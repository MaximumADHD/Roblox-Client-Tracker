local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

export type InputHintProps = {
	text: string,
	size: InputLabelSize?,
	isDisabled: boolean?,
	testId: string?,
	LayoutOrder: number?,
	padding: Types.Padding?,
}

local defaultSize = InputLabelSize.Medium

local function InputHint(props: InputHintProps)
	local size = props.size or defaultSize

	local styleTags = React.useMemo(function()
		return {
			["size-0 auto-xy text-wrap text-align-x-left text-align-y-top"] = true,
			["content-muted"] = props.isDisabled,
			["content-default"] = not props.isDisabled,
			["text-caption-small"] = size == InputLabelSize.Small or size == InputLabelSize.XSmall,
			["text-caption-medium"] = size == InputLabelSize.Medium or size == InputLabelSize.Large,
		} :: { [string]: boolean }
	end, { props.isDisabled, size } :: { unknown })

	return React.createElement(Text, {
		Text = props.text,
		tag = styleTags,
		testId = props.testId,
		LayoutOrder = props.LayoutOrder,
		padding = props.padding,
	})
end

return React.memo(InputHint)
