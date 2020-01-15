local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("infinite-scroller").Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local t = require(Root.t)

local FitFrame = require(Root.FitFrame).FitFrameOnAxis
local findNewIndices = require(script.Parent.findNewIndices)
local Round = require(script.Parent.Round)
local KeyPool = require(script.Parent.KeyPool)

local NotifyReady = require(script.Parent.NotifyReady)

local debugPrint = function() end

local Scroller = Roact.PureComponent:extend("Scroller")

Scroller.Orientation = require(script.Parent.Orientation)

local isVertical = {
	[Scroller.Orientation.Up] = true,
	[Scroller.Orientation.Down] = true,
	[Scroller.Orientation.Left] = false,
	[Scroller.Orientation.Right] = false,
}

local isReverse = {
	[Scroller.Orientation.Up] = true,
	[Scroller.Orientation.Down] = false,
	[Scroller.Orientation.Left] = true,
	[Scroller.Orientation.Right] = false,
}

local direction = {
	[Scroller.Orientation.Up] = -1,
	[Scroller.Orientation.Down] = 1,
	[Scroller.Orientation.Left] = -1,
	[Scroller.Orientation.Right] = 1,
}

Scroller.validateProps = t.strictInterface({
	-- Required. The list of items to scroll through.
	itemList = t.array(t.any),

	-- Required. A callback function, called with each visible item in the itemList when the list is rendered.
	renderItem = t.callback,

	-- A function to uniquely identify list items. Calling this on the same item twice should give the same result
	-- accoring to ==.
	identifier = t.optional(t.callback),

	-- One of the Scroller.Orientation enums. Determines the leading edge of the infinite scroll.
	orientation = t.optional(Scroller.Orientation.isOrientation),

	-- A callback function, called when the infinite scroll reaches the leading end of the itemList (index
	-- #itemList).
	loadNext = t.optional(t.callback),

	-- A callback function, called when the infinite scroll reaches the trailing end of the itemList (index 1).
	loadPrevious =  t.optional(t.callback),

	-- Padding between elements in the scrolling frame. The Scale is relative to the size of the scrolling frame.
	padding = t.optional(t.UDim),

	-- The minimum number of unmounted elements to keep at the top and bottom of the list. If there are fewer than
	-- this call loadNext or loadPrevious.
	loadingBuffer = t.optional(t.numberPositive),

	-- The amount of space above and below the view to render items in.
	mountingBuffer = t.optional(t.numberPositive),

	-- The amount of empty space to keep at the top and bottom on the scroll.
	dragBuffer = t.optional(t.numberPositive),

	-- An initial guess at the average size of an item.
	estimatedItemSize = t.optional(t.numberPositive),

	-- The maximum distance to search for moved elements.
	maximumSearchDistance = t.optional(t.numberPositive),

	-- The element to put in focus initially.
	focusIndex = t.optional(t.integer),

	-- An arbitrary value to prevent the list from refocusing every render. Change this to cause the list to reset
	-- and refocus on the new focusIndex.
	focusLock = t.optional(t.any),

	-- The position within the view to keep still as other things move. The Scale is relative to the size of the
	-- scrolling frame.
	anchorLocation = t.optional(t.UDim),

	---- INTERNAL ONLY ----
	[NotifyReady] = t.any,
})

-- Default values for all the infinite-scroller-specific props. Any prop not in this list will be passed on to the
-- underlying ScrollingFrame.
Scroller.defaultProps = {
	itemList = {},
	renderItem = {},
	identifier = function(item)
		return item
	end,
	orientation = Scroller.Orientation.Down,
	loadNext = false,
	loadPrevious = false,
	padding = UDim.new(0, 0),
	loadingBuffer = 10,
	mountingBuffer = 200,
	dragBuffer = 100,
	estimatedItemSize = 50,
	maximumSearchDistance = 100,
	focusIndex = 1,
	focusLock = {},
	anchorLocation = UDim.new(0, 0),
	[NotifyReady] = false,
}

function Scroller:render()
	debugPrint("render")

	-- Gather vertical/horizontal specific variables.
	local axis = isVertical[self.props.orientation] and {
		fillDirection = Enum.FillDirection.Vertical,
		fitDirection = FitFrame.Axis.Vertical,
		minimumSize = UDim2.new(1, 0, 0, 0),
		canvasSize = UDim2.new(0, 0, 0, self.state.size),
		paddingSide = "PaddingTop",
	} or {
		fillDirection = Enum.FillDirection.Horizontal,
		fitDirection = FitFrame.Axis.Horizontal,
		minimumSize = UDim2.new(0, 0, 1, 0),
		canvasSize = UDim2.new(0, self.state.size, 0, 0),
		paddingSide = "PaddingLeft",
	}

	-- Remove non-standard props from list to pass on to ScrollingFrame. These are the same props given in
	-- defaultProps.
	local props = Cryo.Dictionary.join(
		self.props,
		self.propsToClear,
		{
			CanvasSize = axis.canvasSize,
			[Roact.Change.CanvasPosition] = self.onScroll,
			[Roact.Change.AbsoluteSize] = self.onResize,
			[Roact.Ref] = self:getRef(),
		}
	)

	local children = {
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = axis.fillDirection,
			Padding = UDim.new(0, self.itemPadding),
			[Roact.Change.AbsoluteContentSize] = self.onContentResize,
		}),
		padding = Roact.createElement("UIPadding", {
			[axis.paddingSide] = UDim.new(0, self.state.padding),
		}),
	}

	-- Trailing and leading indicies won't be set if this isn't true.
	if self.state.ready and not Cryo.isEmpty(self.props.itemList) then
		debugPrint("  Rendering elements between", self.state.trail.index, "and", self.state.lead.index)
		for n = self.state.trail.index, self.state.lead.index do
			local metadata = self:getMetadata(n)
			children[metadata.name] = Roact.createElement(FitFrame, {
				minimumSize = axis.minimumSize,
				axis = axis.fitDirection,
				FillDirection = axis.fillDirection,
				BackgroundTransparency = 1,
				LayoutOrder = isReverse[self.props.orientation] and -n or n,
				[Roact.Ref] = metadata.ref,
			}, {
				item = self.props.renderItem(self.props.itemList[n], false),
			})
		end
	end

	return Roact.createElement("ScrollingFrame", props, children)
