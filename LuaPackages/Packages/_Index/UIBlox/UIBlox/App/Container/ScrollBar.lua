local UserInputService = game:GetService("UserInputService")

local Container = script.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local StyleTypes = require(App.Style.StyleTypes)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ImagesTypes = require(App.ImageSet.ImagesTypes)

export type Props = {
	-- Whether the component is interactable
	userInteractionEnabled: boolean,
	-- Width of the whole component
	width: number,
	-- AnchorPoint of the component
	anchorPoint: Vector2?,
	-- Position of the component
	position: UDim2?,
	-- ZIndex of the component
	zIndex: number?,
	-- Group transparency of the whole component
	transparency: (number | React.Binding<number>)?,
	-- Color of the track
	backgroundColor: StyleTypes.ThemeItem?,
	-- Padding of the track at start and end
	paddingStartEnd: number,

	-- Width of the handle
	handleWidth: number,
	-- Color of the handle
	handleColor: StyleTypes.ThemeItem?,
	-- Corner radius of the handle (at top and bottom)
	handleCornerRadius: number?,
	-- Icon in the middle of the handle
	handleIcon: (string | ImagesTypes.ImageSetImage)?,
	-- Size of the handle icon
	handleIconSize: number?,
	-- Color of the handle icon
	handleIconColor: StyleTypes.ThemeItem?,
	-- Callback when dragging the handle, with new canvas position passed in
	onDragging: (number) -> (),

	-- Size of VerticalScrollView
	viewSize: React.Binding<Vector2>,
	-- Canvas size of VerticalScrollView
	canvasSize: React.Binding<Vector2>,
	-- Canvas position of VerticalScrollView
	canvasPosition: React.Binding<Vector2>,
}

