local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScroll = require(script.Parent.AutoScroll)
local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local PaginationEdges = require(script.Parent.PaginationEdges)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local Types = require(Src.Core.Types)
local createInitialScrollPosition = require(script.Parent.InitialScrollPosition)

export type ViewportState = {
	scrollOffset: number,
	viewportLength: number,
}

export type Options = {
	getItemCount: () -> number,
	getScrollState: () -> Types.ScrollState,
	getScrollOffsetForItem: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> number,
	applyScrollAnchorOffset: (offset: number) -> number,
	getViewportState: () -> ViewportState?,
	getInitialScrollAlignment: () -> ScrollAlignment.ScrollAlignment?,
	getAutoScrollPolicy: () -> AutoScroll.Policy?,
	getStartReachedThreshold: () -> number?,
	getOnStartReached: () -> (() -> ())?,
	getOnEndReached: () -> (() -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
}

export type ScrollPolicyCoordinator = {
	checkEdges: (rearmAfterStructureChange: boolean?) -> (),
	onContentLengthChanged: (contentLength: number) -> (),
	onDataSourceChanged: (changeBatch: Types.DataSourceChangeBatch, before: Types.ScrollStateBeforeChange) -> (),
	onDataSourceReplaced: () -> (),
	onViewportChanged: () -> (),
	onScrollOffsetChanged: () -> (),
}

local function createScrollPolicyCoordinator(options: Options): ScrollPolicyCoordinator
	local initialScrollPosition = createInitialScrollPosition()
	local autoScroll = AutoScroll.create()
	local paginationEdges = PaginationEdges.create()

	local function applyScrollAnchor(offset: number)
		options.applyScrollAnchorOffset(offset)
	end

	local function updateAutoScrollFromCurrentOffset()
		local scrollState = options.getScrollState()
		autoScroll.onScrollOffsetChanged(scrollState.atEnd, options.getAutoScrollPolicy() == AutoScrollPolicy.WhenAtEnd)
	end

	local function checkEdges(rearmAfterStructureChange: boolean?)
		local onStartReached = options.getOnStartReached()
		local onEndReached = options.getOnEndReached()
		if onStartReached == nil and onEndReached == nil then
			return
		end
		local viewportState = options.getViewportState()
		if viewportState == nil then
			return
		end
		local scrollState = options.getScrollState()
		if options.getItemCount() > 0 and scrollState.contentLength == 0 then
			return
		end
		local result = paginationEdges.check({
			scrollOffset = viewportState.scrollOffset,
			viewportLength = viewportState.viewportLength,
			contentLength = scrollState.contentLength,
			startThreshold = options.getStartReachedThreshold() or 0,
			atEnd = scrollState.atEnd,
			canReachStart = onStartReached ~= nil,
			canReachEnd = onEndReached ~= nil,
			rearmAfterStructureChange = rearmAfterStructureChange,
		})
		if result.startReached then
			(onStartReached :: () -> ())()
		end
		if result.endReached then
			(onEndReached :: () -> ())()
		end
	end

	local function onContentLengthChanged(contentLength: number)
		local viewportState = options.getViewportState()
		if viewportState ~= nil then
			local candidate = autoScroll.getContentLengthCorrection(contentLength, viewportState.viewportLength)
			if candidate ~= nil then
				applyScrollAnchor(candidate)
			end
		end
		if options.onContentLengthChanged ~= nil then
			options.onContentLengthChanged(contentLength)
		end
	end

	local function onDataSourceChanged(changeBatch: Types.DataSourceChangeBatch, before: Types.ScrollStateBeforeChange)
		local initialOffset = initialScrollPosition.onDataSourceChange(
			options.getItemCount(),
			options.getInitialScrollAlignment(),
			options.getScrollOffsetForItem
		)
		if initialOffset ~= nil then
			applyScrollAnchor(initialOffset)
		end
		local decision =
			autoScroll.onDataSourceChanged(AutoScroll.resolveTarget(options.getAutoScrollPolicy(), changeBatch, before))
		if decision ~= false then
			local viewportState = options.getViewportState()
			if viewportState ~= nil then
				applyScrollAnchor(
					AutoScroll.getTargetOffset(
						decision,
						options.getScrollState().contentLength,
						viewportState.viewportLength
					)
				)
			end
		end
		checkEdges(PaginationEdges.hasStructuralChange(changeBatch))
	end

	local function onDataSourceReplaced()
		applyScrollAnchor(
			initialScrollPosition.onDataSourceReplaced(
				options.getItemCount(),
				options.getInitialScrollAlignment(),
				options.getScrollOffsetForItem
			)
		)
		updateAutoScrollFromCurrentOffset()
	end

	local function onViewportChanged()
		local itemCount = options.getItemCount()
		-- Inert Virtualizers can observe their committed viewport before activation
		-- has initialized Layout content. Do not consume initial alignment against
		-- that transient empty model; the activation DataSource change will apply it.
		if itemCount == 0 or options.getScrollState().contentLength > 0 then
			local offset = initialScrollPosition.onViewportChanged(
				itemCount,
				options.getInitialScrollAlignment(),
				options.getScrollOffsetForItem
			)
			if offset ~= nil then
				applyScrollAnchor(offset)
			end
		end
		updateAutoScrollFromCurrentOffset()
	end

	local function onScrollOffsetChanged()
		updateAutoScrollFromCurrentOffset()
	end

	return {
		checkEdges = checkEdges,
		onContentLengthChanged = onContentLengthChanged,
		onDataSourceChanged = onDataSourceChanged,
		onDataSourceReplaced = onDataSourceReplaced,
		onViewportChanged = onViewportChanged,
		onScrollOffsetChanged = onScrollOffsetChanged,
	}
end

return createScrollPolicyCoordinator
