local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AspectRatio = require(Foundation.Components.AspectRatio)
local Padding = require(Foundation.Components.Padding)

local Types = require(Foundation.Components.Types)
type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps

local function GuiObjectChildren(props: GuiObjectProps & CommonProps): React.ReactNode
	return {
		Children = React.createElement(React.Fragment, {}, props.children) :: any,
		AspectRatio = if props.aspectRatio ~= nil
			then React.createElement(AspectRatio, { value = props.aspectRatio })
			else nil,
		CornerRadius = if props.cornerRadius ~= nil
			then React.createElement("UICorner", {
				CornerRadius = props.cornerRadius,
			})
			else nil,
		FlexItem = if props.flexItem ~= nil
			then React.createElement("UIFlexItem", {
				FlexMode = props.flexItem.FlexMode,
				GrowRatio = props.flexItem.GrowRatio,
				ShrinkRatio = props.flexItem.ShrinkRatio,
				ItemLineAlignment = props.flexItem.ItemLineAlignment,
			})
			else nil,
		ListLayout = if props.layout ~= nil and props.layout.FillDirection ~= nil
			then React.createElement("UIListLayout", {
				FillDirection = props.layout.FillDirection,
				ItemLineAlignment = props.layout.ItemLineAlignment,
				HorizontalAlignment = props.layout.HorizontalAlignment,
				HorizontalFlex = props.layout.HorizontalFlex,
				VerticalAlignment = props.layout.VerticalAlignment,
				VerticalFlex = props.layout.VerticalFlex,
				Padding = props.layout.Padding,
				SortOrder = props.layout.SortOrder,
				Wraps = props.layout.Wraps,
			})
			else nil,
		SizeConstraint = if props.sizeConstraint ~= nil
			then React.createElement("UISizeConstraint", props.sizeConstraint)
			else nil,
		Padding = if props.padding ~= nil then React.createElement(Padding, { value = props.padding }) else nil,
		Scale = if props.scale ~= nil
			then React.createElement("UIScale", {
				Scale = props.scale,
			})
			else nil,
		Stroke = if props.stroke ~= nil then React.createElement("UIStroke", props.stroke) else nil,
	}
end

return GuiObjectChildren
