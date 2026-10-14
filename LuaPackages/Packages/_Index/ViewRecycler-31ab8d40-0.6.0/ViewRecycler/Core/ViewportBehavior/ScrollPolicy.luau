-- Scroll-position policy decisions: initial alignment, edge follow, and
-- reached-edge notification. Each event returns the target offset it wants;
-- the caller applies it and reports the settled position back.
local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScroll = require(script.Parent.AutoScroll)
local AutoScrollTarget = require(Src.Core.Enums.AutoScrollTarget)
local PaginationEdges = require(script.Parent.PaginationEdges)
local ReachedThreshold = require(script.Parent.ReachedThreshold)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local Types = require(Src.Core.Types)
local createInitialScrollPosition = require(script.Parent.InitialScrollPosition)

export type Config = {
	initialScrollAlignment: ScrollAlignment.ScrollAlignment?,
	autoScrollOnChange: AutoScroll.Policy?,
	autoScrollThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedEnabled: boolean,
	endReachedEnabled: boolean,
}

export type Context = {
	itemCount: number,
	scrollState: Types.ScrollState,
	getScrollOffsetForItem: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> number,
}

export type ScrollPolicy = {
	configure: (config: Config) -> (),
	contentLengthChanged: (scrollState: Types.ScrollState) -> number?,
	dataChanged: (
		context: Context,
		changeBatch: Types.DataSourceChangeBatch,
		before: Types.ScrollStateBeforeChange
	) -> number?,
	dataReplaced: (context: Context) -> number,
	viewportChanged: (context: Context) -> number?,
	observe: (scrollState: Types.ScrollState) -> (),
	pin: (edge: AutoScrollTarget.AutoScrollTarget) -> (),
	checkEdges: (scrollState: Types.ScrollState, itemCount: number, rearm: boolean) -> (boolean, boolean),
	reachesEdges: () -> boolean,
}

local DEFAULT_AUTO_SCROLL_THRESHOLD = 1

local function validate(config: Config)
	if config.autoScrollThreshold ~= nil then
		ReachedThreshold.validate(config.autoScrollThreshold, "Virtualizer: autoScrollThreshold")
	end
	if config.startReachedThreshold ~= nil then
		ReachedThreshold.validate(config.startReachedThreshold, "Virtualizer: startReachedThreshold")
	end
end

local function createScrollPolicy(initialConfig: Config): ScrollPolicy
	validate(initialConfig)
	local config = initialConfig
	local initialScrollPosition = createInitialScrollPosition()
	local autoScroll = AutoScroll.create()
	local paginationEdges = PaginationEdges.create()

	-- Rows measured after an initial End alignment would otherwise leave the
	-- list short of the end under a callback policy or no policy.
	local function settleInitialEnd(target: number?, itemCount: number): number?
		if target ~= nil and itemCount > 0 and config.initialScrollAlignment == ScrollAlignment.End then
			autoScroll.settleAt(AutoScrollTarget.End)
		end
		return target
	end

	local function followThreshold(viewportLength: number): number
		return ReachedThreshold.resolve(config.autoScrollThreshold, viewportLength, DEFAULT_AUTO_SCROLL_THRESHOLD)
	end

	return {
		configure = function(nextConfig)
			validate(nextConfig)
			config = nextConfig
		end,
		contentLengthChanged = function(scrollState)
			return autoScroll.getSettleOffset(scrollState.contentLength, scrollState.viewportLength)
		end,
		dataChanged = function(context, changeBatch, before)
			local target = initialScrollPosition.onDataSourceChange(
				context.itemCount,
				config.initialScrollAlignment,
				context.getScrollOffsetForItem
			)
			local decision = autoScroll.onDataSourceChanged(
				AutoScroll.resolveTarget(
					config.autoScrollOnChange,
					changeBatch,
					before,
					followThreshold(before.viewportLength)
				)
			)
			if decision ~= false then
				return AutoScroll.getTargetOffset(
					decision,
					context.scrollState.contentLength,
					context.scrollState.viewportLength
				)
			end
			return settleInitialEnd(target, context.itemCount)
		end,
		dataReplaced = function(context)
			return settleInitialEnd(
				initialScrollPosition.onDataSourceReplaced(
					context.itemCount,
					config.initialScrollAlignment,
					context.getScrollOffsetForItem
				),
				context.itemCount
			) :: number
		end,
		viewportChanged = function(context)
			-- An inert list can observe its viewport before activation has
			-- initialized Layout content; initial alignment waits for the
			-- activating data.
			local scrollState = context.scrollState
			if context.itemCount == 0 or scrollState.contentLength > 0 then
				local target = settleInitialEnd(
					initialScrollPosition.onViewportChanged(
						context.itemCount,
						config.initialScrollAlignment,
						context.getScrollOffsetForItem
					),
					context.itemCount
				)
				if target ~= nil then
					return target
				end
				-- A settled edge stays put when the viewport length changes.
				return autoScroll.getSettleOffset(scrollState.contentLength, scrollState.viewportLength)
			end
			return nil
		end,
		observe = function(scrollState)
			autoScroll.onScrollOffsetChanged(
				scrollState,
				followThreshold(scrollState.viewportLength),
				AutoScroll.followedEdge(config.autoScrollOnChange)
			)
		end,
		pin = autoScroll.pin,
		checkEdges = function(scrollState, itemCount, rearm)
			if not config.startReachedEnabled and not config.endReachedEnabled then
				return false, false
			end
			local viewportLength = scrollState.viewportLength
			if viewportLength <= 0 or (itemCount > 0 and scrollState.contentLength == 0) then
				return false, false
			end
			local result = paginationEdges.check({
				scrollOffset = scrollState.scrollOffset,
				viewportLength = viewportLength,
				contentLength = scrollState.contentLength,
				startThreshold = ReachedThreshold.resolve(config.startReachedThreshold, viewportLength, 0),
				atEnd = scrollState.atEnd,
				canReachStart = config.startReachedEnabled,
				canReachEnd = config.endReachedEnabled,
				rearmAfterStructureChange = rearm,
			})
			return result.startReached, result.endReached
		end,
		reachesEdges = function()
			return config.startReachedEnabled or config.endReachedEnabled
		end,
	}
end

return createScrollPolicy
