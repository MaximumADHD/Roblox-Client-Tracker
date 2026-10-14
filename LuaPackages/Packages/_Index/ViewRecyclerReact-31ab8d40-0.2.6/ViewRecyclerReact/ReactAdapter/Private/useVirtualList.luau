local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)

local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local RecyclingScopeContext = require(script.Parent.RecyclingScopeContext)
local RecyclingViewportContext = require(script.Parent.RecyclingViewportContext)
local Signals = require(Root.Parent.Signals)
local useCompositionPlacement = require(script.Parent.useCompositionPlacement)
local VirtualListShell = require(script.Parent.VirtualListShell)

local ScrollingFrameVirtualizer = Roblox.Internal.ScrollingFrameVirtualizer

local function assignRef<T>(ref: any, value: T?)
	if ref == nil then
		return
	end
	if type(ref) == "function" then
		ref(value)
	else
		ref.current = value
	end
end

local function toCorePinnedItem(item)
	if item == nil then
		return nil
	end
	return {
		key = item.key,
		value = item.value,
		itemViewType = item.itemType,
	}
end

local function listHostConfiguration(props)
	return {
		axis = props.axis,
		dataSource = props.dataSource,
		layout = props.layout,
		initialScrollAlignment = props.initialScrollAlignment,
		autoScrollOnChange = props.autoScrollOnChange,
		startReachedThreshold = props.startReachedThreshold,
		onStartReached = props.onStartReached,
		onEndReached = props.onEndReached,
		onViewportChanged = props.onViewportChanged,
		onScrollOffsetChanged = props.onScrollOffsetChanged,
		onContentLengthChanged = props.onContentLengthChanged,
		onVisibleRangeChanged = props.onVisibleRangeChanged,
		onMountedRangeChanged = props.onMountedRangeChanged,
		onDataPrefetchRequested = props.onDataPrefetchRequested,
	}
end

local function hostTarget(internalRef, viewportOverlayRef)
	return {
		scrollingFrame = internalRef.current,
		viewportOverlay = viewportOverlayRef.current,
	}
end

local function corePolicy(props)
	return {
		overscan = props.overscan,
		overscanPolicy = props.overscanPolicy,
		dataPrefetch = props.dataPrefetch,
		contentAlignment = props.contentAlignment,
		endThreshold = props.endReachedThreshold,
		pinnedItems = {
			isItemStickyHeader = props.isItemStickyHeader,
			pinnedStartItem = toCorePinnedItem(props.pinnedStartItem),
			pinnedEndItem = toCorePinnedItem(props.pinnedEndItem),
		},
		preserveScrollPositionOnChange = props.preserveScrollPositionOnChange ~= false,
	}
end

local function committedUpdate(props, target)
	return {
		hostConfiguration = listHostConfiguration(props),
		hostTarget = target,
		corePolicy = corePolicy(props),
	}
end

