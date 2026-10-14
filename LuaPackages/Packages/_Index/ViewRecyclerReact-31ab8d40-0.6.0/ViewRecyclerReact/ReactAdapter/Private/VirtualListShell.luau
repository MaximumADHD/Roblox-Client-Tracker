local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)

local Axis = Core.Axis
local React = require(Root.Parent.React)
local ScrollbarOverlay = Roblox.Internal.ScrollbarOverlay

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
	local disconnectScrollBarRef = React.useRef(nil :: (() -> ())?)
	local function refreshScrollBar()
		local disconnectScrollBar = disconnectScrollBarRef.current
		if disconnectScrollBar ~= nil then
			disconnectScrollBarRef.current = nil
			disconnectScrollBar()
		end
		local scrollingFrame = props.internalRef.current
		local overlay = props.viewportOverlayRef.current
		if scrollingFrame ~= nil and overlay ~= nil then
			disconnectScrollBarRef.current = ScrollbarOverlay.connect(scrollingFrame, overlay, props.axis)
		end
	end
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
		props.internalRef.current = instance
		props.onScrollingFrameChanged(instance)
		refreshScrollBar()
	end, { props.axis, props.internalRef, props.onScrollingFrameChanged, props.viewportOverlayRef } :: { unknown })

	local viewportOverlayRef = React.useCallback(
		function(instance: Frame?)
			props.viewportOverlayRef.current = instance
			props.onViewportOverlayChanged(instance)
			refreshScrollBar()
		end,
		{
			props.axis,
			props.internalRef,
			props.onViewportOverlayChanged,
			props.viewportOverlayRef,
		} :: { unknown }
	)

	return e("Frame", hostProps, {
		ScrollingFrame = e("ScrollingFrame", frameProps),
		ViewRecyclerOverlay = e("Frame", {
			Active = false,
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Name = "ViewRecyclerOverlay",
			Selectable = false,
			ZIndex = frameProps.ZIndex,
			ref = viewportOverlayRef,
		}),
	})
end

return VirtualListShell