local function ScrollBar(props: Props)
	local userInteractionEnabled = props.userInteractionEnabled
	local width = props.width
	local anchorPoint = props.anchorPoint
	local position = props.position
	local zIndex = props.zIndex
	local transparency = props.transparency
	local backgroundColor = props.backgroundColor
	local paddingStartEnd = props.paddingStartEnd

	local handleWidth = props.handleWidth
	local handleColor = props.handleColor
	local handleCornerRadius = props.handleCornerRadius
	local handleIcon = props.handleIcon
	local handleIconSize = props.handleIconSize
	local handleIconColor = props.handleIconColor
	local onDragging = props.onDragging

	local viewSize = props.viewSize
	local canvasSize = props.canvasSize
	local canvasPosition = props.canvasPosition

	local showScrollBar, setShowScrollBar = React.useState(false)
	local trackHeight, setTrackHeight = React.useBinding(0)
	local isDragging, setDragging = React.useState(false)
	local dragStartPosition = React.useRef(0)
	local dragStartCanvasPosition = React.useRef(0)

	local onTrackSizeChange = React.useCallback(function(track: Frame)
		setTrackHeight(track.AbsoluteSize.Y)
	end, { setTrackHeight })

	local onHandleSizeChange = React.useCallback(function(handle: Frame)
		local parent = handle.Parent :: Frame?
		if parent ~= nil and math.ceil(handle.AbsoluteSize.Y) < parent.AbsoluteSize.Y then
			setShowScrollBar(true)
		else
			setShowScrollBar(false)
		end
	end, { setShowScrollBar })

	local handleSize = React.useMemo(function()
		return React.joinBindings({
			viewSize = viewSize,
			canvasSize = canvasSize,
		}):map(function(values)
			local viewHeight: number = values.viewSize.Y
			local canvasHeight: number = values.canvasSize.Y
			local handleSizeYScale = math.clamp(viewHeight / canvasHeight, 0, 1)
			return UDim2.new(0, handleWidth, handleSizeYScale, 0)
		end)
	end, { handleWidth, viewSize, canvasSize } :: { any })

	local handlePosition = React.useMemo(function()
		return React.joinBindings({
			canvasPosition = canvasPosition,
			canvasSize = canvasSize,
		}):map(function(values)
			local canvasPositionY: number = values.canvasPosition.Y
			local canvasHeight: number = values.canvasSize.Y
			local handlePositionYScale = canvasPositionY / canvasHeight
			return UDim2.fromScale(0.5, handlePositionYScale)
		end)
	end, { canvasSize, canvasPosition })

	local dragStartCallback = React.useCallback(function(_: Frame, inputObject: InputObject?)
		if not showScrollBar or not userInteractionEnabled or isDragging then
			return
		end

		if inputObject and inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
			dragStartPosition.current = inputObject.Position.Y
			dragStartCanvasPosition.current = canvasPosition:getValue().Y

			setDragging(true)
		end
	end, {
		showScrollBar,
		userInteractionEnabled,
		isDragging,
		dragStartPosition,
		dragStartCanvasPosition,
		canvasPosition,
		setDragging,
	} :: { any })

	local draggingCallback = React.useCallback(function(inputObject)
		if not userInteractionEnabled or not isDragging then
			return
		end

		if inputObject.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		local offset = inputObject.Position.Y :: number - dragStartPosition.current :: number
		local height = trackHeight:getValue() - paddingStartEnd
		local scale = offset / height

		local viewHeight = viewSize:getValue().Y
		local canvasPositionY = dragStartCanvasPosition.current :: number
		local canvasHeight = canvasSize:getValue().Y
		local newCanvasPositionY = math.clamp(canvasPositionY + scale * canvasHeight, 0, canvasHeight - viewHeight)

		onDragging(newCanvasPositionY)
	end, {
		userInteractionEnabled,
		isDragging,
		dragStartPosition,
		trackHeight,
		paddingStartEnd,
		viewSize,
		dragStartCanvasPosition,
		canvasSize,
		onDragging,
	} :: { any })

	local dragStopCallback = React.useCallback(function(inputObject: InputObject?)
		if not userInteractionEnabled or not isDragging then
			return
		end

		if inputObject and inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		setDragging(false)
	end, { userInteractionEnabled, isDragging, setDragging } :: { any })

	React.useEffect(function()
		if not showScrollBar or not isDragging then
			return function() end
		end

		local inputChangedConnection = UserInputService.InputChanged:Connect(draggingCallback)
		local inputEndedConnection = UserInputService.InputEnded:Connect(dragStopCallback)
		local focusReleasedConnection = UserInputService.WindowFocusReleased:Connect(dragStopCallback)

		return function()
			inputChangedConnection:Disconnect()
			inputEndedConnection:Disconnect()
			focusReleasedConnection:Disconnect()
		end
	end, { showScrollBar, isDragging, draggingCallback, dragStopCallback } :: { any })

	local groupTransparency = transparency
	if not showScrollBar then
		groupTransparency = 1
	elseif isDragging then
		groupTransparency = 0
	end

	return React.createElement("CanvasGroup", {
		Selectable = false,
		Size = UDim2.new(0, width, 1, 0),
		AnchorPoint = anchorPoint,
		Position = position,
		GroupTransparency = groupTransparency,
		BackgroundColor3 = if backgroundColor then backgroundColor.Color else nil,
		BackgroundTransparency = if backgroundColor then backgroundColor.Transparency else 1,
		BorderSizePixel = 0,
		ZIndex = zIndex,
	}, {
		Padding = if paddingStartEnd
			then React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, paddingStartEnd),
				PaddingBottom = UDim.new(0, paddingStartEnd),
			})
			else nil,
		Track = React.createElement("Frame", {
			Selectable = false,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			[React.Change.AbsoluteSize] = onTrackSizeChange,
		}, {
			-- make the handle have round corners when it is clipped
			TrackUICorner = if handleCornerRadius
				then React.createElement("UICorner", {
					CornerRadius = UDim.new(0, handleCornerRadius),
				})
				else nil,
			Handle = React.createElement("Frame", {
				Active = showScrollBar and userInteractionEnabled,
				Selectable = false,
				Size = handleSize,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = handlePosition,
				BackgroundColor3 = if handleColor then handleColor.Color else nil,
				BackgroundTransparency = if handleColor then handleColor.Transparency else 0,
				BorderSizePixel = 0,
				[React.Change.AbsoluteSize] = onHandleSizeChange,
				[React.Event.InputBegan] = dragStartCallback,
			}, {
				HandleUICorner = if handleCornerRadius
					then React.createElement("UICorner", {
						CornerRadius = UDim.new(0, handleCornerRadius),
					})
					else nil,
				Icon = if handleIcon
					then React.createElement(ImageSetComponent.Label, {
						Selectable = false,
						Size = UDim2.fromOffset(handleIconSize :: number, handleIconSize :: number),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						Image = handleIcon,
						ImageColor3 = if handleIconColor then handleIconColor.Color else nil,
						ImageTransparency = if handleIconColor then handleIconColor.Transparency else nil,
						BackgroundTransparency = 1,
					})
					else nil,
			}),
		}),
	})
end

return ScrollBar
