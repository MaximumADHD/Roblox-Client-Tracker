local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AspectRatio = require(Foundation.Components.AspectRatio)
local Padding = require(Foundation.Components.Padding)

local getTestIdTag = require(Foundation.Utility.getTestIdTag)

local Types = require(Foundation.Components.Types)
type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps

local function GuiObjectChildren(props: GuiObjectProps & CommonProps): React.ReactNode
	local testId = props.testId
	return {
		Children = React.createElement(React.Fragment, {}, props.children) :: any,
		AspectRatio = if props.aspectRatio ~= nil
			then React.createElement(AspectRatio, {
				value = props.aspectRatio,
				testId = if testId then `{testId}--aspect-ratio` else nil,
			})
			else nil,
		CornerRadius = if props.cornerRadius ~= nil
			then React.createElement("UICorner", {
				CornerRadius = props.cornerRadius,
				[React.Tag] = getTestIdTag(testId, "corner-radius"),
			})
			else nil,
		FlexItem = if props.flexItem ~= nil
			then React.createElement("UIFlexItem", {
				FlexMode = props.flexItem.FlexMode,
				GrowRatio = props.flexItem.GrowRatio,
				ShrinkRatio = props.flexItem.ShrinkRatio,
				ItemLineAlignment = props.flexItem.ItemLineAlignment,
				[React.Tag] = getTestIdTag(testId, "flex-item"),
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
				[React.Tag] = getTestIdTag(testId, "list-layout"),
			})
			else nil,
		SizeConstraint = if props.sizeConstraint ~= nil
			then React.createElement("UISizeConstraint", {
				MaxSize = props.sizeConstraint.MaxSize,
				MinSize = props.sizeConstraint.MinSize,
				[React.Tag] = getTestIdTag(testId, "size-constraint"),
			})
			else nil,
		Padding = if props.padding ~= nil
			then React.createElement(Padding, {
				value = props.padding,
				testId = if testId then `{testId}--padding` else nil,
			})
			else nil,
		Scale = if props.scale ~= nil
			then React.createElement("UIScale", {
				Scale = props.scale,
				[React.Tag] = getTestIdTag(testId, "scale"),
			})
			else nil,
		Stroke = if props.stroke ~= nil
			then React.createElement("UIStroke", {
				Color = props.stroke.Color,
				Thickness = props.stroke.Thickness,
				Transparency = props.stroke.Transparency,
				LineJoinMode = props.stroke.LineJoinMode,
				BorderStrokePosition = props.stroke.BorderStrokePosition,
				[React.Tag] = getTestIdTag(testId, "stroke"),
			})
			else nil,
	}
end

return GuiObjectChildren
