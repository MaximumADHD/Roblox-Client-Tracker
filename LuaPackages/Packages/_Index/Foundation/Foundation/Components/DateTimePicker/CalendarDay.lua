local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)

type Props = {
	highlight: boolean?,
	isSelectable: boolean,
	isSelected: boolean?,
	key: string,
	LayoutOrder: number,
	onActivated: () -> (),
	Text: string,
	testId: string?,
}

local function CalendarDay(props: Props)
	return React.createElement(Text, {
		key = props.key,
		LayoutOrder = props.LayoutOrder,
		onActivated = if props.isSelectable then props.onActivated else nil,
		RichText = not props.isSelectable,
		Text = if props.isSelectable then props.Text else string.format("<s>%s</s>", props.Text),
		tag = {
			["text-align-x-center text-align-y-center text-title-small radius-circle"] = true,
			["content-emphasis"] = props.isSelectable and props.highlight,
			["content-inverse-default"] = not props.isSelectable or not props.highlight,
			["bg-shift-300"] = props.isSelected,
		},
		testId = props.testId,
	})
end

return CalendarDay