end

function Scroller:willUpdate(nextProps, nextState)
	debugPrint("willUpdate")

	if not nextState.ready then
		return
	end

	self.sizeDebounce = true

	local deletions = {}
	local additions = {}

	if not Cryo.isEmpty(self.props.itemList) and self.state.lead then
		for n = self.state.trail.index, self.state.lead.index do
			local id = self.props.identifier(self.props.itemList[n])
			deletions[id] = true
		end
	end

	if not Cryo.isEmpty(nextProps.itemList) and nextState.lead then
		for n = nextState.trail.index, nextState.lead.index do
			local item = nextProps.itemList[n]
			local id = nextProps.identifier(item)
			if deletions[id] then
				-- Element is in both ranges.
				deletions[id] = nil
			else
				additions[id] = item
			end
		end
	end

	-- Clear names first, so new items can use them.
	for id, _ in pairs(deletions) do
		self:clearMetadata(id)
	end
	for id, item in pairs(additions) do
		self:updateMetadata(id, item, nextProps)
	end

	-- The focus lock changed, clear the non-state anchor variables.
	if self.state.lastFocusLock ~= nextState.lastFocusLock then
		self.anchorFramePosition = 0
		self.anchorCanvasPosition = self.relativeAnchorLocation
	end
end

function Scroller:didUpdate(previousProps, previousState)
	debugPrint("didUpdate")

	if Cryo.isEmpty(self.props.itemList) then
		return
	end

	if not self.state.ready then
		self.onResize(self:getRef().current)
		return
	end

	if not self:adjustCanvas(self.scrollingForward, self.scrollingBackward) then
		self:moveToAnchor()
		self:loadMore()
		self.sizeDebounce = false
	end
end

