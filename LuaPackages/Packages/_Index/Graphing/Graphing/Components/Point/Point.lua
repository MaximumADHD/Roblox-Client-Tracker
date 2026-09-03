--!strict
--[[
    A circular point.
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Types = require(Graphing.Types)
local Positioner = require(Graphing.Components.Positioner)
local StyleUtil = require(Graphing.Util.StyleUtil)

export type Props = {
	Position: Vector2 | UDim2,

	Color3: Types.Bindable<Color3>?,
	Image: Types.Bindable<string>?,
	OutlineColor3: Types.Bindable<Color3>?,
	OutlineThickness: number?,
	Size: number?,
	Transparency: Types.Bindable<number>?,
	ZIndex: number?,

	children: Types.Children?,
	positionerRef: React.Ref<GuiObject>?,
	Tag: string?,
}

function Point(props: Props): React.Node
	local size = props.Size or StyleUtil.POINT_HANDLE_SIZE
	local outlineThickness = props.OutlineThickness or StyleUtil.POINT_HANDLE_OUTLINE_THICKNESS
	local innerColor = props.Color3 or StyleUtil.POINT_HANDLE_COLOR3
	local outerColor = props.OutlineColor3 or StyleUtil.POINT_HANDLE_OUTLINE_COLOR3

	return React.createElement(Positioner, {
		Position = props.Position,
		ZIndex = props.ZIndex,
		ref = props.positionerRef,
	}, {
		Outer = React.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.fromOffset(size + 2 * outlineThickness, size + 2 * outlineThickness),
			Image = props.Image or StyleUtil.POINT_HANDLE_IMAGE,
			ImageColor3 = if outlineThickness == 0 then innerColor else outerColor,
			ImageTransparency = props.Transparency,
			BackgroundTransparency = 1,
			ZIndex = 1,
			[React.Tag] = props.Tag,
		}, props.children),
		Inner = outlineThickness > 0 and React.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(size, size),
			Interactable = false,
			Selectable = false,
			Image = props.Image or StyleUtil.POINT_HANDLE_IMAGE,
			ImageColor3 = innerColor,
			ImageTransparency = props.Transparency,
			BackgroundTransparency = 1,
			ZIndex = 2,
			[React.Tag] = props.Tag,
		}),
	})
end

return Point
