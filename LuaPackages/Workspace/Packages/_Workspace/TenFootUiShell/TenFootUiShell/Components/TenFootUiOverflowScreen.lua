local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local Style = require(Packages.Style)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local Constants = require(ReactNavigationExtend.Views.Constants)
local useDesignTokens = Style.useDesignTokens

type ScreenKind = TenFootUiCommon.ScreenKind
type DesignTokens = Style.DesignTokens

type Props = {
	groupTransparency: number,
	screenKind: ScreenKind,
	children: React.ReactNode,
}

local function getVariantStyles(props: Props, tokens: DesignTokens)
	local topbarHeight = Constants.TOP_BAR_CANVAS_SIZE.Y
	local pageHeightRatio = Constants.PAGE_CONTENT_HEIGHT_RATIO
	local overflowStop = (tokens.Global.Space_200 / Constants.CANVAS_SIZE.Y) + pageHeightRatio
	local paddingTop = topbarHeight - tokens.Global.Space_300

	return {
		showOverflowFade = props.screenKind == "Default",
		paddingTop = if props.screenKind == "Default" then paddingTop else 0,
		pageHeightRatio = pageHeightRatio,
		overflowStop = overflowStop,
	}
end

local function TenFootUiOverflowScreen(props: Props)
	local tokens: DesignTokens = useDesignTokens()
	local styles = getVariantStyles(props, tokens)

	return React.createElement(
		"CanvasGroup",
		{
			Name = "TenFootUiOverflowScreen",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			GroupTransparency = props.groupTransparency,
		},
		React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, styles.paddingTop),
		}),
		if styles.showOverflowFade
			then React.createElement("UIGradient", {
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0),
					NumberSequenceKeypoint.new(styles.pageHeightRatio, 0),
					NumberSequenceKeypoint.new(styles.overflowStop, 1),
					NumberSequenceKeypoint.new(1, 1),
				}),
				Rotation = 270,
			})
			else nil,
		props.children
	)
end

return TenFootUiOverflowScreen
