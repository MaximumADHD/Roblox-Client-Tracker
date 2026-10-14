local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local Axis = Core.Axis
local React = require(Root.Parent.React)

local e = React.createElement

export type Props = {
	axis: Core.Axis,
	onScrollingFrameChanged: (ScrollingFrame?) -> (),
	onViewportOverlayChanged: (Frame?) -> (),
	internalRef: { current: ScrollingFrame? },
	viewportOverlayRef: { current: Frame? },
	scrollingFrameProps: { [any]: any }?,
	tag: string?,
}

local function VirtualListShell(props: Props)
	local scrollBarState, setScrollBarState = React.useState({
		thickness = 12,
		verticalPosition = Enum.VerticalScrollBarPosition.Right,
	})
	local disconnectScrollBarRef = React.useRef(nil :: (() -> ())?)
	local frameProps: { [any]: any } = {
		Size = UDim2.fromScale(1, 1),
		ScrollingDirection = if props.axis == Axis.X then Enum.ScrollingDirection.X else Enum.ScrollingDirection.Y,
		[React.Tag] = props.tag,
	}
	local hostProps: { [any]: any } = {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}
	local reservedProps = {
		CanvasSize = true,
		CanvasPosition = true,
		ref = true,
		[React.Tag] = true,
		[React.Change.AbsoluteWindowSize] = true,
		[React.Change.CanvasPosition] = true,
	}

	if props.scrollingFrameProps ~= nil then
		for key, value in props.scrollingFrameProps do
			if frameProps[key] ~= nil or reservedProps[key] then
				error(`VirtualList: {tostring(key)} is already used by ViewRecycler`)
			end
			if key == "AnchorPoint" or key == "LayoutOrder" or key == "Position" or key == "Rotation" then
				hostProps[key] = value
			else
				frameProps[key] = value
			end
		end
	end

	if frameProps.Visible ~= nil then
		hostProps.Visible = frameProps.Visible
	end
	if frameProps.ZIndex ~= nil then
		hostProps.ZIndex = frameProps.ZIndex
	end

	frameProps.ref = React.useCallback(function(instance: ScrollingFrame?)
		local disconnectScrollBar = disconnectScrollBarRef.current
		if disconnectScrollBar ~= nil then
			disconnectScrollBarRef.current = nil
			disconnectScrollBar()
		end
		props.internalRef.current = instance
		props.onScrollingFrameChanged(instance)
		if instance == nil then
			return
		end
		local function updateScrollBarState()
			setScrollBarState({
				thickness = instance.ScrollBarThickness,
				verticalPosition = instance.VerticalScrollBarPosition,
			})
		end
		updateScrollBarState()
		local thicknessConnection =
			instance:GetPropertyChangedSignal("ScrollBarThickness"):Connect(updateScrollBarState)
		local positionConnection =
			instance:GetPropertyChangedSignal("VerticalScrollBarPosition"):Connect(updateScrollBarState)
		disconnectScrollBarRef.current = function()
			thicknessConnection:Disconnect()
			positionConnection:Disconnect()
		end
	end, { props.internalRef, props.onScrollingFrameChanged } :: { unknown })

	local overlayPosition = UDim2.fromOffset(
		if props.axis == Axis.Y and scrollBarState.verticalPosition == Enum.VerticalScrollBarPosition.Left
			then scrollBarState.thickness
			else 0,
		0
	)
	local overlaySize = if props.axis == Axis.X
		then UDim2.new(1, 0, 1, -scrollBarState.thickness)
		else UDim2.new(1, -scrollBarState.thickness, 1, 0)
	local viewportOverlayRef = React.useCallback(function(instance: Frame?)
		props.viewportOverlayRef.current = instance
		props.onViewportOverlayChanged(instance)
	end, { props.onViewportOverlayChanged, props.viewportOverlayRef } :: { unknown })

	return e("Frame", hostProps, {
		ScrollingFrame = e("ScrollingFrame", frameProps),
		ViewRecyclerOverlay = e("Frame", {
			Active = false,
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Name = "ViewRecyclerOverlay",
			Position = overlayPosition,
			Selectable = false,
			Size = overlaySize,
			ZIndex = frameProps.ZIndex,
			ref = viewportOverlayRef,
		}),
	})
end

return VirtualListShell
