local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local ScrollingFrameVirtualizer = require(Root.RobloxAdapter.ScrollingFrameVirtualizer)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local function createLayout(selfSizing: boolean)
	return {
		requiresItemMeasurement = function()
			return selfSizing
		end,
	}
end

local function createHarness(factory, assignmentCallbacks)
	local calls = {}
	local currentFrame = Instance.new("ScrollingFrame")
	local frames = { currentFrame }
	local currentOverlay = Instance.new("Frame")
	local dataSource = {}
	local layout = createLayout(false)
	local recyclingScope = {} :: any
	local getItemViewType = function() end
	local currentPolicy = {
		overscan = nil,
		overscanPolicy = nil,
		dataPrefetch = nil,
		contentAlignment = nil,
		endThreshold = nil,
		pinnedItems = {},
		preserveScrollPositionOnChange = true,
	}
	local canvasCallbacks
	local constructionCallbacks
	local scrollingFrameSyncOptions
	local pinnedItems
	local nextEffects = {}
	local hostPlacement = {
		applyHostState = function(itemView, state)
			table.insert(calls, {
				kind = "apply-host-state",
				itemView = itemView,
				state = state,
			})
		end,
		applyPlacementIntent = function() end,
		cancelPendingMeasurements = function()
			table.insert(calls, "cancel")
		end,
		setConfiguration = function(configuration)
			table.insert(calls, {
				kind = "configure-canvas",
				configuration = configuration,
			})
		end,
		destroy = function()
			table.insert(calls, "destroy-canvas")
		end,
	}
	local virtualizer = {
		dispatch = function(command)
			if command.type == Core.VirtualizerCommandType.SetDataSource then
				table.insert(calls, "replace-data")
			elseif command.type == Core.VirtualizerCommandType.SetLayout then
				table.insert(calls, "replace-layout")
			elseif command.type == Core.VirtualizerCommandType.SetDataSourceAndLayout then
				table.insert(calls, "replace-both")
			elseif command.type == Core.VirtualizerCommandType.SetPolicy then
				pinnedItems = command.policy.pinnedItems
				table.insert(calls, { kind = "set-policy", value = command.policy })
			elseif command.type == Core.VirtualizerCommandType.Destroy then
				table.insert(calls, "destroy-virtualizer")
			end
			local update = { snapshot = { contentLength = 0 }, effects = nextEffects }
			nextEffects = {}
			if constructionCallbacks ~= nil and constructionCallbacks.onUpdate ~= nil then
				constructionCallbacks.onUpdate({ contentLength = 0 }, update)
			end
			return update
		end,
		getSnapshot = function()
			return { contentLength = 0 }
		end,
		query = function() end,
	}
	local scrollingFrameSync = {
		connect = function()
			table.insert(calls, "connect-host")
			return function()
				table.insert(calls, "disconnect-host")
			end
		end,
		configurationChanged = function()
			table.insert(calls, "notify-policy")
		end,
		scrollingFrameChanged = function()
			table.insert(calls, "replace-host")
		end,
		isReady = function()
			return true
		end,
		applyVirtualizerUpdate = function() end,
	}
	local snapshot = {
		axis = Core.Axis.Y,
		dataSource = dataSource,
		layout = layout,
		initialScrollAlignment = nil,
		autoScrollOnChange = nil,
		startReachedThreshold = nil,
		onStartReached = nil,
		onEndReached = nil,
		onViewportChanged = nil,
		onScrollOffsetChanged = nil,
		onContentLengthChanged = nil,
	}
	local createVirtualizer = factory or ScrollingFrameVirtualizer.newForGuiObjects
	local virtualizer = createVirtualizer({
		initialHostConfiguration = snapshot,
		initialHostTarget = {
			scrollingFrame = currentFrame,
			viewportOverlay = currentOverlay,
		},
		initialCorePolicy = currentPolicy,
		getGuiObject = function(itemView)
			return itemView
		end,
		core = {
			recyclingScope = recyclingScope,
			getItemViewType = getItemViewType,
		},
		prepareAssignment = if assignmentCallbacks == nil then nil else assignmentCallbacks.prepare,
		onItemViewAssignmentChanged = if assignmentCallbacks == nil then nil else assignmentCallbacks.changed,
		onItemViewPresentationChanged = function() end,
	}, {
		createHostPlacement = function(options)
			canvasCallbacks = options
			table.insert(calls, "create-canvas")
			return hostPlacement
		end,
		createCoreVirtualizer = function(options)
			constructionCallbacks = options
			table.insert(calls, "create-virtualizer")
			return virtualizer
		end,
		createScrollingFrameSync = function(options)
			scrollingFrameSyncOptions = options
			table.insert(calls, "create-host")
			return scrollingFrameSync
		end,
	})

	return {
		virtualizer = virtualizer,
		calls = calls,
		snapshot = snapshot,
		hostPlacement = hostPlacement,
		recyclingScope = recyclingScope,
		getItemViewType = getItemViewType,
		getCurrentPolicy = function()
			return currentPolicy
		end,
		setCurrentPolicy = function(policy)
			currentPolicy = policy
		end,
		setNextEffects = function(effects)
			nextEffects = effects
		end,
		constructionCallbacks = function()
			return constructionCallbacks
		end,
		canvasCallbacks = function()
			return canvasCallbacks
		end,
		pinnedItems = function()
			return pinnedItems
		end,
		hostTarget = function()
			return {
				scrollingFrame = currentFrame,
				viewportOverlay = currentOverlay,
			}
		end,
		observedFrame = function()
			return scrollingFrameSyncOptions.getInstance()
		end,
		setFrame = function(frame)
			currentFrame = frame
			table.insert(frames, frame)
		end,
		destroyInstances = function()
			for _, frame in frames do
				frame:Destroy()
			end
			currentOverlay:Destroy()
		end,
	}
