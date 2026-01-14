local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local useTile = require(Foundation.Components.Tile.useTile)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type TileContentProps = {
	children: React.ReactNode?,
	LayoutOrder: number?,
}

local defaultProps = {
	LayoutOrder = 2,
}

local function TileContent(tileContentProps: TileContentProps)
	local props = withDefaults(tileContentProps, defaultProps)

	local tokens = useTokens()
	local tileContext = useTile()

	return React.createElement(View, {
		tag = "size-full col gap-small align-y-top",
		flexItem = {
			FlexMode = Enum.UIFlexMode.Shrink,
		},
		padding = if tileContext.isContained then tokens.Padding.Small else nil,
		LayoutOrder = props.LayoutOrder,
		testId = `{tileContext.testId}--content`,
	}, props.children)
end

return TileContent