function Scroller.getDerivedStateFromProps(nextProps, lastState)
	debugPrint("getDerivedStateFromProps")
	if not lastState.ready or Cryo.isEmpty(nextProps.itemList) then
		return
	end

	local listSize = #nextProps.itemList

	-- Reset the state if the focus lock changes. This is guaranteed to be true the first time.
	if lastState.lastFocusLock ~= nextProps.focusLock then
		debugPrint("  Resetting focus")
		local focusID = nextProps.identifier(nextProps.itemList[nextProps.focusIndex])
		return {
			listSize = listSize,
			trail = {index=nextProps.focusIndex, id=focusID},
			anchor = {index=nextProps.focusIndex, id=focusID},
			lead = {index=nextProps.focusIndex, id=focusID},
			padding = 0,
			size = 0,
			lastFocusLock = nextProps.focusLock,
		}
	end

	local trailIndex, anchorIndex, leadIndex = findNewIndices(nextProps, lastState)
	debugPrint("  Trailing index moved from", lastState.trail.index, "to", trailIndex)
	debugPrint("  Anchor index moved from", lastState.anchor.index, "to", anchorIndex)
	debugPrint("  Leading index moved from", lastState.lead.index, "to", leadIndex)

	-- There are 8 possibilities here as any combination of these could be deleted. Also, we can't use findIndexAt
	-- here since that requires access to the children's measurements.
	if not anchorIndex then
		if leadIndex and trailIndex then
			-- Estimate that the new anchor is proportionally the same distance from the lead and trail indices.
			if leadIndex == trailIndex then
				-- Guard against divide by zero.
				anchorIndex = leadIndex
			else
				local oldRatio = (lastState.anchor.index - lastState.lead.index)
					/ (lastState.trail.index - lastState.lead.index)
				anchorIndex = Round.nearest((trailIndex - leadIndex) * oldRatio + leadIndex)
				anchorIndex = math.min(math.max(anchorIndex, 1), listSize)
			end
		elseif leadIndex then
			-- Given only the new leading index, estimate that the new anchor is the same distance away as it was.
			anchorIndex = leadIndex + lastState.anchor.index - lastState.lead.index
			anchorIndex = math.min(math.max(anchorIndex, 1), listSize)
		elseif trailIndex then
			-- Given only the new trailing index, estimate that the new anchor is the same distance away as it was.
			anchorIndex = trailIndex + lastState.anchor.index - lastState.trail.index
			anchorIndex = math.min(math.max(anchorIndex, 1), listSize)
		else
			-- Everything is gone. Just reuse the same index if that's still within the bounds of the list.
			anchorIndex = math.min(math.max(lastState.anchor.index, 1), listSize)
		end
		debugPrint("  Anchor index moved to", anchorIndex)
	end

	-- If the leading and trailing indices haven't been worked out yet, estimate that the new ones should be the
	-- same distance from the anchor as the old ones were.
	if not trailIndex then
		trailIndex = anchorIndex + lastState.trail.index - lastState.anchor.index
		trailIndex = math.min(math.max(trailIndex, 1), listSize)
		debugPrint("  Trailing index moved to", trailIndex)
	end
	if not leadIndex then
		leadIndex = anchorIndex + lastState.lead.index - lastState.anchor.index
		leadIndex = math.min(math.max(leadIndex, 1), listSize)
		debugPrint("  Leading index moved to", leadIndex)
	end

	local trailID = nextProps.identifier(nextProps.itemList[trailIndex])
	local anchorID = nextProps.identifier(nextProps.itemList[anchorIndex])
	local leadID = nextProps.identifier(nextProps.itemList[leadIndex])

	return {
		listSize = listSize,
		trail = {index=trailIndex, id=trailID},
		anchor = {index=anchorIndex, id=anchorID},
		lead = {index=leadIndex, id=leadID},
	}
end

