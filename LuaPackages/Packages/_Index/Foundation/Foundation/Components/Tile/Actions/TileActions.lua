local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTile = require(Foundation.Components.Tile.useTile)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
type Bindable<T> = Types.Bindable<T>

type TileActionsProps = {
	Visible: Bindable<boolean>?,
	children: React.ReactNode?,
}

local function TileActions(props: TileActionsProps)
	local tileContext = useTile()

	return React.createElement(View, {
		Visible = props.Visible,
		LayoutOrder = 3,
		tag = "auto-y size-full-0 shrink",
		testId = `{tileContext.testId}--actions`,
	}, props.children)
end

return TileActions
