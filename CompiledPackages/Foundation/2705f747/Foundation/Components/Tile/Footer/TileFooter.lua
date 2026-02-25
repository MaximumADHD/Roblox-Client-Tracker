local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)

local useTile = require(Foundation.Components.Tile.useTile)

type TileFooterProps = {
	children: React.ReactNode?,
}

local function TileFooter(props: TileFooterProps)
	local tileContext = useTile()

	return React.createElement(View, {
		LayoutOrder = 2,
		tag = "size-full-0 auto-y shrink",
		testId = `{tileContext.testId}--footer`,
	}, props.children)
end

return TileFooter
