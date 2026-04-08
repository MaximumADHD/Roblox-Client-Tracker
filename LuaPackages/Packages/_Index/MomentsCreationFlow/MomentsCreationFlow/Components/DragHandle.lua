local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local View = Foundation.View

local useTokens = Foundation.Hooks.useTokens

type Bindable<T> = Foundation.Bindable<T>

type Props = {
	anchorPoint: Vector2,
	isFlipped: boolean?,
	position: Bindable<UDim2>,
	size: UDim2,
	dragDetectorRef: React.RefObject<UIDragDetector>,
}

local DragHandle = function(props: Props)
	local tokens = useTokens()

	return React.createElement(View, {
		AnchorPoint = props.anchorPoint,
		tag = "bg-system-contrast radius-medium size-300-1000",
		Position = props.position,
	}, {
		OutlineStroke = React.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = tokens.Color.System.Contrast.Color3,
			Transparency = tokens.Color.System.Contrast.Transparency,
			Thickness = tokens.Stroke.Thicker,
		}),

		Line = React.createElement(View, {
			tag = "anchor-center-center bg-surface-300 size-100-400 position-center-center radius-circle",
			ZIndex = 2,
		}),

		Box = React.createElement(View, {
			Position = if props.isFlipped
				then UDim2.new(0, tokens.Size.Size_50, 0.5, 0)
				else UDim2.new(1, -tokens.Size.Size_50, 0.5, 0),
			tag = "anchor-center-center bg-system-contrast size-100-1000",
		}, {
			OutlineStroke = React.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = tokens.Color.System.Contrast.Color3,
				LineJoinMode = Enum.LineJoinMode.Miter,
				Transparency = tokens.Color.System.Contrast.Transparency,
				Thickness = tokens.Stroke.Thicker,
			}),
		}),

		DragDetector = React.createElement("UIDragDetector", {
			DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine,
			ref = props.dragDetectorRef,
			ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomScale,
		}),
	})
end

return DragHandle