function Scroller:init()
	debugPrint("init")

	-- Only self:getRef() should access this.
	self._ref = Roact.createRef()

	self.scrollDebounce = false
	self.sizeDebounce = true

	self.onScroll = function(rbx)
		debugPrint("onScroll")
		debugPrint("  CanvasPosition is", rbx.CanvasPosition)
		if self.scrollDebounce then
			debugPrint("  Debouncing scroll")
			return
		end

		local delta, newState = self:recalculateAnchor()
		self.scrollingBackward = delta < 0
		self.scrollingForward = delta > 0
		debugPrint("  Delta is", delta)

		if not Cryo.isEmpty(newState) then
			self:setState(newState)
		end

		-- Handle any passed in scroll callback.
		if self.props[Roact.Change.CanvasPosition] then
			self.props[Roact.Change.CanvasPosition](rbx)
		end
	end

	self.onResize = function(rbx)
		debugPrint("onResize")
		local size = self:measure(rbx.AbsoluteSize)
		local pos = self:measure(rbx.AbsolutePosition)

		self.itemPadding = self.props.padding.Scale * size + self.props.padding.Offset
		if isReverse[self.props.orientation] then
			self.relativeAnchorLocation = self.props.anchorLocation.Scale * size + self.props.anchorLocation.Offset
		else
			self.relativeAnchorLocation = (1 - self.props.anchorLocation.Scale) * size
				- self.props.anchorLocation.Offset
		end
		self.absoluteAnchorLocation = self.relativeAnchorLocation + pos
		self.mountAboveAnchor = self.relativeAnchorLocation + self.props.mountingBuffer
		self.mountBelowAnchor = size - self.relativeAnchorLocation + self.props.mountingBuffer

		-- Handle any passed in resize callback.
		if self.props[Roact.Change.AbsoluteSize] then
			self.props[Roact.Change.AbsoluteSize](rbx)
		end

		if not self.state.ready then
			debugPrint("  Setting initial anchor position to", self.relativeAnchorLocation)
			self.anchorFramePosition = 0
			self.anchorCanvasPosition = self.relativeAnchorLocation

			coroutine.wrap(function()
				RunService.Heartbeat:Wait()
				self:setState({
					ready = true
				})

				-- This should only be set by tests.
				if self.props[NotifyReady] then
					self.props[NotifyReady]:Fire()
				end
			end)()
		else
			self:moveToAnchor()
			self:setState({})  -- Force a rerender.
		end
	end

	self.onContentResize = function()
		debugPrint("onContentResize")

		if self.sizeDebounce or not self.state.ready then
			debugPrint("  Skipping onContentResize")
			return
		end

		self:moveToAnchor()
		self:setState({})  -- Force a rerender.
	end

	self.anchorCanvasPosition = 0
	self.anchorFramePosition = 0

	self.metadata = {}
	self.pools = {}
	self.refpool = {}

	self.scrollingBackward = false
	self.scrollingForward = false

	-- Store the list of props to not pass on to the underlying scrolling frame.
	self.propsToClear = {}
	for k, _ in pairs(Scroller.defaultProps) do
		self.propsToClear[k] = Cryo.None
	end

	-- This will get updated shortly, but one render will happen before state.ready is set
	self.state = {
		ready = false,
		lastFocusLock = nil,
		padding = 0,
		size = 0,
	}
end

-- Find which element is currently closest to the anchor position.
function Scroller:recalculateAnchor()
	debugPrint("recalculateAnchor")

	-- Find the index of the element at the appropriate position
	local index = self:findIndexAt(
		self:absoluteToCanvasPosition(self.absoluteAnchorLocation), self.state.anchor.index, false)

	local delta
	if index == self.state.anchor.index then
		debugPrint("  Current anchor still works")
		return 0, {}
	elseif index < self.state.anchor.index then
		delta = -1
	else
		delta = 1
	end

	debugPrint("  New anchor at index", index)

	-- Store the new anchor's details
	self.anchorCanvasPosition = self:getAnchorCanvasFromIndex(index)
	self.anchorFramePosition = self:getAnchorFrameFromIndex(index)
	debugPrint("  New anchor at canvas position", self.anchorCanvasPosition)
	debugPrint("  New anchor at frame position", self.anchorFramePosition)
	return delta, {
		anchor = {index=index, id=self:getID(index)},
	}
end

-- Move all the rendered elements up or down to put the anchor back where it was.
function Scroller:resetAnchorPosition()
	debugPrint("resetAnchorPosition")
	debugPrint("  Anchor index is", self.state.anchor.index)
	local offset = self:getAnchorCanvasPosition()
	debugPrint("  Anchor is at", offset)
	debugPrint("  Anchor should be at", self.anchorCanvasPosition)
	local diff = math.floor(self.anchorCanvasPosition - offset + 0.5)
	if diff ~= 0 then
		debugPrint("  Changing padding from", self.state.padding, "to", (self.state.padding + diff))
		return {padding = self.state.padding + diff}
	else
		return {}
	end
end

-- Get the current padding from the UIPadding child.
function Scroller:getCurrentPadding()
	local pad = self:getCurrent().padding
	-- Only one of these will be non-zero
	return pad.PaddingTop.Offset + pad.PaddingLeft.Offset
end

