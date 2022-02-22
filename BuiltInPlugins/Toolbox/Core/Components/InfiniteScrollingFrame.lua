--[[
	A scroll frame that will check the left space between current render asset and empty space.
	When scrolling down, it will try to re-render. If we found empty space between the render asset
	and the canvas, then we will try to call request more function defined in the property to fetch more
	assets. After the asset is returned, we will re-calculate canvase size.
	This component will send out request to try to load more pages on didMount and after didUpdate.

	This component will try to render all asset received. And use that to check if we have more space in the canvase.

	Necesarry Properties:
		Position, UDim2, used to set the default position if not override by the layouter.
		Size, UDim2, used to set how big the scroll frame should be. By defualt, the canvas size
			should be almost the same as the frame size.

		nextPageFunc, function, called during re-render when there is more empty spaces. This function should includes all the
			parameters needed for the request except for the currentPage. Target page will be determined by the infiScroller.

		layouterRef, Roact Ref, used to calculate the height of the canvas.

	Optional Properties:
		LayoutOrder, number, will be used by the layouter to change the position of the assets.
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withLocalization = ContextHelper.withLocalization

local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local InfiniteScrollingFrame = Roact.PureComponent:extend("InfiniteScrollingFrame")

local DEFUALT_CANVAS_HEIGHT = 900

function InfiniteScrollingFrame:init(props)
	self.state = {
		currentPage = 1, -- Will start requesting data from page 1
	}

	self.scrollingFrameRef = Roact.createRef()

	self.checkCanvasAndRequest = function(self)
		local scrollingFrame = self.scrollingFrameRef.current
		if not scrollingFrame then
			return
		end
		local canvasY = scrollingFrame.CanvasPosition.Y
		local windowHeight = scrollingFrame.AbsoluteWindowSize.Y
		local canvasHeight = scrollingFrame.CanvasSize.Y.Offset

		-- Where the bottom of the scrolling frame is relative to canvas size
		local bottom = canvasY + windowHeight
		local dist = canvasHeight - bottom

		if dist <= 0 then
			self.requestNextPage()
		end
	end

	self.onScroll = function()
		self.checkCanvasAndRequest(self)
	end

	self.requestNextPage = function()
		if self.props.nextPageFunc then
			self.props.nextPageFunc(self.state.currentPage + 1)
		end
	end
end

function InfiniteScrollingFrame.getDerivedStateFromProps(nextProps, lastState)
	return {
		currentPage = nextProps.currentPage,
	}
end

function InfiniteScrollingFrame:didMount()
	self.checkCanvasAndRequest(self)
end

function InfiniteScrollingFrame:didUpdate(prevProps, prevState)
	self.checkCanvasAndRequest(self)
end

function InfiniteScrollingFrame:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props
		local state = self.state

		local Position = props.Position
		local Size = props.Size
		local LayoutOrder = props.LayoutOrder

		local layouterRef = props.layouterRef.current
		local canvasHeight = DEFUALT_CANVAS_HEIGHT
		if layouterRef then
			canvasHeight = layouterRef.AbsoluteContentSize.Y
		end

		return Roact.createElement(StyledScrollingFrame, {
			Position = Position,
			Size = Size,
			CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
			ZIndex = 1,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			scrollingEnabled = true,

			[Roact.Ref] = self.scrollingFrameRef,
			onScroll = self.onScroll,

			LayoutOrder = LayoutOrder,
		}, props[Roact.Children])
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		currentPage = state.currentPage or 1,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(InfiniteScrollingFrame)
