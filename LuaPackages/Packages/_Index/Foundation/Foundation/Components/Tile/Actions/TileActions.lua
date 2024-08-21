local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

type TileActionsProps = {
	Visible: Bindable<boolean>?,
	children: React.ReactNode?,
}

local function TileActions(props: TileActionsProps)
	return React.createElement(View, {
		Visible = props.Visible,
		LayoutOrder = 3,
		tag = "auto-y size-full-0 shrink",
	}, props.children)
end

return TileActions
