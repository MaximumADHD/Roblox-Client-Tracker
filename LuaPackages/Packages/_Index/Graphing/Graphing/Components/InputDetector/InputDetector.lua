--!strict
--[[
    A component for detecting mouse events
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Types = require(Graphing.Types)
local CanvasContext = require(Graphing.CanvasContext)
local MathUtil = require(Graphing.Util.MathUtil)

export type Props = {
	OnClick: (plotPos: Vector2, input: InputObject) -> ()?,
	OnRelease: (plotPos: Vector2, input: InputObject) -> ()?,
	OnPress: (plotPos: Vector2, input: InputObject) -> ()?,
	OnRightClick: (plotPos: Vector2, input: InputObject) -> ()?,
	OnRightRelease: (plotPos: Vector2, input: InputObject) -> ()?,
	OnRightPress: (plotPos: Vector2, input: InputObject) -> ()?,
	OnHoverStart: (plotPos: Vector2, input: InputObject) -> ()?,
	OnHoverMoved: (plotPos: Vector2, input: InputObject) -> ()?,
	OnHoverEnded: (plotPos: Vector2, input: InputObject) -> ()?,
	OnDragStart: (plotPos: Vector2, globalPos: Vector2) -> ()?,
	OnDragMoved: (plotPos: Vector2, globalPos: Vector2) -> ()?,
	OnDragEnded: (plotPos: Vector2, globalPos: Vector2) -> ()?,
	OnScroll: (delta: number, input: InputObject) -> ()?,

	-- a [0, 1] vector denoting the part within the component that represents its plot position.
	-- (0, 0) means it uses the top left corner, while (1, 1) means it uses the bottom right corner.
	AnchorPoint: Vector2?,
	-- whether the anchor point should use whatever the mouse's plot position was when the component was initially pressed
	-- rather than a specific spot on the component itself
	TreatMouseAsAnchor: boolean?,

	Inflate: number?,
	XSnap: number?,
	YSnap: number?,

	DebugColor3: Types.Bindable<Color3>?,

	DragCursor: string?,
	HoverCursor: string?, -- TODO change the cursor
	ZIndex: Types.Bindable<number>?,
}

function InputDetector(props: Props): React.Node
	local canvasContext = React.useContext(CanvasContext)

	local inflate = props.Inflate or 0

	local isHovering, setIsHovering = React.useState(false)
	local _isDragging, setIsDragging = React.useState(false)
	local hasDragged, setHasDragged = React.useState(false)
	local hasRightDragged, setHasRightDragged = React.useState(false)
	local dragOffset, setDragOffset = React.useState(Vector2.zero)

	local snap = React.useCallback(function(pos: Vector2)
		local x = pos.X
		local y = pos.Y
		if props.XSnap then
			x = MathUtil.roundToNearest(x, props.XSnap)
		end
		if props.YSnap then
			y = MathUtil.roundToNearest(y, props.YSnap)
		end
		return Vector2.new(x, y)
	end, { props.XSnap, props.YSnap })

	local onInputBegan = React.useCallback(
		function(_: GuiObject, input)
			local mousePosPlot = snap(canvasContext.mouseToPlot(input.Position))

			if input.UserInputType == Enum.UserInputType.MouseMovement then
				setIsHovering(true)

				if props.OnHoverStart then
					props.OnHoverStart(canvasContext.mouseToPlot(input.Position), input)
				end
			elseif
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				setHasDragged(false)

				if props.OnPress then
					props.OnPress(mousePosPlot, input)
				end
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				setHasRightDragged(false)

				if props.OnRightPress then
					props.OnRightPress(mousePosPlot, input)
				end
			end
		end,
		{
			setIsHovering,
			setHasDragged,
			setHasRightDragged,
			canvasContext,
			props.OnHoverStart,
			props.OnPress,
			props.OnRightPress,
			snap,
		} :: { unknown }
	)

	local onInputChanged = React.useCallback(function(_, input: InputObject)
		if props.OnHoverMoved and isHovering and input.UserInputType == Enum.UserInputType.MouseMovement then
			props.OnHoverMoved(snap(canvasContext.mouseToPlot(input.Position)), input)
		elseif props.OnScroll and input.UserInputType == Enum.UserInputType.MouseWheel then
			props.OnScroll(input.Position.Z, input)
		end
	end, { isHovering, canvasContext, props.OnHoverMoved, props.OnScroll, snap } :: { unknown })

	local onInputEnded = React.useCallback(
		function(_, input: InputObject)
			local mousePosPlot = snap(canvasContext.mouseToPlot(input.Position))

			if input.UserInputType == Enum.UserInputType.MouseMovement then
				setIsHovering(false)

				if props.OnHoverEnded then
					props.OnHoverEnded(mousePosPlot, input)
				end
			elseif
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				if props.OnRelease then
					props.OnRelease(mousePosPlot, input)
				end
				if props.OnClick and isHovering and not hasDragged then
					props.OnClick(mousePosPlot, input)
				end
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				if props.OnRightRelease then
					props.OnRightRelease(mousePosPlot, input)
				end
				if props.OnRightClick and isHovering and not hasRightDragged then
					props.OnRightClick(mousePosPlot, input)
				end
			end
		end,
		{
			setIsHovering,
			isHovering,
			hasDragged,
			hasRightDragged,
			canvasContext,
			props.OnHoverEnded,
			props.OnClick,
			props.OnRightClick,
			props.OnRelease,
			props.OnRightRelease,
			snap,
		} :: { unknown }
	)

	local onDragBegan = React.useCallback(
		function(dragDetector: UIDragDetector, position: Vector2)
			setIsDragging(true)

			local frameAbsPos = Vector2.zero
			local parentGui = if dragDetector.Parent then dragDetector.Parent.Parent else nil
			if parentGui and parentGui:IsA("GuiObject") then
				local anchor = props.AnchorPoint or parentGui.AnchorPoint
				frameAbsPos = parentGui.AbsolutePosition + parentGui.AbsoluteSize * anchor
			end

			local newDragOffset = canvasContext.absToView(position) - canvasContext.absToView(frameAbsPos)
			if props.TreatMouseAsAnchor then
				newDragOffset = Vector2.zero
			end
			setDragOffset(newDragOffset)

			if props.OnDragStart then
				local viewPos = canvasContext.absToView(position) - newDragOffset
				viewPos = Vector2.new(math.clamp(viewPos.X, 0, 1), math.clamp(viewPos.Y, 0, 1))
				props.OnDragStart(snap(canvasContext.viewToPlot(viewPos)), position)
			end
		end,
		{
			canvasContext,
			setDragOffset,
			setIsDragging,
			props.OnDragStart,
			props.AnchorPoint,
			props.TreatMouseAsAnchor,
			snap,
		} :: { unknown }
	)

	local onDragMoved = React.useCallback(function(_: UIDragDetector, position: Vector2)
		setHasDragged(true)
		setHasRightDragged(true)

		if props.OnDragMoved then
			local viewPos = canvasContext.absToView(position) - dragOffset
			viewPos = Vector2.new(math.clamp(viewPos.X, 0, 1), math.clamp(viewPos.Y, 0, 1))
			props.OnDragMoved(snap(canvasContext.viewToPlot(viewPos)), position)
		end
	end, { canvasContext, setHasDragged, setHasRightDragged, dragOffset, props.OnDragMoved, snap } :: { unknown })

	local onDragEnded = React.useCallback(function(_: UIDragDetector, position: Vector2)
		setIsDragging(false)

		if props.OnDragEnded then
			local viewPos = canvasContext.absToView(position) - dragOffset
			viewPos = Vector2.new(math.clamp(viewPos.X, 0, 1), math.clamp(viewPos.Y, 0, 1))
			props.OnDragEnded(snap(canvasContext.viewToPlot(viewPos)), position)
		end
	end, { canvasContext, setIsDragging, props.OnDragEnded, dragOffset, snap } :: { unknown })

	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.new(1, inflate * 2, 1, inflate * 2),
		BackgroundTransparency = if props.DebugColor3 ~= nil then 0 else 1,
		BackgroundColor3 = props.DebugColor3,
		BorderSizePixel = 0,
		ZIndex = props.ZIndex,
		[React.Event.InputBegan] = onInputBegan :: any,
		[React.Event.InputChanged] = onInputChanged :: any,
		[React.Event.InputEnded] = onInputEnded :: any,
	}, {
		DragDetector = React.createElement("UIDragDetector", {
			DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
			ReferenceUIInstance = canvasContext.getViewport(),
			[React.Event.DragStart] = onDragBegan :: any,
			[React.Event.DragContinue] = onDragMoved :: any,
			[React.Event.DragEnd] = onDragEnded :: any,
		}),
	})
end

return InputDetector