-- Move the top and bottom of the range to be rendered up and down to make sure enough things are being rendered.
function Scroller:recalculateBounds(trimTrailing, trimLeading)
	debugPrint("recalculateBounds")
	debugPrint("  Leading index was", self.state.lead.index)
	debugPrint("  Trailing index was", self.state.trail.index)

	local anchorPos = self:getAnchorCanvasPosition()
	local mountTop = anchorPos - self.mountAboveAnchor
	local mountBottom = anchorPos + self.mountBelowAnchor
	debugPrint("  Target for top at", mountTop)
	debugPrint("  Target for bottom at", mountBottom)

	local topIndex = self:findIndexAt(mountTop, nil, true)
	debugPrint("  Found new top index at", topIndex)
	local bottomIndex = self:findIndexAt(mountBottom, nil, true)
	debugPrint("  Found new bottom index at", bottomIndex)

	local leadIndex = math.max(topIndex, bottomIndex)
	if leadIndex < self.state.lead.index and not trimLeading then
		leadIndex = self.state.lead.index
	end

	local trailIndex = math.min(topIndex, bottomIndex)
	if trailIndex > self.state.trail.index and not trimTrailing then
		trailIndex = self.state.trail.index
	end

	if trailIndex < self.state.trail.index or leadIndex > self.state.lead.index then
		debugPrint("  Changing leading index to", leadIndex)
		debugPrint("  Changing trailing index to", trailIndex)
		return {
			trail = {index=trailIndex, id=self:getID(trailIndex)},
			lead = {index=leadIndex, id=self:getID(leadIndex)},
		}
	else
		return {}
	end
end

-- Find the index of the element that overlaps the given canvas-relative position.
function Scroller:findIndexAt(targetPos, hintIndex, extrapolate)
	debugPrint("  findIndexAt")
	-- Get the distance from the hinted index or the anchor.
	local currentIndex = hintIndex or self.state.anchor.index
	local currentDist = self:distanceToPosition(currentIndex, targetPos)
	debugPrint("    Searching from index", currentIndex)
	debugPrint("    Position is", currentDist, "from", targetPos)
	if currentDist == 0 then
		return currentIndex
	end

	-- Get the distance from one end of the list.
	local nextIndex = (currentDist < 0) and self.state.trail.index or self.state.lead.index
	debugPrint("    Nearest end at", nextIndex)
	if currentIndex == nextIndex then
		debugPrint("    Hint index already at end")
		-- If the target position lies outside of the loaded elements.
		if currentIndex + currentDist < self.state.trail.index
			or currentIndex + currentDist > self.state.lead.index then
			debugPrint("    Target out of bounds")
			if not extrapolate then
				-- Do not extrapolate. Return the closest loaded element.
				return currentIndex
			end

			-- Extrapolate using the estimated item size.
			local delta = Round.awayFromZero(currentDist / self.props.estimatedItemSize)
			debugPrint("    Estimating target at", delta, "from end")
			return math.min(math.max(currentIndex + delta, 1), self.state.listSize)
		end
	else
		local nextDist = self:distanceToPosition(nextIndex, targetPos)
		debugPrint("    End is", nextDist, "from target")
		if nextDist == 0 then
			return nextIndex
		end

		-- If the target position lies outside of the loaded elements.
		if currentDist * nextDist > 0 then
			debugPrint("    Target out of bounds")
			if not extrapolate then
				-- Do not extrapolate. Return the closest loaded element.
				return nextIndex
			end

			-- Extrapolate using the estimated item size.
			local delta = Round.awayFromZero(nextDist / self.props.estimatedItemSize)
			debugPrint("    Estimating target at", delta, "from end")
			return math.min(math.max(nextIndex + delta, 1), self.state.listSize)
		end

		-- Jump to the approximate location of the target based on the distance from current and next.
		local totalDist = math.abs(currentDist) + math.abs(nextDist)
		local indexCount = math.abs(currentIndex - nextIndex)
		currentIndex = currentIndex + Round.nearest(indexCount * currentDist / totalDist)
		currentDist = self:distanceToPosition(currentIndex, targetPos)
		debugPrint("    Interpolated index is", currentIndex)
		debugPrint("    Distance from interpolated index is", currentDist)
	end

	-- Linear search from best guess index.
	while currentDist ~= 0 do
		if currentDist < 0 then
			currentIndex = currentIndex - 1
		else
			currentIndex = currentIndex + 1
		end
		currentDist = self:distanceToPosition(currentIndex, targetPos)
		debugPrint("    Distance after step is", currentDist)
	end

	return currentIndex
end

