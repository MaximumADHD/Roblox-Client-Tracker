local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Roblox = require(Root.Parent.ViewRecyclerRoblox)

local PlacementKind = require(script.Parent.PlacementKind)
local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local RecyclingScopeContext = require(script.Parent.RecyclingScopeContext)
local RecyclingViewportContext = require(script.Parent.RecyclingViewportContext)
local Signals = require(Root.Parent.Signals)
local VirtualListShell = require(script.Parent.VirtualListShell)
local useCompositionPlacement = require(script.Parent.useCompositionPlacement)

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

local function configuration(props, target): Roblox.VirtualizerConfiguration<any, any>
	return {
		scrollingFrame = target.scrollingFrame,
		viewportOverlay = target.viewportOverlay,
		axis = props.axis,
		dataSource = props.dataSource,
		layout = props.layout,
		onStartReached = props.onStartReached,
		onEndReached = props.onEndReached,
		onViewportChanged = props.onViewportChanged,
		onScrollOffsetChanged = props.onScrollOffsetChanged,
		onContentLengthChanged = props.onContentLengthChanged,
		onVisibleRangeChanged = props.onVisibleRangeChanged,
		onMountedRangeChanged = props.onMountedRangeChanged,
		onDataPrefetchRequested = props.onDataPrefetchRequested,
		overscan = props.overscan,
		dataPrefetch = props.dataPrefetch,
		contentAlignment = props.contentAlignment,
		endReachedThreshold = props.endReachedThreshold,
		initialScrollAlignment = props.initialScrollAlignment,
		autoScrollOnChange = props.autoScrollOnChange,
		autoScrollThreshold = props.autoScrollThreshold,
		startReachedThreshold = props.startReachedThreshold,
		isItemStickyHeader = props.isItemStickyHeader,
		pinnedStartItem = toCorePinnedItem(props.pinnedStartItem),
		pinnedEndItem = toCorePinnedItem(props.pinnedEndItem),
		preserveScrollPositionOnChange = props.preserveScrollPositionOnChange,
	}
end

local function hostTarget(internalRef, viewportOverlayRef)
	return {
		scrollingFrame = internalRef.current,
		viewportOverlay = viewportOverlayRef.current,
	}
end

local function useVirtualList<T>(props: any): VirtualListShell.Props
	local committedPropsRef = React.useRef(nil :: any)

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
		sharedRecyclingScope.bind({
			releases = {},
			requests = {},
			capacity = recyclingScope.listOptions.maxPoolSize,
			updateCapacity = true,
		})
	end, { sharedRecyclingScope, recyclingScope.listOptions.maxPoolSize })

	local compositionPlacement = useCompositionPlacement(
		recyclingScope.root,
		recyclingScope.listOptions.maxPoolSize,
		recyclingScope.listOptions.diagnostics
	)
	local runtimeRef = React.useRef(nil :: Roblox.Virtualizer<T>?)
	local synchronization = React.useState(function()
		local lastCommittedProps = props
		return {
			synchronize = function(nextCommittedProps)
				lastCommittedProps = nextCommittedProps
				committedPropsRef.current = nextCommittedProps
				local runtime = runtimeRef.current
				if runtime ~= nil then
					runtime.update(configuration(nextCommittedProps, hostTarget(internalRef, viewportOverlayRef)))
				end
			end,
			refreshHost = function()
				local runtime = runtimeRef.current
				if runtime ~= nil then
					runtime.update(configuration(lastCommittedProps, hostTarget(internalRef, viewportOverlayRef)))
				end
			end,
		}
	end)

	-- The runtime exists only between commit and cleanup, so render never
	-- constructs or subscribes one.
	React.useLayoutEffect(function()
		committedPropsRef.current = props
		local function instrumentation()
			local committedProps = committedPropsRef.current
			return if committedProps == nil then nil else committedProps._instrumentation
		end
		local sinkByItemView: { [any]: any } = setmetatable({}, { __mode = "k" }) :: any
		local function listSink(itemView, sink: Roblox.HostPlacementSink<any, T>)
			local listSink = sinkByItemView[itemView]
			if listSink == nil then
				listSink = table.freeze({
					apply = function(state)
						sink.apply(itemView, state)
					end,
					setMeasurementDependencies = function(dependencies)
						sink.setMeasurementDependencies(itemView, dependencies)
					end,
				})
				sinkByItemView[itemView] = listSink
			end
			return listSink
		end
		local options: any = configuration(props, hostTarget(internalRef, viewportOverlayRef))
		options.recyclingScope = sharedRecyclingScope
		options.getItemViewType = function(item, itemIndex)
			local committedProps = committedPropsRef.current
			local itemType = committedProps.itemType
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
		end
		options.diagnostics = props.diagnostics
		options.active = if viewportScope == nil then nil else activeState.active(false)
		options.presentItemView = function(itemView, state, assignmentChanged, sink)
			itemView.transition(if state == nil
				then nil
				else table.freeze({
					assignment = state.assignment,
					index = state.index,
					destination = table.freeze({
						kind = PlacementKind.List,
						state = state,
						sink = listSink(itemView, sink),
						compositionPlacement = compositionPlacement,
					}),
				}))
			local hooks = instrumentation()
			if assignmentChanged and hooks ~= nil and hooks.assignmentChanged ~= nil then
				hooks.assignmentChanged(itemView, if state == nil then nil else state.assignment)
			end
		end
		options.onItemViewPresentationChanged = function(itemView, assignment)
			local hooks = instrumentation()
			if hooks ~= nil and hooks.presentationChanged ~= nil then
				hooks.presentationChanged(itemView, assignment)
			end
		end
		local runtime = Roblox.createVirtualizer(options)
		runtimeRef.current = runtime
		local disconnectActive: (() -> ())? = nil
		if viewportScope ~= nil then
			local applied = options.active
			disconnectActive = Signals.createEffect(function(scope)
				local active = activeState.active(scope)
				if active ~= applied then
					applied = active
					runtime.setActive(active)
				end
			end)
		end
		return function()
			if disconnectActive ~= nil then
				disconnectActive()
			end
			runtimeRef.current = nil
			runtime.destroy()
		end
	end, { synchronization } :: { unknown })

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

	React.useLayoutEffect(function()
		synchronization.synchronize(props)
	end)

	React.useEffect(function()
		local runtime = runtimeRef.current
		if runtime ~= nil then
			runtime.refreshItemViews()
		end
	end, { props.itemType } :: { unknown })

	React.useEffect(function()
		local function runtime(): Roblox.Virtualizer<T>
			return assert(runtimeRef.current, "VirtualList: list handle used after unmount")
		end
		local handle = {
			scrollToIndex = function(index, options)
				runtime().scrollToIndex(index, options)
			end,
			scrollToOffset = function(offset)
				return runtime().scrollToOffset(offset)
			end,
			scrollToStart = function()
				runtime().scrollToStart()
			end,
			scrollToEnd = function()
				runtime().scrollToEnd()
			end,
			scrollBy = function(delta)
				return runtime().scrollBy(delta)
			end,
			getScrollState = function()
				return runtime().getScrollState()
			end,
			captureScrollAnchorSnapshot = function()
				return runtime().captureScrollAnchorSnapshot()
			end,
			restoreScrollAnchorSnapshot = function(snapshot)
				return runtime().restoreScrollAnchorSnapshot(snapshot)
			end,
		}
		assignRef(props.listRef, handle)
		return function()
			assignRef(props.listRef, nil)
		end
	end, { props.listRef } :: { unknown })

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
