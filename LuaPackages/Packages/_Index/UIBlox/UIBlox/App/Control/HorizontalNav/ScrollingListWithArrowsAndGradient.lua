--[[
	A component for horizontal scrolling.
	It makes a horizontal scroll widget, along with some nice UI features:
	  * an optional gradient along the right or left side when there's content offscreen.
	  * an arrow button on right or left side when there's content offscreen (only
	    appears on hover with devices capable of hovering)
]]
local Control = script.Parent.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local React = require(Packages.React)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local withStyle = require(UIBlox.Core.Style.withStyle)
local Otter = require(Packages.Otter)

local IntroScroll = require(Control.HorizontalNav.IntroScroll)
local GradientFrame = require(Control.HorizontalNav.GradientFrame)
local ArrowFrame = require(Control.HorizontalNav.ArrowFrame)
local Utils = require(Control.HorizontalNav.Utils)
local useIsMouseAndKeyboard = require(UIBlox.Utility.useIsMouseAndKeyboard)

export type Props = {
	getScollingListContent: () -> any,
	listHeight: number,
	buttonPadding: number,
	scrollingFrameRef: any,
	buttonRefs: { [any]: any }?,
	useIntroScroll: boolean?,
	childWidgetIndex: number?,
	buttonWidth: number?,
	numButtons: number?,
	padOutsideEdges: boolean?,
	canvasWidth: number?,
	hideGradient: boolean?,
	clipsDescendants: boolean?,
}

local function ScrollingListWithArrowsAndGradient(props: Props)
	local listHeight = props.listHeight
	local childWidgetIndex = props.childWidgetIndex
	local useIntroScroll = props.useIntroScroll
	local canvasWidth = props.canvasWidth or 0

	local showArrowFrame = useIsMouseAndKeyboard()
	local gradientFrameRef = React.useRef(nil)

	local arrowLeftVisible, updateArrowLeftVisible = React.useBinding(false)
	local arrowRightVisible, updateArrowRightVisible = React.useBinding(false)

	local canvasPosition, updateCanvasPosition = React.useBinding(Vector2.new(0, 0))

	local checkShowGradient = React.useCallback(function(rbx)
		local gradientFrame = gradientFrameRef:getValue()
		if not gradientFrame then
			return
		end

		local showGradient, showLeft, showRight = Utils.shouldShowGradientsForScrollingFrame(rbx)
		-- never hide the gradient when the arrows are visible (needed for contrast)
		gradientFrame.Visible = showGradient and (not props.hideGradient or showArrowFrame)

		local left = gradientFrame:FindFirstChild("Left")
		local right = gradientFrame:FindFirstChild("Right")

		if left and right then
			left.Visible = showLeft
			right.Visible = showRight
		end

		updateArrowLeftVisible(showLeft)
		updateArrowRightVisible(showRight)
	end, { gradientFrameRef, updateArrowLeftVisible, updateArrowRightVisible })

	local onCanvasPositionChange = React.useCallback(function(rbx)
		checkShowGradient(rbx)
		--Update canvasPosition binding to avoid canvasPosition reset/jitter when
		--switching between touch & Mouse/Keyboard inputs
		updateCanvasPosition(rbx.CanvasPosition)
	end, { checkShowGradient, updateCanvasPosition })

	React.useEffect(function()
		local widget = props.scrollingFrameRef:getValue()
		if widget then
			checkShowGradient(widget)
		end
	end)

	return React.createElement(React.Fragment, {}, {
		ScrollingList = React.createElement("ScrollingFrame", {
			ClipsDescendants = props.clipsDescendants,
			Size = UDim2.new(1, 0, 1, 0),
			CanvasSize = UDim2.new(0, canvasWidth, 1, 0),
			CanvasPosition = canvasPosition,
			ScrollBarThickness = 0,
			BackgroundTransparency = 1,
			ElasticBehavior = Enum.ElasticBehavior.Always,
			ScrollingDirection = Enum.ScrollingDirection.X,
			ZIndex = 2,

			[React.Change.AbsoluteSize] = checkShowGradient,
			[React.Change.CanvasSize] = checkShowGradient,
			[React.Change.CanvasPosition] = onCanvasPositionChange,

			ref = props.scrollingFrameRef,
		}, props.getScollingListContent()),

		GradientFrame = React.createElement(GradientFrame, {
			height = listHeight,
			frameRef = gradientFrameRef,
			ZIndex = 3,
		}),

		ArrowFrame = showArrowFrame and React.createElement(ArrowFrame, {
			isVisibleLeft = arrowLeftVisible,
			isVisibleRight = arrowRightVisible,
			defaultUseProps = {
				scrollingFrameRef = props.scrollingFrameRef,
				buttonRefs = props.buttonRefs,
				buttonWidth = props.buttonWidth,
				padOutsideEdges = props.padOutsideEdges,
				numButtons = props.numButtons,
				buttonPadding = props.buttonPadding,
				updateCanvasPosition = updateCanvasPosition,
			},
			ZIndex = 4,
		}),

		IntroScroll = useIntroScroll and React.createElement(IntroScroll, {
			childWidgetIndex = childWidgetIndex,
			scrollingFrameRef = props.scrollingFrameRef,
			updateCanvasPosition = updateCanvasPosition,
		}) or nil,
	})
end

return ScrollingListWithArrowsAndGradient
