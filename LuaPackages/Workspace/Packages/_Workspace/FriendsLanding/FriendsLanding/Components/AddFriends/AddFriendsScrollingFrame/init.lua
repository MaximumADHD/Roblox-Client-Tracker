--!nonstrict
local dependencies = require(script:FindFirstAncestor("FriendsLanding").AddFriends.dependencies)
local llama = dependencies.llama
local Roact = dependencies.Roact
local Signal = dependencies.Signal
-- We would like to start loading more before user reaches the bottom.
-- The default distance from the bottom of that would be 2000.
local DEFAULT_PRELOAD_DISTANCE = 2000

local LOADING_BAR_PADDING = 20
local LOADING_BAR_HEIGHT = 16
local LOADING_BAR_TOTAL_HEIGHT = LOADING_BAR_PADDING * 2 + LOADING_BAR_HEIGHT

local AddFriendsScrollingFrame = Roact.PureComponent:extend("AddFriendsScrollingFrame")

AddFriendsScrollingFrame.defaultProps = {
	preloadDistance = DEFAULT_PRELOAD_DISTANCE,
}

function AddFriendsScrollingFrame:init()
	self._isMounted = false

	self.scrollToTopSignal = Signal.new()

	self.scrollToTop = function()
		self.scrollToTopSignal:fire()
	end

	self.state = {
		isLoadingMore = false,
		isScrollable = false,
	}

	self.lastLoadMoreThreshold = 0

	self.loadMore = function()
		local onLoadMore = self.props.onLoadMore

		self:setState({
			isLoadingMore = true,
		})

		onLoadMore():andThen(function()
			if self._isMounted then
				self:setState({
					isLoadingMore = false,
				})
			end
		end, function()
			-- Allow us to retry.
			if self._isMounted then
				self:setState({
					isLoadingMore = false,
				})
			end
			-- Reset the lastLoadMoreThreshold if request fails
			-- Allow it to retry
			self.lastLoadMoreThreshold = 0
		end)
	end
	self.useNewRefreshScrollingFrame = self.props.deps.FlagSettings.UseNewRefreshScrollingFrame()

	self.lastScrollPosition = 0
	self.scrollMovementDirection = self.props.deps.ScrollMovementDirection.Backward
	self.checkScrollDirectionChanged = function(rbx)
		local newScrollPosition = rbx.CanvasPosition.Y
		-- if we're negative (for reloads) don't change the scroll direction
		if newScrollPosition < 0 or newScrollPosition == self.lastScrollPosition then
			return
		end
		local newScrollDirection
		if newScrollPosition > self.lastScrollPosition then
			newScrollDirection = self.props.deps.ScrollMovementDirection.Forward
		else
			newScrollDirection = self.props.deps.ScrollMovementDirection.Backward
		end
		if newScrollDirection ~= self.scrollMovementDirection then
			if self.props.onScrollDirectionChanged ~= nil then
				self.props.onScrollDirectionChanged(newScrollDirection)
			end
			self.scrollMovementDirection = newScrollDirection
		end
		self.lastScrollPosition = newScrollPosition
	end

	self.onCanvasPositionChanged = function(rbx)
		local onLoadMore = self.props.onLoadMore
		local isLoadingMore = self.state.isLoadingMore
		local newPosition = rbx.CanvasPosition.Y

		local shouldLoadMore

		if self.useNewRefreshScrollingFrame then
			local hasMoreRows = self.props.hasMoreRows
			shouldLoadMore = hasMoreRows and not isLoadingMore
		else
			shouldLoadMore = onLoadMore and not isLoadingMore
		end

		if shouldLoadMore then
			self.loadMore()
		end

		if self.props.onCanvasPositionChangedCallback then
			self.props.onCanvasPositionChangedCallback(newPosition)
		end

		if self.props.onScrollDirectionChanged ~= nil then
			self.checkScrollDirectionChanged(rbx)
		end
	end

	self.onCanvasSizeChanged = function(rbx)
		local canvasHeight = rbx.CanvasSize.Y.Offset
		local windowHeight = rbx.AbsoluteWindowSize.Y

		-- Exit early if we are called with invalid window size (happens when mounting)
		if windowHeight == 0 or not self._isMounted then
			return
		end

		local isScrollable = self._isMounted and canvasHeight > windowHeight

		if isScrollable ~= self.state.isScrollable and self._isMounted then
			self:setState({
				isScrollable = isScrollable,
			})
		end

		local shouldLoadMore

		if self.useNewRefreshScrollingFrame then
			shouldLoadMore = self.props.hasMoreRows and not self.state.isLoadingMore and not isScrollable
		else
			shouldLoadMore = self.props.onLoadMore and not self.state.isLoadingMore and not isScrollable
		end

		if shouldLoadMore and not self.props.initializing then
			self.loadMore()
		end
	end

	-- TODO: remove with flag UseNewRefreshScrollingFrame
	self.createFooter = function()
		local isLoadingMore = self.state.isLoadingMore

		return isLoadingMore
			and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, LOADING_BAR_TOTAL_HEIGHT),
			}, {
				LoadingBar = Roact.createElement(self.props.deps.LoadingBarWithTheme),
			})
	end
end

function AddFriendsScrollingFrame:didMount()
	self._isMounted = true
end

function AddFriendsScrollingFrame:willUnmount()
	self._isMounted = false
end

function AddFriendsScrollingFrame:render()
	-- RefreshScrollingFrameNew is a PureComponent, so the createFooter function has to actually change
	-- for it to re-render.
	if self.useNewRefreshScrollingFrame then
		local hasMoreRows = self.props.hasMoreRows
		local isLoadingMore = self.state.isLoadingMore
		local isScrollable = self.state.isScrollable

		local createFooter = nil

		if isLoadingMore then
			createFooter = function()
				return Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, LOADING_BAR_TOTAL_HEIGHT),
				}, {
					LoadingBar = Roact.createElement(self.props.deps.LoadingBarWithTheme),
				})
			end
		elseif not hasMoreRows and isScrollable then
			createFooter = function()
				return Roact.createElement(self.props.deps.EndOfScroll, {
					backToTopCallback = self.scrollToTop,
				})
			end
		end

		local newProps = llama.Dictionary.join(self.props, {
			onCanvasPositionChangedCallback = self.onCanvasPositionChanged,
			onCanvasSizeChangedCallback = self.onCanvasSizeChanged,
			createFooter = createFooter,
			scrollToTopSignal = self.scrollToTopSignal,
			onLoadMore = llama.None,
			hasMoreRows = llama.None,
		})

		return Roact.createElement(self.props.deps.RefreshScrollingFrameNew, newProps)
	else
		local newProps = llama.Dictionary.join(self.props, {
			onCanvasPositionChangedCallback = self.onCanvasPositionChanged,
			onCanvasSizeChangedCallback = self.onCanvasSizeChanged,
			createFooter = self.createFooter,
			onLoadMore = llama.None,
			[Roact.Children] = llama.None,
		})

		return Roact.createElement(self.props.deps.RefreshScrollingFrame, newProps, self.props[Roact.Children])
	end
end

return AddFriendsScrollingFrame
