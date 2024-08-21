local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

type TileFooterProps = {
	children: React.ReactNode?,
}

local function TileFooter(props: TileFooterProps)
	return React.createElement(View, {
		LayoutOrder = 2,
		tag = "size-full-0 auto-y shrink",
	}, props.children)
end

return TileFooter
