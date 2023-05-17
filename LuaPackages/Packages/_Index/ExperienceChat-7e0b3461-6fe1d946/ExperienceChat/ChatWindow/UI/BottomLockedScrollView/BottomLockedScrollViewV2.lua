--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local React = require(Packages.React)
local VirtualizedList = require(Packages.VirtualizedList)

local UIBlox = require(Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local SCROLL_LOCK_THRESHOLD_PERCENT = game:DefineFastInt("ExpChatScrollLockThreshold", 90) / 100
local MAX_NUM = 2 ^ 63 - 1

local function isScrollbarNearBottom(rbx: ScrollingFrame)
	local windowSize = rbx.AbsoluteWindowSize
	local canvasPosition = rbx.CanvasPosition
	local canvasSize = rbx.AbsoluteCanvasSize
	local maxCanvasPosition = canvasSize - windowSize
	local scrollRatio = canvasPosition.Y / maxCanvasPosition.Y

	if canvasSize.Y <= windowSize.Y then
		-- Too short, we are at the bottom
		return true
	end

	return scrollRatio >= SCROLL_LOCK_THRESHOLD_PERCENT
end

local function isMouseMovementOrTouch(inputObject)
	return inputObject.UserInputType == Enum.UserInputType.MouseMovement
		or inputObject.UserInputType == Enum.UserInputType.Touch
end

return function(props)
	local style = useStyle()
	local theme = style.Theme

	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	local parentRef = React.useRef(nil :: Instance?)
	local isLockedAtBottom, setIsLockedAtBottom = React.useState(true)
	local isScrollBarVisible, setIsScrollBarVisible = React.useState(false)
	local isDragging, setIsDragging = React.useState(false)

	React.useEffect(function()
		if parentRef.current then
			local scrollingFrame = parentRef.current:FindFirstChildWhichIsA("ScrollingFrame", true)
			if scrollingFrame then
				scrollingFrameRef.current = scrollingFrame
			end
		end
	end, { parentRef })

	React.useEffect(function()
		if isLockedAtBottom and isDragging == false and scrollingFrameRef.current then
			scrollingFrameRef.current.CanvasPosition = Vector2.new(0, MAX_NUM)
		end
	end, { tostring(props.messages), isLockedAtBottom, isDragging, tostring(scrollingFrameRef) } :: { any })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = props.Size,
		ref = parentRef,

		[React.Event.InputBegan] = function(_, inputObject)
			if isMouseMovementOrTouch(inputObject) then
				setIsScrollBarVisible(true)
			end

			if inputObject.UserInputType == Enum.UserInputType.Touch then
				setIsDragging(true)
			end
		end,
		[React.Event.InputEnded] = function(_, inputObject)
			if isMouseMovementOrTouch(inputObject) then
				setIsScrollBarVisible(false)
			end

			if inputObject.UserInputType == Enum.UserInputType.Touch then
				setIsDragging(false)
			end
		end,
	}, {
		padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 0),
			PaddingBottom = UDim.new(0, 0),
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
		}),
		scrollView = React.createElement(VirtualizedList.ScrollView, {
			style = {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = if isScrollBarVisible then 0 else 1,
				ScrollBarThickness = 8,
			},
			contentContainerStyle = {
				BackgroundTransparency = 1,
			},
			Size = UDim2.fromScale(1, 1),
			onScroll = function(rbx)
				setIsLockedAtBottom(isScrollbarNearBottom(rbx))
			end,
		}, props.children),
	})
end
