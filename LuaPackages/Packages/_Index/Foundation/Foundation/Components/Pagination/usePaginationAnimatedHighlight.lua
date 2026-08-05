--[[
	Pagination-specific animated highlight. Similar to Utility.useAnimatedHighlight (Tabs,
	SegmentedControl), but kept separate because page slots reflow when ellipses appear or
	disappear — layout can change on the same page and during page transitions. The transition
	lock below defers instant layout snaps until the ease animation finishes so the highlight
	does not jump mid-tween. Also exposes isVisible for unmeasured slots and wide pages (>999)
	that render their own checked background instead of this overlay.
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local useTokens = require(Foundation.Providers.Style.useTokens)

local Wrappers = require(Foundation.Utility.Wrappers)
local Connection = Wrappers.Connection
local Instance = Wrappers.Instance
local Signal = Wrappers.Signal

local paginationSlotsUtils = require(script.Parent.paginationSlotsUtils)
type PageSlot = paginationSlotsUtils.PageSlot

type GuiObjectRef = React.RefObject<GuiObject?>
type HighlightGoal = ReactOtter.Goal

local function usePaginationAnimatedHighlight(
	activeItemId: string?,
	containerRef: GuiObjectRef,
	itemRefs: { [string]: GuiObjectRef },
	slotSize: PaginationSize,
	pageSlots: { PageSlot }
)
	local tokens = useTokens()
	local easeDuration = tokens.Time.Time_100

	-- Output bindings
	local highlightPosition: React.Binding<number>, setHighlightPosition: (HighlightGoal) -> () =
		ReactOtter.useAnimatedBinding(0)

	local highlightWidth: React.Binding<number>, setHighlightWidth: (HighlightGoal) -> () =
		ReactOtter.useAnimatedBinding(0)

	local activeItemHeight, setActiveItemHeight = React.useBinding(0)
	local isVisible, setIsVisible = React.useBinding(false)

	-- Transition lock: defer instant syncs while a page-change animation runs
	local previousItemId = React.useRef(activeItemId)
	local blockInstantSync = React.useRef(false)
	local pendingInstantSync = React.useRef(false)
	local transitionUnlockThread = React.useRef(nil :: thread?)
	local flushInstantSyncRef = React.useRef(nil :: (() -> ())?)

	local function resetTransitionState(clearPending: boolean)
		if transitionUnlockThread.current then
			task.cancel(transitionUnlockThread.current)
			transitionUnlockThread.current = nil
		end
		blockInstantSync.current = false
		if clearPending then
			pendingInstantSync.current = false
		end
	end

	local scheduleTransitionUnlock = React.useCallback(function()
		if transitionUnlockThread.current then
			task.cancel(transitionUnlockThread.current)
		end

		blockInstantSync.current = true
		transitionUnlockThread.current = task.delay(easeDuration, function()
			transitionUnlockThread.current = nil
			blockInstantSync.current = false

			if pendingInstantSync.current then
				pendingInstantSync.current = false
				local flushInstantSync = flushInstantSyncRef.current
				if flushInstantSync then
					flushInstantSync()
				end
			end
		end)
	end, { easeDuration })

	local updateHighlight = React.useCallback(function(activeItemRef: GuiObjectRef, sameItem: boolean?): boolean
		-- Refs not mounted yet (initial render or slot swap in progress)
		if activeItemRef.current and containerRef.current then
			local activeItemPosition = activeItemRef.current.AbsolutePosition.X
			local currentContainerPosition = containerRef.current.AbsolutePosition.X
			local positionOffset = activeItemPosition - currentContainerPosition
			local itemSize = activeItemRef.current.AbsoluteSize.X
			local itemHeight = activeItemRef.current.AbsoluteSize.Y

			-- Slot exists but has not been laid out yet
			if itemSize <= 0 or itemHeight <= 0 then
				setIsVisible(false)
				return false
			end

			-- Page-change animation in progress; queue one snap for when it finishes
			if sameItem and blockInstantSync.current then
				pendingInstantSync.current = true
				return false
			end

			-- Same page, layout moved or resized: snap without animating
			if sameItem then
				setHighlightWidth(ReactOtter.instant(itemSize))
				setHighlightPosition(ReactOtter.instant(positionOffset))
			else
				-- New page: ease to the target and block instant syncs until duration elapses
				pendingInstantSync.current = false
				scheduleTransitionUnlock()
				local easeConfig = {
					easingStyle = Enum.EasingStyle.Linear,
					duration = easeDuration,
				} :: Otter.EaseOptions
				setHighlightPosition(ReactOtter.ease(positionOffset, easeConfig))
				setHighlightWidth(ReactOtter.ease(itemSize, easeConfig))
			end

			setActiveItemHeight(itemHeight)
			setIsVisible(true)
			return true
		end

		-- Active item or container ref is nil
		setIsVisible(false)
		return false
	end, { easeDuration, containerRef, scheduleTransitionUnlock } :: { unknown })

	-- Instant re-sync for the current page (used by layout signals and the deferred flush)
	local syncSameItemHighlight = React.useCallback(function()
		if activeItemId then
			local activeItemRef = itemRefs[activeItemId]
			if activeItemRef then
				updateHighlight(activeItemRef, true)
			end
		end
	end, { activeItemId, itemRefs, updateHighlight } :: { unknown })

	-- Active page or slot set changed
	React.useLayoutEffect(function()
		if activeItemId then
			local activeItemRef = itemRefs[activeItemId]
			local isSameItem = activeItemId == previousItemId.current

			if not isSameItem then
				resetTransitionState(true)
			end

			if activeItemRef and activeItemRef.current and containerRef.current then
				updateHighlight(activeItemRef, isSameItem)
			else
				setIsVisible(false)
			end

			previousItemId.current = activeItemId
		else
			setIsVisible(false)
			previousItemId.current = nil
		end
	end, { activeItemId, itemRefs, updateHighlight, slotSize, pageSlots } :: { unknown })

	-- Layout moved or resized while the active page stayed the same
	React.useEffect(function()
		if activeItemId then
			local activeItemRef = itemRefs[activeItemId]

			if activeItemRef and activeItemRef.current and containerRef.current then
				local sizeConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(activeItemRef.current, "AbsoluteSize"),
					syncSameItemHighlight
				)
				local positionConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(activeItemRef.current, "AbsolutePosition"),
					syncSameItemHighlight
				)
				local containerSizeConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(containerRef.current, "AbsoluteSize"),
					syncSameItemHighlight
				)
				local containerPositionConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(containerRef.current, "AbsolutePosition"),
					syncSameItemHighlight
				)

				return function()
					Connection.Disconnect(sizeConnection)
					Connection.Disconnect(positionConnection)
					Connection.Disconnect(containerSizeConnection)
					Connection.Disconnect(containerPositionConnection)
				end
			end
		end

		return function() end
	end, { activeItemId, itemRefs, syncSameItemHighlight } :: { unknown })

	-- Pick up any sync deferred by the transition lock
	React.useEffect(function()
		flushInstantSyncRef.current = syncSameItemHighlight
	end, { syncSameItemHighlight })

	React.useEffect(function()
		return function()
			if transitionUnlockThread.current then
				task.cancel(transitionUnlockThread.current)
				transitionUnlockThread.current = nil
			end
		end
	end, {})

	return {
		activeItemHeight = activeItemHeight,
		highlightPosition = highlightPosition,
		highlightWidth = highlightWidth,
		isVisible = isVisible,
		updateHighlight = updateHighlight,
	}
end

return usePaginationAnimatedHighlight
