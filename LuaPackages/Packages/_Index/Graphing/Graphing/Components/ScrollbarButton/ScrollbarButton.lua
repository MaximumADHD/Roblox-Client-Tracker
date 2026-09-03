--!strict
--[[
    A clickable or draggable button, intended to be used by Scrollbar
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Types = require(Graphing.Types)
local InputDetector = require(Graphing.Components.InputDetector)
local StyleUtil = require(Graphing.Util.StyleUtil)

export type Props = {
	AnchorPoint: Vector2?,
	Image: Types.Bindable<string>?,
	Position: Types.Bindable<UDim2>?,
	Rotation: Types.Bindable<number>?,
	Size: Types.Bindable<UDim2>,

	OnClick: () -> ()?,
	OnMoved: (pos: Vector2) -> ()?,

	Color3: Types.Bindable<Color3>?,
	ZIndex: Types.Bindable<number>?,

	Tag: string?,
}

function ScrollbarButton(props: Props): React.Node
	return React.createElement("ImageButton", {
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		Rotation = props.Rotation,
		Size = props.Size,
		Image = props.Image,
		BackgroundColor3 = props.Color3 or StyleUtil.SCROLLBAR_BUTTON_COLOR3,
		ZIndex = props.ZIndex,
	}, {
		MouseDetector = React.createElement(InputDetector, {
			AnchorPoint = props.AnchorPoint,
			OnClick = function()
				if props.OnClick then
					props.OnClick()
				end
			end,
			OnDragMoved = function(input)
				if props.OnMoved then
					props.OnMoved(input)
				end
			end,
		}),
	})
end

return ScrollbarButton