-- Expand the size of the scrolling frame's canvas to make sure everything still fits.
function Scroller:expandCanvas(newState)
	debugPrint("expandCanvas")
	local reverse = isReverse[self.props.orientation]
	local bottomIndex = reverse and self.state.trail.index or self.state.lead.index

	local size = self.state.size
	local newPadding = newState.padding or self.state.padding
	local oldPadding = self:getCurrentPadding()

	local bottomPos = self:getChildCanvasPosition(bottomIndex)
		+ self:getChildSize(bottomIndex) - (oldPadding - newPadding)
	debugPrint("  Bottom of bottom child is", bottomPos)
	debugPrint("  Canvas size is", self.state.size)
	debugPrint("  Canvas bottom should be", bottomPos + self.props.dragBuffer)
	if bottomPos > self.state.size - self.props.dragBuffer then
		-- Plus footer
		size = bottomPos + self.props.dragBuffer
		debugPrint("  Expanding canvas bottom to size", size)
	end

	debugPrint("  Padding is", newPadding)
	debugPrint("  Padding should be", self.props.dragBuffer)
	if newPadding < self.props.dragBuffer then
		-- Minus header
		local diff = newPadding - self.props.dragBuffer
		size = size - diff
		self.anchorCanvasPosition = self.anchorCanvasPosition - diff
		newPadding = self.props.dragBuffer
		debugPrint("  Expanding canvas top to size", size)
		debugPrint("  Shifting anchor to", self.anchorCanvasPosition)
		debugPrint("  Padding is now", newPadding)
	end

	if size ~= self.state.size or newPadding ~= self.state.padding then
		debugPrint("  Changing size from", self.state.size, "to", size)
		debugPrint("  Changing padding from", self.state.padding, "to", newPadding)
		return {
			size = size,
			padding = newPadding,
		}
	else
		return {}
	end
end

-- Try and get the canvas as close to correct as possible this rendering pass.
function Scroller:adjustCanvas(trimTrailing, trimLeading)
	debugPrint("adjustCanvas")

	local newState = Cryo.Dictionary.join(
		self:resetAnchorPosition(),
		self:recalculateBounds(trimTrailing, trimLeading)
	)

	if not newState.trail and not newState.lead then
		newState = Cryo.Dictionary.join(newState, self:expandCanvas(newState))
	end

	if Cryo.isEmpty(newState) then
		return false
	end

	self:setState(newState)
	return true
end

-- Move the cavnas position so that the anchor element is in the same place on the screen.
function Scroller:moveToAnchor()
	debugPrint("moveToAnchor")
	local currentPos = self:getAnchorFramePosition()
	debugPrint("  Anchor was at frame position", self.anchorFramePosition)
	debugPrint("  Anchor is currently at frame position", currentPos)
	self:setScroll(self:measure(self:getCurrent().CanvasPosition) + currentPos - self.anchorFramePosition)
end

-- Call loadNext and loadPrevious if needed.
function Scroller:loadMore()
	debugPrint("loadMore")
	if self.props.loadPrevious and self.state.trail.index <= self.props.loadingBuffer then
		debugPrint("  Calling loadPrevious")
		self.props.loadPrevious()
	end
	if self.props.loadNext and self.state.lead.index > self.state.listSize - self.props.loadingBuffer then
		debugPrint("  Calling loadNext")
		self.props.loadNext()
	end
end

-- Set the current canvas position according to Orientation without calling onScroll.
function Scroller:setScroll(pos)
	self.scrollDebounce = true
	debugPrint("    Scrolling to", pos)
	self:getCurrent().CanvasPosition = isVertical[self.props.orientation]
		and Vector2.new(self:getCurrent().CanvasPosition.X, pos)
		or Vector2.new(pos, self:getCurrent().CanvasPosition.Y)
	self.scrollDebounce = false
end

-- Returns the signed distance from the element to the given canvas-relative position, or 0 if the element overlaps
-- it. The sign of the distance is relative to the list indices. For this distance calculation, the padding between
-- elements is considered part of the current element. Returns nil if the element is not currently rendered.
function Scroller:distanceToPosition(index, pos)
	local child = self:getRbx(index)
	if not child then
		return nil
	end

	local childTop = self:absoluteToCanvasPosition(self:measure(child.AbsolutePosition)) - self.itemPadding
	local childBottom = childTop + self:measure(child.AbsoluteSize) + 2 * self.itemPadding

	if pos < childTop then
		return (pos - childTop) * direction[self.props.orientation]
	elseif pos > childBottom then
		return (pos - childBottom) * direction[self.props.orientation]
	else
		return 0
	end
