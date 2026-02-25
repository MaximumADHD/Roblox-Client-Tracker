local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Props = {
	emphasizeText: boolean?,
	highlight: boolean?,
	isSelectable: boolean,
	isSelected: boolean?,
	LayoutOrder: number,
	onActivated: () -> (),
	Text: string,
	testId: string?,
}

local function CalendarDay(props: Props)
	local tokens = useTokens()
	local color3 = if props.isSelected
		then tokens.Inverse.Content.Emphasis.Color3
		elseif not props.isSelectable or not props.emphasizeText then tokens.Color.Content.Muted.Color3
		else tokens.Color.Content.Emphasis.Color3
	local transparency = if not props.isSelected and (not props.isSelectable or not props.emphasizeText) then 0.5 else 0

	return React.createElement(Text, {
		textStyle = {
			Color3 = color3,
			Transparency = transparency,
		},
		backgroundStyle = if props.isSelected
			then tokens.Color.System.Contrast
			elseif props.highlight then tokens.Color.ActionStandard.Background
			else nil,
		LayoutOrder = props.LayoutOrder,
		onActivated = if props.isSelectable then props.onActivated else nil,
		RichText = not props.isSelectable,
		stateLayer = {
			mode = if props.isSelected then StateLayerMode.Inverse else StateLayerMode.Default,
		},
		Text = if props.isSelectable then props.Text else `<s>{props.Text}</s>`,
		tag = "text-align-x-center text-align-y-center text-title-small auto-xy",
		testId = props.testId,
	})
end

return CalendarDay