end

local function createPolicy()
	return {
		overscan = 1,
		overscanPolicy = nil,
		dataPrefetch = nil,
		contentAlignment = nil,
		endThreshold = nil,
		pinnedItems = {},
		preserveScrollPositionOnChange = true,
	}
end

local function synchronize(harness, snapshot, policy, target)
	harness.setCurrentPolicy(policy)
	harness.virtualizer.update({
		hostConfiguration = snapshot,
		hostTarget = target or harness.hostTarget(),
		corePolicy = policy,
	})
end

local function commitCurrent(harness, snapshot, target)
	harness.virtualizer.update({
		hostConfiguration = snapshot,
		hostTarget = target or harness.hostTarget(),
		corePolicy = harness.getCurrentPolicy(),
	})
end

describe("ScrollingFrameVirtualizer", function()
	it("constructs Core push callbacks without binding the Virtualizer to Canvas", function()
		local harness = createHarness()

		expect(harness.calls).toEqual({ "create-canvas", "create-virtualizer", "create-host" })
		expect(harness.constructionCallbacks().dataSource).toBe(harness.snapshot.dataSource)
		expect(harness.constructionCallbacks().layout).toBe(harness.snapshot.layout)
		expect(harness.constructionCallbacks().recyclingScope).toBe(harness.recyclingScope)
		expect(harness.constructionCallbacks().getItemViewType).toBe(harness.getItemViewType)
		expect(type(harness.constructionCallbacks().prepareAssignment)).toBe("function")
		expect(type(harness.constructionCallbacks().postCommitAssignment)).toBe("function")
		expect(type(harness.constructionCallbacks().presentAssignment)).toBe("function")
		expect(type(harness.constructionCallbacks().applyPlacementIntent)).toBe("function")
		expect(type(harness.canvasCallbacks().onItemMeasurements)).toBe("function")

		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("delivers Data prefetch but suppresses initial range callbacks from the activation transaction", function()
		local request = {
			edge = "end",
			range = { firstIndex = 3, lastIndex = 4 },
			isCurrent = function()
				return true
			end,
		}
		local received
		local visibleRanges = {}
		local mountedRanges = {}
		local harness = createHarness()
		harness.snapshot.onDataPrefetchRequested = function(nextRequest)
			received = nextRequest
		end
		harness.snapshot.onVisibleRangeChanged = function(range)
			table.insert(visibleRanges, range)
		end
		harness.snapshot.onMountedRangeChanged = function(range)
			table.insert(mountedRanges, range)
		end
		harness.setNextEffects({
			{
				type = Core.VirtualizerEffectType.VisibleRangeChanged,
				range = { firstIndex = 1, lastIndex = 2 },
			},
			{
				type = Core.VirtualizerEffectType.MountedRangeChanged,
				range = { firstIndex = 1, lastIndex = 4 },
			},
			{
				type = Core.VirtualizerEffectType.DataPrefetchRequested,
				request = request,
			},
		})

		harness.virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })

		expect(received).toBe(request)
		expect(visibleRanges).toEqual({})
		expect(mountedRanges).toEqual({})
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("owns RecyclableView Assignment phases behind its interface", function()
		local events = {}
		local harness = createHarness(ScrollingFrameVirtualizer.newForRecyclableViews, {
			prepare = function(_, assignment)
				table.insert(events, `prepare:{if assignment == nil then "nil" else assignment.key}`)
			end,
			changed = function(_, assignment)
				table.insert(events, `changed:{if assignment == nil then "nil" else assignment.key}`)
			end,
		})
		local currentPort = nil
		local boundPorts = {}
		local view = {
			bindPlacement = function(kind, port)
				table.insert(events, `bind:{kind or "nil"}`)
				currentPort = port
				if port ~= nil then
					table.insert(boundPorts, port)
				end
			end,
		}
		local prepareAssignment = harness.constructionCallbacks().prepareAssignment
		local postCommitAssignment = harness.constructionCallbacks().postCommitAssignment
		local firstAssignment = { key = "a", index = 1, value = "Alpha", generation = 1 }

		table.clear(harness.calls)
		prepareAssignment(view, firstAssignment)
		table.insert(events, "publish:a")
		expect(currentPort).never.toBeNil()
		postCommitAssignment(view, firstAssignment)

		expect(events).toEqual({ "bind:list", "publish:a", "prepare:a", "changed:a" })
		expect(harness.calls).toEqual({})
		local firstPort = currentPort
		local hostState = { assignment = firstAssignment }
		local port = currentPort :: any
		port.apply(hostState)
		expect(harness.calls).toEqual({
			{ kind = "apply-host-state", itemView = view, state = hostState },
		})

		table.clear(events)
		table.clear(harness.calls)
		local secondAssignment = { key = "b", index = 2, value = "Beta", generation = 2 }
		prepareAssignment(view, secondAssignment)
		table.insert(events, "publish:b")
		postCommitAssignment(view, secondAssignment)
		expect(events).toEqual({ "bind:list", "publish:b", "prepare:b", "changed:b" })
		expect(currentPort).toBe(firstPort)
		expect(boundPorts).toEqual({ firstPort, firstPort })
		expect(harness.calls).toEqual({})

		table.clear(events)
		prepareAssignment(view, nil)
		table.insert(events, "publish:nil")
		expect(currentPort).toBeNil()
		postCommitAssignment(view, nil)
		expect(events).toEqual({ "bind:nil", "publish:nil", "prepare:nil", "changed:nil" })

		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("cancels measurements before replacing DataSource and layout", function()
		local harness = createHarness()
		table.clear(harness.calls)
		local nextSnapshot = table.clone(harness.snapshot)
		nextSnapshot.dataSource = {}
		nextSnapshot.layout = createLayout(true)

		commitCurrent(harness, nextSnapshot)

		expect(harness.calls[1]).toBe("cancel")
		expect(harness.calls[2]).toBe("replace-both")
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("notifies policy for DataSource replacement but not layout-only replacement", function()
		local harness = createHarness()
		local layoutSnapshot = table.clone(harness.snapshot)
		layoutSnapshot.layout = createLayout(true)
		table.clear(harness.calls)

		commitCurrent(harness, layoutSnapshot)
		expect(table.find(harness.calls, "notify-policy")).toBeNil()

		local dataSnapshot = table.clone(layoutSnapshot)
		dataSnapshot.dataSource = {}
		table.clear(harness.calls)
		commitCurrent(harness, dataSnapshot)
		expect(harness.calls).toEqual({ "cancel", "replace-data", "notify-policy" })
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("applies a complete initial Core policy in one transaction", function()
		local harness = createHarness()
		local policy = createPolicy()
		local stickySelector = function()
			return false
		end
		local pinnedStartItem = {
			key = "start",
			value = "value",
			itemViewType = "header",
		}
		policy.dataPrefetch = { before = 2, after = 3 }
		policy.contentAlignment = Core.ScrollAlignment.Center
		policy.endThreshold = 20
		policy.pinnedItems.isItemStickyHeader = stickySelector
		policy.pinnedItems.pinnedStartItem = pinnedStartItem
		policy.preserveScrollPositionOnChange = false
		table.clear(harness.calls)

		synchronize(harness, harness.snapshot, policy)

		expect(harness.calls).toEqual({
			{
				kind = "set-policy",
				value = {
					overscan = 1,
					overscanPolicy = nil,
					dataPrefetch = policy.dataPrefetch,
					contentAlignment = Core.ScrollAlignment.Center,
					endThreshold = 20,
					pinnedItems = {
						isItemStickyHeader = stickySelector,
						pinnedStartItem = pinnedStartItem,
						pinnedEndItem = nil,
					},
					preserveScrollPositionOnChange = false,
				},
			},
		})
		expect(harness.pinnedItems().pinnedStartItem).toBe(pinnedStartItem)
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("does no work for a repeated committed update", function()
		local harness = createHarness()
		local policy = createPolicy()
		policy.pinnedItems.pinnedStartItem = {
			key = "start",
			value = "value",
			itemViewType = "header",
		}
		synchronize(harness, harness.snapshot, policy)
		table.clear(harness.calls)
		local equivalentPolicy = table.clone(policy)
		equivalentPolicy.pinnedItems = table.clone(policy.pinnedItems)
		equivalentPolicy.pinnedItems.pinnedStartItem = table.clone(policy.pinnedItems.pinnedStartItem)

		synchronize(harness, harness.snapshot, equivalentPolicy)

		expect(harness.calls).toEqual({})
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("gives overscan policy precedence over fixed overscan", function()
		local harness = createHarness()
		local policy = createPolicy()
		local overscanPolicy = {}
		policy.overscanPolicy = overscanPolicy
		table.clear(harness.calls)
		synchronize(harness, harness.snapshot, policy)
		expect(harness.calls[1].kind).toBe("set-policy")
		expect(harness.calls[1].value.overscan).toBeNil()
		expect(harness.calls[1].value.overscanPolicy).toBe(overscanPolicy)
		table.clear(harness.calls)
		local fixedChange = table.clone(policy)
		fixedChange.overscan = 8

		synchronize(harness, harness.snapshot, fixedChange)
		expect(harness.calls).toEqual({})

		local fixedPolicy = table.clone(fixedChange)
		fixedPolicy.overscanPolicy = nil
		synchronize(harness, harness.snapshot, fixedPolicy)
		expect(harness.calls[1].kind).toBe("set-policy")
		expect(harness.calls[1].value.overscan).toBe(8)
		expect(harness.calls[1].value.overscanPolicy).toBeNil()
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("orders replacement, Core policy, host notification, and host observation", function()
		local harness = createHarness()
		local policy = createPolicy()
		synchronize(harness, harness.snapshot, policy)
		local nextSnapshot = table.clone(harness.snapshot)
		nextSnapshot.dataSource = {}
		nextSnapshot.layout = createLayout(true)
		nextSnapshot.onStartReached = function() end
		local nextPolicy = table.clone(policy)
		nextPolicy.overscan = 2
		local replacement = Instance.new("ScrollingFrame")
		harness.setFrame(replacement)
		table.clear(harness.calls)

		synchronize(harness, nextSnapshot, nextPolicy)

		expect(harness.calls[1]).toBe("cancel")
		expect(harness.calls[2]).toBe("replace-both")
		expect(harness.calls[3].kind).toBe("configure-canvas")
		expect(harness.calls[4].kind).toBe("set-policy")
		expect(harness.calls[4].value.overscan).toBe(2)
		expect(harness.calls[5]).toBe("notify-policy")
		expect(harness.calls[6]).toBe("replace-host")
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("notifies callback-only host changes without applying Core policy", function()
		local harness = createHarness()
		local policy = createPolicy()
		synchronize(harness, harness.snapshot, policy)
		local nextSnapshot = table.clone(harness.snapshot)
		nextSnapshot.onEndReached = function() end
		table.clear(harness.calls)

		synchronize(harness, nextSnapshot, policy)

		expect(harness.calls).toEqual({ "notify-policy" })
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("commits data replacement without reapplying unchanged Core policy", function()
		local harness = createHarness()
		synchronize(harness, harness.snapshot, createPolicy())
		local nextSnapshot = table.clone(harness.snapshot)
		nextSnapshot.dataSource = {}
		table.clear(harness.calls)

		commitCurrent(harness, nextSnapshot)

		expect(harness.calls).toEqual({ "cancel", "replace-data", "notify-policy" })
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("refreshes host observation only from a committed target", function()
		local harness = createHarness()
		local policy = createPolicy()
		synchronize(harness, harness.snapshot, policy)
		local initiallyObserved = harness.observedFrame()
		local replacement = Instance.new("ScrollingFrame")
		harness.setFrame(replacement)
		expect(harness.observedFrame()).toBe(initiallyObserved)
		table.clear(harness.calls)

		synchronize(harness, harness.snapshot, policy)

		expect(harness.calls[1].kind).toBe("configure-canvas")
		expect(harness.calls[1].configuration.container).toBe(replacement)
		expect(harness.calls[2]).toBe("replace-host")
		expect(harness.observedFrame()).toBe(replacement)
		harness.virtualizer.destroy()
		harness.destroyInstances()
	end)

	it("separates host disconnection from idempotent runtime teardown", function()
		local harness = createHarness()
		local disconnect = harness.virtualizer.connect()
		table.clear(harness.calls)

		disconnect()
		disconnect()
		harness.virtualizer.destroy()
		harness.virtualizer.destroy()
		commitCurrent(harness, harness.snapshot)

		expect(harness.calls).toEqual({ "disconnect-host", "destroy-virtualizer", "destroy-canvas" })
		expect(function()
			harness.virtualizer.connect()
		end).toThrow("cannot connect after destroy")
		harness.destroyInstances()
	end)
end)