local function useVirtualList<T>(props: any): VirtualListShell.Props
	local propsRef = React.useRef(props)
	propsRef.current = props

	local recyclingScope = React.useContext(RecyclingScopeContext)
	assert(recyclingScope ~= nil, "VirtualListRenderer requires a RecyclingScope")
	local viewportScope = React.useContext(RecyclingViewportContext)
	local activeState = React.useState(function()
		local active, setActive = Signals.createSignal(false)
		return {
			active = active,
			setActive = setActive,
		}
	end)
	local unregisterViewportRef = React.useRef(nil :: (() -> ())?)
	local internalRef = React.useRef(nil :: ScrollingFrame?)
	local viewportOverlayRef = React.useRef(nil :: Frame?)

	local sharedRecyclingScope = React.useState(function()
		return recyclingScope.root.getScope(recyclingScope.listOptions)
	end)
	React.useEffect(function()
		sharedRecyclingScope.setMaxPoolSize(recyclingScope.listOptions.maxPoolSize)
	end, { sharedRecyclingScope, recyclingScope.listOptions.maxPoolSize })

	local compositionPlacement = useCompositionPlacement(
		recyclingScope.root,
		recyclingScope.listOptions.maxPoolSize,
		recyclingScope.listOptions.diagnostics
	)
	local itemViewConfigurationRef = React.useRef({
		axis = props.axis,
		layout = props.layout,
		compositionPlacement = compositionPlacement,
	})
	itemViewConfigurationRef.current = {
		axis = props.axis,
		layout = props.layout,
		compositionPlacement = compositionPlacement,
	}
	local configureItemView = React.useCallback(function(itemView)
		local configuration = itemViewConfigurationRef.current
		itemView.setStructuralPlacement(configuration.axis, configuration.layout.requiresItemMeasurement())
		itemView.setCompositionPlacement(configuration.compositionPlacement)
	end, {})
	local prepareAssignment = React.useCallback(function(itemView, assignment)
		if assignment ~= nil then
			configureItemView(itemView)
		end
	end, { configureItemView })
	local scrollingFrameVirtualizer: ScrollingFrameVirtualizer.ScrollingFrameVirtualizer<T> = React.useState(function()
		return ScrollingFrameVirtualizer.newForRecyclableViews({
			initialHostConfiguration = listHostConfiguration(propsRef.current),
			initialHostTarget = hostTarget(internalRef, viewportOverlayRef),
			initialCorePolicy = corePolicy(propsRef.current),
			core = {
				-- React may invoke state initializers more than once while checking
				-- render purity. Core construction remains inert until commit.
				recyclingScope = sharedRecyclingScope,
				getItemViewType = function(item, itemIndex)
					local itemType = propsRef.current.itemType
					assert(
						RecyclableViewRegistry.isRegistered(itemType) or type(itemType) == "function",
						"VirtualList: `itemType` must be a Recyclable view type or selector"
					)
					local resolved = if RecyclableViewRegistry.isRegistered(itemType)
						then itemType
						else itemType(item, itemIndex)
					assert(
						RecyclableViewRegistry.isRegistered(resolved),
						"VirtualList: `itemType` selector must return a Recyclable view type"
					)
					return resolved
				end,
				diagnostics = props.diagnostics,
				active = if viewportScope == nil then nil else activeState.active,
			},
			prepareAssignment = prepareAssignment,
			onItemViewAssignmentChanged = function(itemView, assignment)
				if assignment == nil then
					itemView.setCompositionPlacement(nil)
				end
				local instrumentation = propsRef.current._instrumentation
				if instrumentation ~= nil and instrumentation.assignmentChanged ~= nil then
					instrumentation.assignmentChanged(itemView, assignment)
				end
			end,
			onItemViewPresentationChanged = function(itemView, assignment)
				local instrumentation = propsRef.current._instrumentation
				if instrumentation ~= nil and instrumentation.presentationChanged ~= nil then
					instrumentation.presentationChanged(itemView, assignment)
				end
			end,
		})
	end)
	local virtualizer = scrollingFrameVirtualizer
	local synchronization = React.useState(function()
		local lastCommittedProps = propsRef.current
		local lastCommittedHostTarget = hostTarget(internalRef, viewportOverlayRef)
		return {
			synchronize = function(committedProps)
				lastCommittedProps = committedProps
				scrollingFrameVirtualizer.update(committedUpdate(committedProps, lastCommittedHostTarget))
			end,
			refreshHost = function()
				lastCommittedHostTarget = hostTarget(internalRef, viewportOverlayRef)
				scrollingFrameVirtualizer.update(committedUpdate(lastCommittedProps, lastCommittedHostTarget))
			end,
		}
	end)

	React.useLayoutEffect(function()
		return scrollingFrameVirtualizer.connect()
	end, { scrollingFrameVirtualizer } :: { unknown })

	React.useEffect(function()
		return recyclingScope.registerConsumer()
	end, { recyclingScope })

	React.useEffect(function()
		return function()
			local unregister = unregisterViewportRef.current
			if unregister ~= nil then
				unregisterViewportRef.current = nil
				unregister()
			end
		end
	end, {})

	React.useLayoutEffect(
		function()
			for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
				configureItemView(itemView)
			end
		end,
		{
			compositionPlacement,
			configureItemView,
			props.axis,
			props.layout,
			virtualizer,
		} :: { unknown }
	)

	React.useEffect(function()
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
		return function()
			scrollingFrameVirtualizer.destroy()
		end
	end, { scrollingFrameVirtualizer, virtualizer } :: { unknown })

	React.useLayoutEffect(function()
		synchronization.synchronize(props)
	end)

	React.useEffect(function()
		local callback = props.onVisibleRangeChanged
		if callback == nil then
			return
		end
		callback(virtualizer.getSnapshot().visibleRange)
	end, { virtualizer, props.onVisibleRangeChanged } :: { unknown })

	React.useEffect(function()
		local callback = props.onMountedRangeChanged
		if callback == nil then
			return
		end
		callback(virtualizer.getSnapshot().mountedRange)
	end, { virtualizer, props.onMountedRangeChanged } :: { unknown })

	React.useEffect(function()
		local callback = props.onDataPrefetchRequested
		if callback == nil then
			return
		end
		return
	end, { virtualizer, props.onDataPrefetchRequested } :: { unknown })

	React.useEffect(function()
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Refresh })
	end, { virtualizer, props.itemType } :: { unknown })

	React.useEffect(function()
		local handle = {
			scrollToIndex = function(index, options)
				if scrollingFrameVirtualizer.isReady() then
					virtualizer.dispatch({
						type = Core.VirtualizerCommandType.ScrollToIndex,
						index = index,
						alignment = options and options.alignment,
					})
				end
			end,
			scrollToOffset = function(offset)
				return virtualizer.dispatch({ type = Core.VirtualizerCommandType.ScrollToOffset, offset = offset }).result
			end,
			scrollBy = function(delta)
				return virtualizer.dispatch({ type = Core.VirtualizerCommandType.ScrollBy, delta = delta }).result
			end,
			getScrollState = function()
				return virtualizer.query({ type = Core.VirtualizerQueryType.GetScrollState })
			end,
			captureScrollAnchorSnapshot = function()
				return virtualizer.query({ type = Core.VirtualizerQueryType.CaptureScrollAnchorSnapshot })
			end,
			restoreScrollAnchorSnapshot = function(snapshot)
				return virtualizer.dispatch({
					type = Core.VirtualizerCommandType.RestoreScrollAnchorSnapshot,
					snapshot = snapshot,
				}).result
			end,
		}
		assignRef(props.listRef, handle)
		return function()
			assignRef(props.listRef, nil)
		end
	end, { props.listRef, scrollingFrameVirtualizer.isReady, virtualizer } :: { unknown })

	React.useEffect(function()
		assignRef(props.scrollingFrameRef, internalRef.current)
		return function()
			assignRef(props.scrollingFrameRef, nil)
		end
	end, { props.scrollingFrameRef, internalRef } :: { unknown })

	local onScrollingFrameChanged = React.useCallback(
		function(instance: ScrollingFrame?)
			local unregister = unregisterViewportRef.current
			if unregister ~= nil then
				unregisterViewportRef.current = nil
				unregister()
			end
			if instance ~= nil and viewportScope ~= nil then
				unregisterViewportRef.current = viewportScope.register(instance, activeState.setActive)
			end
			synchronization.refreshHost()
		end,
		{
			activeState,
			synchronization.refreshHost,
			viewportScope,
		} :: { unknown }
	)

	local onViewportOverlayChanged = React.useCallback(function(_instance: Frame?)
		synchronization.refreshHost()
	end, { synchronization.refreshHost } :: { unknown })

	return {
		axis = props.axis,
		onScrollingFrameChanged = onScrollingFrameChanged,
		onViewportOverlayChanged = onViewportOverlayChanged,
		internalRef = internalRef,
		viewportOverlayRef = viewportOverlayRef,
		scrollingFrameProps = props.scrollingFrameProps,
		tag = props.tag,
	}
end

return useVirtualList