end

-- Get the canvas-relative position of the current anchor element.
function Scroller:getAnchorCanvasPosition()
	return self:getAnchorCanvasFromIndex(self.state.anchor.index)
end

function Scroller:getAnchorCanvasFromIndex(index)
	local scale = self.props.anchorLocation.Scale
	if not isReverse[self.props.orientation] then
		scale = 1 - scale
	end

	return Round.nearest(self:getChildCanvasPosition(index) + scale * self:getChildSize(index))
end

-- Get the frame-relative position of the current anchor element.
function Scroller:getAnchorFramePosition()
	return self:getAnchorFrameFromIndex(self.state.anchor.index)
end

function Scroller:getAnchorFrameFromIndex(index)
	local scale = self.props.anchorLocation.Scale
	if not isReverse[self.props.orientation] then
		scale = 1 - scale
	end

	return Round.nearest(self:getChildFramePosition(index) + scale * self:getChildSize(index))
		- self.relativeAnchorLocation
end

-- Convert an AbsolutePosition to a position relative to the top-left corner of the canvas.
function Scroller:absoluteToCanvasPosition(position)
	local current = self:getCurrent()
	local canvas = current.CanvasPosition
	local absolute = current.AbsolutePosition
	return position + self:measure(canvas) - self:measure(absolute)
end

-- Convert an AbsolutePosition to a position relative to the top-left corner of the scrolling frame.
function Scroller:absoluteToFramePosition(position)
	local current = self:getCurrent()
	local absolute = current.AbsolutePosition
	return position - self:measure(absolute)
end

-- Get the canvas-relative position of the element at the specified index.
function Scroller:getChildCanvasPosition(index)
	local current = self:getRbx(index)
	return current and self:absoluteToCanvasPosition(self:measure(current.AbsolutePosition)) or 0
end

-- Get the frame-relative position of the element at the specified index.
function Scroller:getChildFramePosition(index)
	local current = self:getRbx(index)
	return current and self:absoluteToFramePosition(self:measure(current.AbsolutePosition)) or 0
end

-- Get the absolute size of the element at the specified index.
function Scroller:getChildSize(index)
	local current = self:getRbx(index)
	return current and self:measure(current.AbsoluteSize) or 0
end

-- Get the ID of an element at a specific index.
function Scroller:getID(index)
	return self.props.identifier(self.props.itemList[index])
end

-- Create or update a metadata entry for the given element. This can't use
-- self.props in willUpdate as any props it uses could be out of date.
function Scroller:updateMetadata(id, item, props)
	local meta = self.metadata[id]
	if not meta then
		meta = {}
		self.metadata[id] = meta
	end

	if not meta.name then
		local elem = props.renderItem(item, false)
		local class = tostring(elem.component)
		local pool = self:getKeyPool(class)
		meta.name = pool:get()
	end

	if not self.refpool[meta.name] then
		self.refpool[meta.name] = Roact.createRef()
	end
	meta.ref = self.refpool[meta.name]
end

-- Clear the metadata for an element that is being unloaded.
function Scroller:clearMetadata(id)
	local meta = self.metadata[id]
	if not meta then
		return
	end

	meta.name:release()
	meta.name = nil
	meta.ref = nil
end

-- Get the key pool for the given class of elements, or create a new one if that doesn't exist yet.
function Scroller:getKeyPool(class)
	if not self.pools[class] then
		self.pools[class] = KeyPool.new(class)
	end
	return self.pools[class]
end

-- Get the metadata info for the element at the specified index.
function Scroller:getMetadata(index)
	return self.metadata[self:getID(index)]
end

-- Get the current Roblox instance from the ref stored in the metadata.
function Scroller:getRbx(index)
	local meta = self:getMetadata(index)
	return meta and meta.ref and meta.ref.current
end

-- Return X or Y depending on the orientation.
function Scroller:measure(vecOrUDim2)
	return isVertical[self.props.orientation] and vecOrUDim2.Y or vecOrUDim2.X
end

-- Get the current ScrollingFrame instance.
function Scroller:getCurrent()
	return self:getRef().current
end

function Scroller:getRef()
	-- Make sure to get the ref from props if that exists.
	return self.props[Roact.Ref] or self._ref
end

return Scroller
