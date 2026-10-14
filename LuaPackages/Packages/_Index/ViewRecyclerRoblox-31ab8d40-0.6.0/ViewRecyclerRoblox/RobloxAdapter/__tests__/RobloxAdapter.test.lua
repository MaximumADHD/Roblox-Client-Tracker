local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Axis = Core.Axis
local ReparentableHost = require(Root.RobloxAdapter.ReparentableHost)
local RobloxAdapter = require(Root)
local SlotGeometry = require(Root.RobloxAdapter.SlotGeometry)

local function createVirtualizer(options)
	if options.recyclingScope ~= nil then
		return RobloxAdapter.createVirtualizer(options)
	end
	local recyclingAdapter = options.recyclingAdapter
	local recyclingScope = RobloxAdapter.createRecyclingScope({
		itemViewAdapter = recyclingAdapter,
		getInstance = options.getInstance,
		destroyItemView = options.destroyItemView,
		maxPoolSize = options.maxPoolSize,
		diagnostics = options.diagnostics,
	})
	local virtualizerOptions = table.clone(options)
	virtualizerOptions.recyclingAdapter = nil
	virtualizerOptions.destroyItemView = nil
	virtualizerOptions.maxPoolSize = nil
	virtualizerOptions.recyclingScope = recyclingScope
	virtualizerOptions.getItemViewType = recyclingAdapter.getType
	virtualizerOptions.transition = recyclingAdapter.update
	local virtualizer = RobloxAdapter.createVirtualizer(virtualizerOptions)
	local destroyVirtualizer = virtualizer.destroy
	virtualizer.destroy = function()
		destroyVirtualizer()
		recyclingScope.dispose()
	end
	return virtualizer
end

-- Item Hosts placed on a ScrollingFrame, absolutely or in its stack.
local function placedHosts(scrollingFrame: ScrollingFrame): { GuiObject }
	local hosts = {}
	local function collect(parent: Instance)
		for _, child in parent:GetChildren() do
			if child.Name == "ViewRecyclerStack" or child.Name == "Leading" or child.Name == "Trailing" then
				collect(child)
			elseif child:IsA("GuiObject") and child.Name ~= "Placeholder" then
				table.insert(hosts, child)
			end
		end
	end
	collect(scrollingFrame)
	return hosts
end

describe("RobloxAdapter root", function()
	it("exports the imperative Virtualizer and Recycling scope facades", function()
		expect((RobloxAdapter :: any).createItemViewPool).toBeNil()
		expect(type(RobloxAdapter.createRecyclingScope)).toBe("function")
		expect(type(RobloxAdapter.createVirtualizer)).toBe("function")
		expect((RobloxAdapter :: any).createListRuntime).toBeNil()
		expect((RobloxAdapter :: any).StickyPolicy).toBeNil()
		expect((RobloxAdapter :: any).SupplementaryPlacement).toBeNil()
		expect((RobloxAdapter :: any).GeometryController).toBeNil()
		expect((RobloxAdapter :: any).RenderWindow).toBeNil()
	end)

	it("exports the supported adapter-author host primitives", function()
		expect(type(RobloxAdapter.ViewportCoordinator)).toBe("table")
		expect(type(RobloxAdapter.SlotGeometry)).toBe("table")
		expect(type(RobloxAdapter.Measurer)).toBe("table")
		expect(type(RobloxAdapter.MeasurementBatcher)).toBe("table")
		expect(type(RobloxAdapter.ReparentableHost)).toBe("table")
	end)

	it("keeps first-party bridge modules off the public top level", function()
		expect((RobloxAdapter :: any).CanvasItemPlacer).toBeNil()
	end)

	it("groups first-party bridge modules under a frozen Internal namespace", function()
		expect(table.isfrozen(RobloxAdapter.Internal)).toBe(true)
		expect(type(RobloxAdapter.Internal.CanvasItemPlacer)).toBe("table")
		expect(type(RobloxAdapter.Internal.HostPlacement)).toBe("table")
		expect(type(RobloxAdapter.Internal.ScrollHost)).toBe("table")
		expect(RobloxAdapter.Internal.ScrollingFrameVirtualizer).toBeNil()
	end)
end)

describe("createVirtualizer", function()
	it("activates subscriptions immediately and disconnects them exactly once", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local dataSource = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local subscribeCount = 0
		local disconnectCount = 0
		local originalSubscribe = dataSource.subscribe
		dataSource.subscribe = function(callback)
			subscribeCount += 1
			local disconnect = originalSubscribe(callback)
			return function()
				disconnectCount += 1
				disconnect()
			end
		end
		local layout = Core.Layout.uniform({ itemLength = 20 })

		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function() end,
			},
		})

		expect(subscribeCount).toBe(1)

		virtualizer.destroy()
		virtualizer.destroy()
		expect(disconnectCount).toBe(1)
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("rejects a Layout that requires Item measurement without Stacked capability", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		local measured = Core.Layout.measured({ estimatedItemLength = 20 })
		local unstackable = table.clone(measured)
		unstackable.stackedSpacing = nil
		local function create(layout)
			return createVirtualizer({
				scrollingFrame = scrollingFrame,
				axis = Axis.Y,
				dataSource = Core.DataSource.sequence({ "a" }, function(value)
					return value
				end),
				layout = layout,
				recyclingAdapter = {
					getType = function()
						return "row"
					end,
					create = function()
						return Instance.new("Frame")
					end,
					update = function() end,
				},
			})
		end

		expect(function()
			create(unstackable)
		end).toThrow("Stacked")
		local virtualizer = create(measured)
		expect(function()
			virtualizer.setLayout(unstackable)
		end).toThrow("Stacked")

		virtualizer.destroy()
		measured.destroy()
		scrollingFrame:Destroy()
	end)

	it("updates imperative views without exposing adapter lifecycle callbacks", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local dataSource = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local assignments = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function(_, assignment)
					table.insert(assignments, if assignment == nil then "nil" else assignment.key)
				end,
			},
		})

		expect(assignments).toEqual({ "a" })
		dataSource.reset({ "b" })
		expect(assignments).toEqual({ "a", "b" })

		virtualizer.destroy()
		expect(assignments).toEqual({ "a", "b", "nil" })
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("releases every ItemView while inactive and rebinds on reactivation", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 40)
		local dataSource = Core.DataSource.sequence({ "a", "b" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local assignments = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			overscan = 0,
			active = false,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function(_, assignment)
					table.insert(assignments, if assignment == nil then "nil" else assignment.key)
				end,
			},
		})

		expect(assignments).toEqual({})
		expect(#placedHosts(scrollingFrame)).toBe(0)

		virtualizer.setActive(true)
		expect(assignments).toEqual({ "a", "b" })
		local hosts = placedHosts(scrollingFrame)
		expect(#hosts).toBe(2)

		virtualizer.setActive(false)
		expect(assignments).toEqual({ "a", "b", "nil", "nil" })
		expect(hosts[1].Parent).toBeNil()

		virtualizer.setActive(true)
		expect(#placedHosts(scrollingFrame)).toBe(2)

		virtualizer.destroy()
		virtualizer.destroy()
		virtualizer.setActive(true)
		expect(#scrollingFrame:GetChildren()).toBe(0)
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("presents ItemViews through a supplied presentation", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 40)
		local dataSource = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local scope = RobloxAdapter.createRecyclingScope({
			itemViewAdapter = {
				create = function()
					return { host = Instance.new("Frame") }
				end,
				update = function() end,
			},
			getInstance = function(itemView)
				return itemView.host
			end,
		})
		local events = {}
		local virtualizer = RobloxAdapter.createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			recyclingScope = scope,
			getItemViewType = function()
				return "row"
			end,
			presentItemView = function(itemView, state, assignmentChanged, sink)
				table.insert(events, {
					key = if state == nil then nil else state.assignment.key,
					assignmentChanged = assignmentChanged,
				})
				sink.apply(
					itemView,
					if state == nil
						then nil
						else {
							host = itemView.host,
							phase = RobloxAdapter.HostPresentationPhase.Presented,
							state = state,
						}
				)
			end,
		})

		expect(events).toEqual({ { key = "a", assignmentChanged = true } })
		local host = scrollingFrame:FindFirstChildWhichIsA("Frame")
		expect(host).never.toBeNil()

		virtualizer.setContentAlignment(Core.ScrollAlignment.End)
		expect(#events).toBe(2)
		expect(events[2]).toEqual({ key = "a", assignmentChanged = false })

		virtualizer.destroy()
		expect(events[#events]).toEqual({ assignmentChanged = true })
		expect((host :: Frame).Parent).toBeNil()
		scope.dispose()
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("does no list work for an equivalent configuration update", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local dataSource = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local events = {}
		local configuration = {
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			pinnedStartItem = { key = "start", value = "s", itemViewType = "row" },
			onEndReached = function() end,
		}
		local options = table.clone(configuration)
		options.recyclingAdapter = {
			getType = function()
				return "row"
			end,
			create = function()
				return Instance.new("Frame")
			end,
			update = function() end,
		}
		options.diagnostics = function(event)
			table.insert(events, event.kind)
		end
		local virtualizer = createVirtualizer(options)
		table.clear(events)

		local equivalent = table.clone(configuration)
		equivalent.pinnedStartItem = table.clone(configuration.pinnedStartItem)
		equivalent.onEndReached = function() end
		virtualizer.update(equivalent)

		expect(events).toEqual({})
		virtualizer.destroy()
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("reports visible and mounted ranges independently", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local dataSource = Core.DataSource.sequence({ "a", "b", "c", "d" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local visibleRanges = {}
		local mountedRanges = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			overscan = 2,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function() end,
			},
			onVisibleRangeChanged = function(range)
				table.insert(visibleRanges, table.clone(range))
			end,
			onMountedRangeChanged = function(range)
				table.insert(mountedRanges, table.clone(range))
			end,
		})
		expect(visibleRanges).toEqual({ { firstIndex = 1, lastIndex = 1 } })
		expect(mountedRanges).toEqual({ { firstIndex = 1, lastIndex = 3 } })

		virtualizer.setScrollOffset(10)

		expect(visibleRanges).toEqual({
			{ firstIndex = 1, lastIndex = 1 },
			{ firstIndex = 1, lastIndex = 2 },
		})
		expect(mountedRanges).toEqual({
			{ firstIndex = 1, lastIndex = 3 },
			{ firstIndex = 1, lastIndex = 4 },
		})
		expect(virtualizer.getVisibleRange()).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(virtualizer.getMountedRange()).toEqual({ firstIndex = 1, lastIndex = 4 })

		virtualizer.destroy()
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("routes sticky and pinned ItemViews into a caller-owned viewport overlay", function()
		local container = Instance.new("Frame")
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 30)
		scrollingFrame.Parent = container
		local viewportOverlay = Instance.new("Frame")
		viewportOverlay.Size = UDim2.fromOffset(100, 30)
		viewportOverlay.Parent = container
		local values = {
			{ id = "header-a", kind = "header" },
			{ id = "row-a", kind = "row" },
			{ id = "header-b", kind = "header" },
			{ id = "row-b", kind = "row" },
			{ id = "row-c", kind = "row" },
			{ id = "row-d", kind = "row" },
		}
		local dataSource = Core.DataSource.sequence(values, function(value)
			return value.id
		end)
		local layout = Core.Layout.uniform({ itemLength = 10 })
		local assignments = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			viewportOverlay = viewportOverlay,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			overscan = 0,
			recyclingAdapter = {
				getType = function(value)
					return value.kind
				end,
				create = function(kind)
					local instance = Instance.new("Frame")
					instance.Name = kind
					return instance
				end,
				update = function(instance, assignment)
					assignments[if assignment == nil then instance.Name else assignment.key] = instance
				end,
			},
			isItemStickyHeader = function(key)
				return string.find(key, "header", 1, true) ~= nil
			end,
			pinnedStartItem = {
				key = "$toolbar",
				value = { id = "$toolbar", kind = "toolbar" },
				itemViewType = "toolbar",
			},
			pinnedEndItem = {
				key = "$status",
				value = { id = "$status", kind = "status" },
				itemViewType = "status",
			},
		})

		expect(assignments["$toolbar"].Parent).toBe(viewportOverlay)
		expect(assignments["$status"].Parent).toBe(viewportOverlay)
		expect(assignments["$toolbar"].Position.Y.Offset).toBe(0)

		virtualizer.setScrollOffset(5)
		expect(assignments["$toolbar"].Position.Y.Offset).toBe(0)

		virtualizer.setScrollOffset(8)
		expect(assignments["$toolbar"].Position.Y.Offset).toBe(0)

		virtualizer.setScrollOffset(11)
		expect(assignments["header-a"]:IsDescendantOf(viewportOverlay)).toBe(true)
		expect(assignments["header-a"].AbsolutePosition - viewportOverlay.AbsolutePosition).toBe(Vector2.new(0, -1))
		expect(assignments["header-a"].ZIndex).toBe(2)
		expect(assignments["row-a"]:IsDescendantOf(scrollingFrame)).toBe(true)

		virtualizer.destroy()
		layout.destroy()
		container:Destroy()
	end)

	it("places the first canvas row below the sticky header after a pinned start item measures", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local host = Instance.new("Frame")
		host.Size = UDim2.fromOffset(420, 560)
		host.Parent = container
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromScale(1, 1)
		scrollingFrame.Parent = host
		local viewportOverlay = Instance.new("Frame")
		viewportOverlay.Name = "ViewRecyclerOverlay"
		viewportOverlay.Size = UDim2.fromScale(1, 1)
		viewportOverlay.Parent = host
		local itemLength = 42
		local spacing = 2
		local stride = itemLength + spacing
		local toolbarHeight = 34
		local values = {}
		for section = 1, 6 do
			table.insert(values, { id = `header-{section}`, kind = "header" })
			for row = 1, 5 do
				table.insert(values, { id = `row-{section}-{row}`, kind = "row" })
			end
		end
		local dataSource = Core.DataSource.sequence(values, function(value)
			return value.id
		end)
		local layout = Core.Layout.uniform({
			itemLength = itemLength,
			spacing = spacing,
		})
		local assignments = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			viewportOverlay = viewportOverlay,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			overscan = 2,
			recyclingAdapter = {
				getType = function(value)
					return value.kind
				end,
				create = function(kind)
					local instance = Instance.new("Frame")
					instance.Name = kind
					if kind == "toolbar" then
						local content = Instance.new("Frame")
						content.Size = UDim2.new(1, 0, 0, toolbarHeight)
						content.Parent = instance
					else
						instance.Size = UDim2.new(1, 0, 0, itemLength)
					end
					return instance
				end,
				update = function(instance, assignment)
					assignments[if assignment == nil then instance.Name else assignment.key] = instance
				end,
			},
			isItemStickyHeader = function(key)
				return string.find(key, "header", 1, true) ~= nil
			end,
			pinnedStartItem = {
				key = "$toolbar",
				value = { id = "$toolbar", kind = "toolbar" },
				itemViewType = "toolbar",
			},
		})

		local dataLength = layout.getContentLength()
		for _ = 1, 8 do
			if scrollingFrame.CanvasSize.Y.Offset >= dataLength + toolbarHeight then
				break
			end
			game:GetService("RunService").Heartbeat:Wait()
			task.wait()
		end

		local toolbar = assignments["$toolbar"]
		local header = assignments["header-1"]
		local row = assignments["row-1-1"]
		expect(scrollingFrame.CanvasSize.Y.Offset).toBeGreaterThanOrEqual(dataLength + toolbarHeight)
		expect(scrollingFrame.CanvasPosition.Y).toBe(0)
		expect(virtualizer.getScrollState().scrollOffset).toBe(0)
		expect(toolbar.Parent).toBe(viewportOverlay)
		expect(header:IsDescendantOf(scrollingFrame)).toBe(true)
		expect(row:IsDescendantOf(scrollingFrame)).toBe(true)
		expect(header.AbsolutePosition.Y - scrollingFrame.AbsolutePosition.Y).toBe(toolbarHeight)
		expect(row.AbsolutePosition.Y - scrollingFrame.AbsolutePosition.Y).toBe(toolbarHeight + stride)
		expect(row.AbsolutePosition.Y).toBeGreaterThanOrEqual(header.AbsolutePosition.Y + header.AbsoluteSize.Y - 0.5)

		virtualizer.destroy()
		layout.destroy()
		container:Destroy()
	end)

	it("reports and cancels end-edge data prefetch ranges", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local requests = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = Core.DataSource.snapshot({ "a", "b", "c", "d", "e" }, function(value)
				return value
			end),
			layout = layout,
			overscan = 0,
			dataPrefetch = { endItems = 2 },
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function() end,
			},
			onDataPrefetchRequested = function(request)
				table.insert(requests, request)
			end,
		})

		virtualizer.setScrollOffset(20)

		expect(virtualizer.getMountedRange()).toEqual({ firstIndex = 2, lastIndex = 2 })
		expect(#requests).toBe(2)
		expect(requests[1].isCurrent()).toBe(false)
		expect(requests[2].edge).toBe("end")
		expect(requests[2].range).toEqual({ firstIndex = 3, lastIndex = 4 })
		expect(requests[2].isCurrent()).toBe(true)

		virtualizer.destroy()
		expect(requests[2].isCurrent()).toBe(false)
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("keeps imperative offset, state, and snapshot APIs host-synchronized", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local dataSource = Core.DataSource.sequence({ "a", "b", "c", "d", "e", "f" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			overscan = 0,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function() end,
			},
		})

		expect(virtualizer.scrollToOffset(50)).toBe(50)
		expect(scrollingFrame.CanvasPosition.Y).toBe(50)
		expect(virtualizer.getScrollState().scrollOffset).toBe(50)
		local snapshot = virtualizer.captureScrollAnchorSnapshot()
		expect(snapshot.anchorKey).toBe("c")
		expect(snapshot.offsetWithinItem).toBe(10)

		expect(virtualizer.scrollBy(20)).toBe(70)
		expect(scrollingFrame.CanvasPosition.Y).toBe(70)
		dataSource.reset({ "a", "b", "d", "e", "c", "f" })
		expect(virtualizer.restoreScrollAnchorSnapshot(snapshot)).toBe(90)
		expect(scrollingFrame.CanvasPosition.Y).toBe(90)

		virtualizer.destroy()
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("keeps End-aligned Content at End when the ScrollingFrame shrinks", function()
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game:GetService("CoreGui")
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 100)
		scrollingFrame.Parent = screenGui
		local items = {}
		for index = 1, 20 do
			table.insert(items, `row-{index}`)
		end
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = Core.DataSource.snapshot(items, function(value)
				return value
			end),
			layout = layout,
			overscan = 0,
			contentAlignment = Core.ScrollAlignment.End,
			initialScrollAlignment = Core.ScrollAlignment.End,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function() end,
			},
		})
		expect(scrollingFrame.CanvasPosition.Y).toBe(300)

		scrollingFrame.Size = UDim2.fromOffset(100, 60)
		task.wait()

		expect(virtualizer.getScrollState().viewportLength).toBe(60)
		expect(virtualizer.getScrollState().distanceFromEnd).toBe(0)
		expect(scrollingFrame.CanvasPosition.Y).toBe(340)

		virtualizer.destroy()
		layout.destroy()
		screenGui:Destroy()
	end)

	it("places short content at the configured end edge", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 100)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local host
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = Core.DataSource.snapshot({ "a" }, function(value)
				return value
			end),
			layout = layout,
			overscan = 0,
			contentAlignment = Core.ScrollAlignment.End,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					host = Instance.new("Frame")
					return host
				end,
				update = function() end,
			},
		})

		expect((host :: Frame).AbsolutePosition.Y - scrollingFrame.AbsolutePosition.Y).toBe(80)
		expect(virtualizer.getScrollState().scrollOffset).toBe(0)

		virtualizer.destroy()
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("clears selection before reusing a host for another key", function()
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game:GetService("CoreGui")
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		scrollingFrame.Parent = screenGui
		local dataSource = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local guiService = game:GetService("GuiService")
		local selectionWasClearedBeforeUpdate = false
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					local host = Instance.new("Frame")
					host.Selectable = true
					return host
				end,
				update = function(_, assignment)
					if assignment ~= nil and assignment.key == "b" then
						selectionWasClearedBeforeUpdate = guiService.SelectedObject == nil
					end
				end,
			},
		})
		local host = placedHosts(scrollingFrame)[1] :: Frame
		guiService.SelectedObject = host

		dataSource.reset({ "b" })

		expect(guiService.SelectedObject).toBeNil()
		expect(selectionWasClearedBeforeUpdate).toBe(true)
		expect(placedHosts(scrollingFrame)).toEqual({ host })
		virtualizer.destroy()
		layout.destroy()
		screenGui:Destroy()
	end)

	it("destroys ItemView resources when the vacant retention policy evicts them", function()
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(100, 20)
		local dataSource = Core.DataSource.sequence({ "a", "b" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 10 })
		local destroyed = {}
		local evictedBatches = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = dataSource,
			layout = layout,
			maxPoolSize = 0,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return Instance.new("Frame")
				end,
				update = function() end,
				onEvicted = function(itemViews)
					table.insert(evictedBatches, itemViews)
				end,
			},
			destroyItemView = function(itemView)
				table.insert(destroyed, itemView)
				itemView:Destroy()
			end,
		})

		dataSource.reset({})

		expect(#evictedBatches).toBe(1)
		expect(#evictedBatches[1]).toBe(2)
		expect(#destroyed).toBe(2)
		expect(destroyed[1].Parent).toBeNil()
		expect(destroyed[2].Parent).toBeNil()

		virtualizer.destroy()
		expect(#destroyed).toBe(2)
		layout.destroy()
		scrollingFrame:Destroy()
	end)

	it("reparents one shared ItemView between separate ScrollingFrames", function()
		local firstFrame = Instance.new("ScrollingFrame")
		firstFrame.Size = UDim2.fromOffset(100, 20)
		local secondFrame = Instance.new("ScrollingFrame")
		secondFrame.Size = UDim2.fromOffset(100, 20)
		local firstSource = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local secondSource = Core.DataSource.sequence({ "b" }, function(value)
			return value
		end)
		local firstLayout = Core.Layout.uniform({ itemLength = 20 })
		local secondLayout = Core.Layout.uniform({ itemLength = 20 })
		local created = 0
		local assignments = {}
		local recyclingScope = RobloxAdapter.createRecyclingScope({
			itemViewAdapter = {
				create = function()
					created += 1
					local itemView = Instance.new("Frame")
					return itemView
				end,
			},
		})
		local function createHostVirtualizer(scrollingFrame, dataSource, layout)
			return createVirtualizer({
				scrollingFrame = scrollingFrame,
				axis = Axis.Y,
				dataSource = dataSource,
				layout = layout,
				recyclingScope = recyclingScope,
				transition = function(itemView, assignment)
					assignments[itemView] = assignment
				end,
				getItemViewType = function()
					return "row"
				end,
			})
		end
		local first = createHostVirtualizer(firstFrame, firstSource, firstLayout)
		local itemView = placedHosts(firstFrame)[1]
		assert(itemView ~= nil, "expected first Virtualizer to place an ItemView")

		first.destroy()
		expect(itemView.Parent).toBeNil()
		local second = createHostVirtualizer(secondFrame, secondSource, secondLayout)

		expect(placedHosts(secondFrame)).toEqual({ itemView })
		expect(assignments[itemView].key).toBe("b")
		expect(created).toBe(1)

		second.destroy()
		recyclingScope.dispose()
		expect(itemView.Parent).toBeNil()
		firstLayout.destroy()
		secondLayout.destroy()
		firstFrame:Destroy()
		secondFrame:Destroy()
	end)
end)

describe("first open", function()
	local RunService = game:GetService("RunService")
	local FRAME_LIMIT = 30

	local function createMeasuredList(options)
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = options.frameSize or UDim2.fromOffset(200, 400)
		scrollingFrame.Parent = container
		local values = {}
		for index = 1, 40 do
			table.insert(values, { id = `row-{index}`, length = if index % 3 == 0 then 70 else 50 })
		end
		local layout = options.layout
			or Core.Layout.measured({ estimatedItemLength = options.estimatedItemLength or 120 })
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = Core.DataSource.sequence(values, function(value)
				return value.id
			end),
			layout = layout,
			overscan = 0,
			initialScrollAlignment = Core.ScrollAlignment.End,
			autoScrollOnChange = Core.AutoScrollPolicy.WhenAtEnd,
			isItemStickyHeader = options.isItemStickyHeader,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					local instance = Instance.new("Frame")
					instance.BackgroundTransparency = 1
					local content = Instance.new("Frame")
					content.Name = "Content"
					content.Parent = instance
					return instance
				end,
				update = function(instance, assignment)
					if assignment ~= nil then
						local content = instance:FindFirstChild("Content") :: Frame
						content.Size = UDim2.new(1, 0, 0, assignment.value.length)
					end
				end,
			},
		})
		return {
			scrollingFrame = scrollingFrame,
			virtualizer = virtualizer,
			destroy = function()
				virtualizer.destroy()
				layout.destroy()
				container:Destroy()
			end,
		}
	end

	local function visibleRows(scrollingFrame: ScrollingFrame): { GuiObject }
		local rows = {}
		for _, host in placedHosts(scrollingFrame) do
			if host.Visible then
				table.insert(rows, host)
			end
		end
		table.sort(rows, function(left, right)
			return left.AbsolutePosition.Y < right.AbsolutePosition.Y
		end)
		return rows
	end

	local function contentBottom(row: GuiObject): number
		local bottom = row.AbsolutePosition.Y + row.AbsoluteSize.Y
		for _, descendant in row:GetDescendants() do
			if descendant:IsA("GuiObject") then
				bottom = math.max(bottom, descendant.AbsolutePosition.Y + descendant.AbsoluteSize.Y)
			end
		end
		return bottom
	end

	-- Samples the state each frame drew: PreSimulation runs after rendering
	-- and before Heartbeat measurement work.
	local function samplePaintedFrames(frames: number, sample: (frame: number) -> ())
		local frame = 0
		local done = false
		local connection = RunService.PreSimulation:Connect(function()
			frame += 1
			sample(frame)
			done = frame >= frames
		end)
		while not done do
			RunService.Heartbeat:Wait()
		end
		connection:Disconnect()
		return frame
	end

	-- An estimate above the settled lengths leaves the viewport short after the
	-- first measurement pass, so more Items mount inside it and measure a frame
	-- later.
	it("shows Items as they fill the viewport without painting a gap while a measured list first settles", function()
		local list = createMeasuredList({})
		local failures = {}
		local revealedFrame = nil
		local sampled = samplePaintedFrames(FRAME_LIMIT, function(frame)
			local rows = visibleRows(list.scrollingFrame)
			if #rows == 0 then
				return
			end
			revealedFrame = revealedFrame or frame
			local scrollingFrame = list.scrollingFrame
			local windowTop = scrollingFrame.AbsolutePosition.Y
			local windowBottom = windowTop + scrollingFrame.AbsoluteWindowSize.Y
			for index = 2, #rows do
				local previousBottom = contentBottom(rows[index - 1])
				local nextTop = rows[index].AbsolutePosition.Y
				local paintedGap = math.max(previousBottom, nextTop) > windowTop
					and math.min(previousBottom, nextTop) < windowBottom
				if paintedGap and math.abs(nextTop - previousBottom) > 0.5 then
					table.insert(
						failures,
						`frame {frame}: {nextTop - previousBottom} px between rows {index - 1} and {index}`
					)
				end
			end
			local distanceFromEnd = scrollingFrame.AbsoluteCanvasSize.Y
				- scrollingFrame.AbsoluteWindowSize.Y
				- scrollingFrame.CanvasPosition.Y
			if distanceFromEnd > 0.5 then
				table.insert(failures, `frame {frame}: painted {distanceFromEnd} short of the end`)
			end
		end)

		expect(sampled).toBe(FRAME_LIMIT)
		expect(revealedFrame).toBe(1)
		expect(failures).toEqual({})
		list.destroy()
	end)

	it("shows uniform-layout Item hosts on the first painted frame", function()
		local list = createMeasuredList({ layout = Core.Layout.uniform({ itemLength = 50 }) })
		local firstFrameRows = nil
		samplePaintedFrames(1, function()
			firstFrameRows = #visibleRows(list.scrollingFrame)
		end)

		expect(firstFrameRows).toBeGreaterThan(0)
		list.destroy()
	end)
end)

describe("Stacked placement", function()
	local RunService = game:GetService("RunService")
	local HostPresentationPhase = RobloxAdapter.HostPresentationPhase

	local function lengthFor(index: number): number
		return if index % 3 == 0 then 70 else 50
	end

	local function createList(options)
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = options.frameSize or UDim2.fromOffset(200, 400)
		scrollingFrame.Parent = container
		if options.beforeCreate ~= nil then
			options.beforeCreate(scrollingFrame)
		end
		local values = {}
		for index = 1, options.itemCount or 40 do
			table.insert(values, { id = `row-{index}`, index = index, length = lengthFor(index) })
		end
		local layout = options.layout or Core.Layout.measured({ estimatedItemLength = 120 })
		local axis = options.axis or Axis.Y
		local hosts = {}
		local virtualizerOptions = {
			scrollingFrame = scrollingFrame,
			axis = axis,
			dataSource = Core.DataSource.sequence(values, function(value)
				return value.id
			end),
			layout = layout,
			overscan = options.overscan or 0,
			contentAlignment = options.contentAlignment,
			initialScrollAlignment = options.initialScrollAlignment,
			isItemStickyHeader = options.isItemStickyHeader,
			presentItemView = options.presentItemView,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					local instance = Instance.new("Frame")
					instance.BackgroundTransparency = 1
					local content = Instance.new("Frame")
					content.Name = "Content"
					content.Parent = instance
					table.insert(hosts, instance)
					return instance
				end,
				update = function(instance, assignment)
					if assignment ~= nil then
						instance:SetAttribute("index", assignment.value.index)
						local content = instance:FindFirstChild("Content") :: Frame
						content.Size = if axis == Axis.Y
							then UDim2.new(1, 0, 0, assignment.value.length)
							else UDim2.new(0, assignment.value.length, 1, 0)
					end
				end,
			},
		}
		local virtualizer = createVirtualizer(virtualizerOptions)
		local list
		list = {
			scrollingFrame = scrollingFrame,
			virtualizer = virtualizer,
			layout = layout,
			hosts = hosts,
			-- Visible hosts with the Canvas offset of their main-axis start.
			placedRows = function()
				local rows = {}
				for _, host in hosts do
					if host.Parent ~= nil and host.Visible and host:IsDescendantOf(scrollingFrame) then
						local offset = if axis == Axis.Y
							then host.AbsolutePosition.Y
								- scrollingFrame.AbsolutePosition.Y
								+ scrollingFrame.CanvasPosition.Y
							else host.AbsolutePosition.X
								- scrollingFrame.AbsolutePosition.X
								+ scrollingFrame.CanvasPosition.X
						local length = if axis == Axis.Y then host.AbsoluteSize.Y else host.AbsoluteSize.X
						table.insert(rows, {
							host = host,
							index = host:GetAttribute("index"),
							offset = offset,
							length = length,
						})
					end
				end
				table.sort(rows, function(left, right)
					return left.index < right.index
				end)
				return rows
			end,
			destroy = function()
				virtualizer.destroy()
				layout.destroy()
				container:Destroy()
			end,
		}
		return list
	end

	local function waitFrames(count: number)
		for _ = 1, count do
			RunService.Heartbeat:Wait()
		end
	end

	local function expectAtLayoutOffsets(list)
		local rows = list.placedRows()
		expect(#rows).toBeGreaterThan(0)
		for _, row in rows do
			expect({ index = row.index, offset = row.offset }).toEqual({
				index = row.index,
				offset = list.layout.getItemLayout(row.index).startOffset,
			})
		end
	end

	it("places measured Items at their Layout offsets once measured", function()
		local list = createList({})
		waitFrames(6)

		expectAtLayoutOffsets(list)
		for _, row in list.placedRows() do
			expect(row.length).toBe(lengthFor(row.index))
		end
		list.virtualizer.scrollToOffset(900)
		waitFrames(6)
		expectAtLayoutOffsets(list)
		list.destroy()
	end)

	it("never paints overlapping or separated Items while scrolling toward Start", function()
		local list = createList({ initialScrollAlignment = Core.ScrollAlignment.End })
		waitFrames(6)
		local failures = {}
		local frame = 0
		local connection = RunService.PreSimulation:Connect(function()
			frame += 1
			local rows = list.placedRows()
			for index = 2, #rows do
				local previous, current = rows[index - 1], rows[index]
				if
					current.index == previous.index + 1
					and math.abs(current.offset - (previous.offset + previous.length)) > 0.5
				then
					table.insert(
						failures,
						`frame {frame}: rows {previous.index} and {current.index} are {current.offset - (previous.offset + previous.length)} px apart`
					)
				end
			end
		end)
		for _ = 1, 30 do
			list.scrollingFrame.CanvasPosition -= Vector2.new(0, 60)
			RunService.Heartbeat:Wait()
		end
		connection:Disconnect()

		expect(failures).toEqual({})
		list.destroy()
	end)

	-- Viewport offsets of painted rows, sampled once per frame after the
	-- render step.
	local function sampleViewportOffsets(list, frames: number, eachFrame: () -> ())
		local samples = {}
		local connection = RunService.PreSimulation:Connect(function()
			local offsets = {}
			for _, row in list.placedRows() do
				offsets[row.index] = row.offset - list.scrollingFrame.CanvasPosition.Y
			end
			table.insert(samples, offsets)
		end)
		for _ = 1, frames do
			eachFrame()
			RunService.Heartbeat:Wait()
		end
		RunService.PreSimulation:Wait()
		connection:Disconnect()
		return samples
	end

	-- Overscan mounts each Item above the viewport before it is visible, so
	-- its measurement lands above the anchor, where Anchor correction absorbs
	-- it. Without overscan the entering Item is the anchor itself.
	it("keeps visible Items still while scrolling toward Start through unmeasured Items", function()
		local list = createList({ itemCount = 120, overscan = 2, initialScrollAlignment = Core.ScrollAlignment.End })
		waitFrames(6)
		local samples = sampleViewportOffsets(list, 30, function()
			list.scrollingFrame.CanvasPosition -= Vector2.new(0, 60)
		end)

		local failures = {}
		for frame = 2, #samples do
			for index, offset in samples[frame] do
				local previous = samples[frame - 1][index]
				if previous ~= nil and math.abs(offset - previous - 60) > 0.5 then
					table.insert(failures, `frame {frame}: row {index} moved {offset - previous} px`)
				end
			end
		end
		expect(failures).toEqual({})
		list.destroy()
	end)

	it("keeps the anchor Item still when an Item above it grows", function()
		local list = createList({ itemCount = 60, overscan = 2 })
		list.virtualizer.scrollToOffset(1000)
		waitFrames(6)
		local anchor = list.placedRows()[1]
		for _, row in list.placedRows() do
			if row.offset >= list.scrollingFrame.CanvasPosition.Y then
				anchor = row
				break
			end
		end
		local anchorOffset = anchor.offset - list.scrollingFrame.CanvasPosition.Y
		local above = list.placedRows()[1]
		expect(above.index).toBeLessThan(anchor.index)
		local content = above.host:FindFirstChild("Content") :: Frame
		local grown = false
		local samples = sampleViewportOffsets(list, 6, function()
			if not grown then
				grown = true
				content.Size += UDim2.fromOffset(0, 40)
			end
		end)

		expect(list.layout.getItemLayout(above.index).length).toBe(lengthFor(above.index) + 40)
		for frame = 1, #samples do
			expect({ frame = frame, offset = samples[frame][anchor.index] }).toEqual({
				frame = frame,
				offset = anchorOffset,
			})
		end
		list.destroy()
	end)

	-- A StyleRule resizes the Item only during the engine's render, after the
	-- pre-paint pass, so only the stack itself can keep the anchor still.
	it("keeps the anchor Item still in the frame a style grows an Item above it", function()
		local list = createList({
			itemCount = 60,
			overscan = 2,
			beforeCreate = function(scrollingFrame)
				local styleSheet = Instance.new("StyleSheet")
				local rule = Instance.new("StyleRule")
				rule.Selector = ".Grown"
				rule:SetProperty("Size", UDim2.new(1, 0, 0, 200))
				rule.Parent = styleSheet
				styleSheet.Parent = scrollingFrame.Parent
				local styleLink = Instance.new("StyleLink")
				styleLink.StyleSheet = styleSheet
				styleLink.Parent = scrollingFrame.Parent
			end,
		})
		list.virtualizer.scrollToOffset(1000)
		waitFrames(6)
		local anchor
		for _, row in list.placedRows() do
			if row.offset >= list.scrollingFrame.CanvasPosition.Y then
				anchor = row
				break
			end
		end
		local anchorOffset = anchor.offset - list.scrollingFrame.CanvasPosition.Y
		local above = list.placedRows()[1]
		expect(above.index).toBeLessThan(anchor.index)
		RunService:BindToRenderStep("GrowAboveAnchor", Enum.RenderPriority.First.Value, function()
			RunService:UnbindFromRenderStep("GrowAboveAnchor")
			local extra = Instance.new("Frame")
			extra.BackgroundTransparency = 1
			extra:AddTag("Grown")
			extra.Parent = above.host
		end)
		local samples = sampleViewportOffsets(list, 6, function() end)

		expect(list.layout.getItemLayout(above.index).length).toBe(200)
		for frame = 1, #samples do
			expect({ frame = frame, offset = samples[frame][anchor.index] }).toEqual({
				frame = frame,
				offset = anchorOffset,
			})
		end
		list.destroy()
	end)

	it("stacks measured Items on the horizontal axis", function()
		local list = createList({
			axis = Axis.X,
			frameSize = UDim2.fromOffset(400, 100),
		})
		waitFrames(6)

		expectAtLayoutOffsets(list)
		list.destroy()
	end)

	it("keeps End Content alignment for short Content", function()
		local list = createList({
			itemCount = 3,
			contentAlignment = Core.ScrollAlignment.End,
		})
		waitFrames(6)

		local rows = list.placedRows()
		expect(#rows).toBe(3)
		expect(rows[3].offset + rows[3].length).toBe(400)
		list.destroy()
	end)

	-- A Pending Host may still show another Item's content at another
	-- length, so it gives its space to a placeholder too.
	for _, phase in { HostPresentationPhase.Hidden, HostPresentationPhase.Pending } do
		it(`keeps the Layout length of a {phase} Item`, function()
			local list = createList({
				layout = Core.Layout.measured({ estimatedItemLength = 50 }),
				presentItemView = function(itemView, state, _assignmentChanged, sink)
					if state == nil then
						sink.apply(itemView, nil)
						return
					end
					itemView:SetAttribute("index", state.index)
					local content = itemView:FindFirstChild("Content") :: Frame
					content.Size = UDim2.new(1, 0, 0, if state.index == 2 then 10 else 50)
					sink.apply(itemView, {
						host = itemView,
						phase = if state.index == 2 then phase else HostPresentationPhase.Presented,
						state = state,
					})
				end,
			})
			waitFrames(12)

			local rows = list.placedRows()
			expect(rows[1].index).toBe(1)
			expect(rows[2].index).toBe(3)
			expect(rows[2].offset).toBe(100)
			list.destroy()
		end)
	end

	it("remeasures an Item whose wrapped text grows", function()
		local list = createList({})
		waitFrames(6)
		local host = list.placedRows()[1].host
		local label = Instance.new("TextLabel")
		label.AutomaticSize = Enum.AutomaticSize.Y
		label.Size = UDim2.fromScale(1, 0)
		label.TextWrapped = true
		label.Text = "Short"
		label.Parent = host
		waitFrames(4)

		label.Text = string.rep("Streaming text that wraps across lines. ", 12)
		waitFrames(4)

		expect(label.TextFits).toBe(true)
		expect(list.layout.getItemLayout(1).length).toBe(label.AbsoluteSize.Y)
		expect(label.AbsoluteSize.Y).toBeGreaterThan(lengthFor(1))
		list.destroy()
	end)

	it("leaves the ScrollingFrame's own children in place", function()
		local decoration
		local list = createList({
			beforeCreate = function(scrollingFrame)
				decoration = Instance.new("Frame")
				decoration.Position = UDim2.fromOffset(0, 5)
				decoration.Size = UDim2.fromOffset(10, 10)
				decoration.Parent = scrollingFrame
			end,
		})
		waitFrames(2)

		expect(decoration.Parent).toBe(list.scrollingFrame)
		expect(decoration.AbsolutePosition.Y - list.scrollingFrame.AbsolutePosition.Y).toBe(5)
		list.destroy()
	end)

	it(
		"stacks measured lists, including sticky ones, places known geometry absolutely, and switches at runtime",
		function()
			local function directChildren(list)
				local count = 0
				for _, host in list.hosts do
					if host.Parent == list.scrollingFrame then
						count += 1
					end
				end
				return count
			end

			local sticky = createList({
				isItemStickyHeader = function(key)
					return key == "row-1"
				end,
			})
			waitFrames(6)
			expect(directChildren(sticky)).toBeLessThan(#sticky.placedRows())
			sticky.destroy()

			local list = createList({})
			waitFrames(6)
			expect(directChildren(list)).toBe(0)
			local stackedLayout = list.layout
			local knownGeometry =
				{ Core.Layout.uniform({ itemLength = 50 }), Core.Layout.grid({ itemLength = 50, crossAxisCount = 2 }) }
			for _, layout in knownGeometry do
				list.virtualizer.setLayout(layout)
				waitFrames(2)
				expect(directChildren(list)).toBe(#list.placedRows())
			end

			list.layout = stackedLayout
			list.virtualizer.setLayout(stackedLayout)
			waitFrames(6)
			expect(directChildren(list)).toBe(0)
			expectAtLayoutOffsets(list)
			for _, layout in knownGeometry do
				layout.destroy()
			end
			list.destroy()
		end
	)

	describe("sticky headers", function()
		local HEADER_INTERVAL = 6

		local function isHeaderIndex(index: number): boolean
			return index % HEADER_INTERVAL == 1
		end

		local function createStickyList(options)
			options.itemCount = 120
			options.overscan = 2
			options.isItemStickyHeader = function(key)
				return isHeaderIndex(tonumber(string.match(key, "%d+")) :: number)
			end
			return createList(options)
		end

		-- Scrolls by `step` each frame and checks every painted frame: Items
		-- other than the stuck header sit against their neighbours and move
		-- only by the scroll, and the stuck header sits at the viewport
		-- start unless the next header pushes it out.
		local function stickyFailures(list, frames: number, step: number): ({ string }, number, number)
			local failures = {}
			local stuckFrames, pushedFrames = 0, 0
			local previousTops: { [number]: number }? = nil
			local frame = 0
			local connection = RunService.PreSimulation:Connect(function()
				frame += 1
				local scroll = list.scrollingFrame.CanvasPosition.Y
				local stuck = nil
				for index = 1, 120, HEADER_INTERVAL do
					if list.layout.getItemLayout(index).startOffset <= scroll then
						stuck = index
					end
				end
				local rows = {}
				local tops: { [number]: number } = {}
				local stuckRow = nil
				for _, row in list.placedRows() do
					local top = row.offset - scroll
					if row.index == stuck then
						stuckRow = { top = top, length = row.length }
					else
						table.insert(rows, { index = row.index, top = top, length = row.length })
						tops[row.index] = top
					end
				end
				for position = 2, #rows do
					local previous, current = rows[position - 1], rows[position]
					local gap = current.top - (previous.top + previous.length)
					if current.index == previous.index + 1 and math.abs(gap) > 0.5 then
						table.insert(
							failures,
							`frame {frame}: rows {previous.index} and {current.index} are {gap} px apart`
						)
					end
				end
				if previousTops ~= nil then
					for index, top in tops do
						local before = previousTops[index]
						if before ~= nil and math.abs(top - before + step) > 0.5 then
							table.insert(failures, `frame {frame}: row {index} moved {top - before} px`)
						end
					end
				end
				previousTops = tops
				if stuckRow ~= nil then
					local nextTop = tops[(stuck :: number) + HEADER_INTERVAL]
					local expected = if nextTop == nil then 0 else math.min(0, nextTop - stuckRow.length)
					stuckFrames += 1
					if expected < 0 then
						pushedFrames += 1
					end
					if math.abs(stuckRow.top - expected) > 0.5 then
						table.insert(
							failures,
							`frame {frame}: stuck header {stuck} at {stuckRow.top}, expected {expected}`
						)
					end
				end
			end)
			for _ = 1, frames do
				list.scrollingFrame.CanvasPosition += Vector2.new(0, step)
				RunService.Heartbeat:Wait()
			end
			RunService.PreSimulation:Wait()
			connection:Disconnect()
			return failures, stuckFrames, pushedFrames
		end

		local function expectStickyFrames(list, frames: number, step: number)
			local failures, stuckFrames, pushedFrames = stickyFailures(list, frames, step)
			expect(failures).toEqual({})
			expect(stuckFrames).toBe(frames)
			expect(pushedFrames).toBeGreaterThan(0)
		end

		it("keeps Items and the stuck header in place while scrolling toward End through unmeasured Items", function()
			local list = createStickyList({})
			waitFrames(6)

			expectStickyFrames(list, 30, 60)
			list.destroy()
		end)

		it("keeps Items and the stuck header in place while scrolling toward Start through unmeasured Items", function()
			local list = createStickyList({ initialScrollAlignment = Core.ScrollAlignment.End })
			waitFrames(6)

			expectStickyFrames(list, 30, -60)
			list.destroy()
		end)
	end)
end)

describe("styled measured content", function()
	local RunService = game:GetService("RunService")

	local function lengthFor(index: number): number
		return if index % 3 == 0 then 70 else 50
	end

	local function createList(options)
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Size = UDim2.fromOffset(200, 400)
		scrollingFrame.Parent = container
		if options.styledContent then
			local styleSheet = Instance.new("StyleSheet")
			for _, length in { 50, 70 } do
				local rule = Instance.new("StyleRule")
				rule.Selector = `.Row{length}`
				rule:SetProperty("Size", UDim2.new(1, 0, 0, length))
				rule.Parent = styleSheet
			end
			styleSheet.Parent = container
			local styleLink = Instance.new("StyleLink")
			styleLink.StyleSheet = styleSheet
			styleLink.Parent = container
		end
		local values = {}
		for index = 1, options.itemCount or 40 do
			table.insert(values, { id = `row-{index}`, index = index, length = lengthFor(index) })
		end
		local layout = Core.Layout.measured({ estimatedItemLength = 120 })
		local hosts = {}
		local virtualizer = createVirtualizer({
			scrollingFrame = scrollingFrame,
			axis = Axis.Y,
			dataSource = Core.DataSource.sequence(values, function(value)
				return value.id
			end),
			layout = layout,
			overscan = 0,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					local instance = Instance.new("Frame")
					instance.BackgroundTransparency = 1
					local content = Instance.new("Frame")
					content.Name = "Content"
					content.Parent = instance
					table.insert(hosts, instance)
					return instance
				end,
				update = function(instance, assignment)
					if assignment ~= nil then
						instance:SetAttribute("index", assignment.value.index)
						local content = instance:FindFirstChild("Content") :: Frame
						if options.styledContent then
							-- Like a React commit of tag-styled content: StyleRules
							-- apply only when the engine next renders.
							content:Destroy()
							content = Instance.new("Frame")
							content.Name = "Content"
							content:AddTag(`Row{assignment.value.length}`)
							content.AutomaticSize = Enum.AutomaticSize.Y
							content.Parent = instance
							-- Untagged and fixed-size, so the Host reads a believable
							-- length before its styles apply.
							local icon = Instance.new("Frame")
							icon.Name = "Icon"
							icon.Size = UDim2.fromOffset(18, 18)
							icon.Parent = content
						else
							content.Size = UDim2.new(1, 0, 0, assignment.value.length)
						end
					end
				end,
			},
		})
		return {
			scrollingFrame = scrollingFrame,
			virtualizer = virtualizer,
			layout = layout,
			-- Visible hosts with the Canvas offset of their main-axis start.
			placedRows = function()
				local rows = {}
				for _, host in hosts do
					if host.Parent ~= nil and host.Visible and host:IsDescendantOf(scrollingFrame) then
						table.insert(rows, {
							host = host,
							index = host:GetAttribute("index"),
							offset = host.AbsolutePosition.Y
								- scrollingFrame.AbsolutePosition.Y
								+ scrollingFrame.CanvasPosition.Y,
							length = host.AbsoluteSize.Y,
						})
					end
				end
				table.sort(rows, function(left, right)
					return left.index < right.index
				end)
				return rows
			end,
			destroy = function()
				virtualizer.destroy()
				layout.destroy()
				container:Destroy()
			end,
		}
	end

	local function waitFrames(count: number)
		for _ = 1, count do
			RunService.Heartbeat:Wait()
		end
	end

	local function gapFailures(list, frame: number, failures: { string }, firstCheckedIndex: number?)
		local rows = list.placedRows()
		for index = 2, #rows do
			local previous, current = rows[index - 1], rows[index]
			local gap = current.offset - (previous.offset + previous.length)
			local checked = previous.index >= (firstCheckedIndex or 1)
			if checked and current.index == previous.index + 1 and math.abs(gap) > 0.5 then
				table.insert(failures, `frame {frame}: rows {previous.index} and {current.index} are {gap} px apart`)
			end
		end
	end

	-- Samples the state each frame drew: PreSimulation runs after rendering
	-- and before Heartbeat measurement work.
	local function samplePaintedFrames(frames: number, eachFrame: () -> (), sample: (frame: number) -> ())
		local frame = 0
		local connection = RunService.PreSimulation:Connect(function()
			frame += 1
			sample(frame)
		end)
		for _ = 1, frames do
			eachFrame()
			RunService.Heartbeat:Wait()
		end
		RunService.PreSimulation:Wait()
		connection:Disconnect()
	end

	it("never records a zero length for Items whose styled content has not rendered yet", function()
		local list = createList({ itemCount = 80, styledContent = true })
		waitFrames(12)
		local failures = {}
		local jumped = false
		samplePaintedFrames(6, function()
			if not jumped then
				jumped = true
				-- After this frame's render and before its Heartbeat.
				RunService.PreSimulation:Once(function()
					list.scrollingFrame.CanvasPosition = Vector2.new(0, 2000)
				end)
			end
		end, function(frame)
			for _, row in list.placedRows() do
				local itemLayout = list.layout.getItemLayout(row.index)
				if itemLayout.length == 0 then
					table.insert(failures, `frame {frame}: row {row.index} recorded 0 px, painted {row.length} px`)
				end
			end
		end)

		expect(failures).toEqual({})
		expect(#list.placedRows()).toBeGreaterThan(0)
		list.destroy()
	end)

	it("keeps Items adjacent while flinging through styled content", function()
		local list = createList({ itemCount = 120, styledContent = true })
		waitFrames(12)
		local failures = {}
		samplePaintedFrames(20, function()
			list.scrollingFrame.CanvasPosition += Vector2.new(0, 250)
		end, function(frame)
			gapFailures(list, frame, failures)
		end)

		expect(failures).toEqual({})
		expect(#list.placedRows()).toBeGreaterThan(0)
		list.destroy()
	end)

	it("shows already-measured Items without a blank frame when they scroll back in", function()
		local list = createList({ itemCount = 120, styledContent = true })
		waitFrames(12)
		for _ = 1, 16 do
			list.scrollingFrame.CanvasPosition += Vector2.new(0, 250)
			waitFrames(1)
		end
		waitFrames(12)
		local failures = {}
		samplePaintedFrames(12, function()
			list.scrollingFrame.CanvasPosition -= Vector2.new(0, 250)
		end, function(frame)
			local viewportStart = list.scrollingFrame.CanvasPosition.Y
			local covered = viewportStart
			for _, row in list.placedRows() do
				if row.offset > covered + 0.5 then
					break
				end
				covered = math.max(covered, row.offset + row.length)
			end
			local viewportEnd = viewportStart + list.scrollingFrame.AbsoluteWindowSize.Y
			if covered < viewportEnd - 0.5 then
				table.insert(failures, `frame {frame}: blank from {covered} to {viewportEnd}`)
			end
		end)

		expect(failures).toEqual({})
		list.destroy()
	end)
end)

describe("ReparentableHost", function()
	it("creates and places a transparent host frame", function()
		local placeholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")

		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.None,
		})

		expect(host.Name).toBe("TestHost")
		expect(host.BackgroundTransparency).toBe(1)
		expect(host.BorderSizePixel).toBe(0)
		expect(host.Position).toEqual(UDim2.new())
		expect(host.Parent).toBe(placeholder)

		ReparentableHost.destroy(host)
		placeholder:Destroy()
	end)

	it("reparents the same host instance", function()
		local firstPlaceholder = Instance.new("Frame")
		local secondPlaceholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")

		ReparentableHost.place(host, {
			placeholder = firstPlaceholder,
			automaticSize = Enum.AutomaticSize.None,
		})
		local placedHost = firstPlaceholder:FindFirstChild("TestHost")
		ReparentableHost.place(host, {
			placeholder = secondPlaceholder,
			automaticSize = Enum.AutomaticSize.None,
		})

		expect(host).toBe(placedHost)
		expect(host.Parent).toBe(secondPlaceholder)
		expect(firstPlaceholder:FindFirstChild("TestHost")).toBeNil()

		ReparentableHost.destroy(host)
		firstPlaceholder:Destroy()
		secondPlaceholder:Destroy()
	end)

	it("detaches the host without destroying it", function()
		local placeholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")
		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.None,
		})

		ReparentableHost.detach(host)

		expect(host.Parent).toBeNil()
		expect(host.Name).toBe("TestHost")

		ReparentableHost.destroy(host)
		placeholder:Destroy()
	end)

	it("fills its placeholder when automatic sizing is disabled", function()
		local placeholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")

		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.None,
		})

		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.None)
		expect(host.Size).toEqual(UDim2.fromScale(1, 1))

		ReparentableHost.destroy(host)
		placeholder:Destroy()
	end)

	it("starts from zero size when automatic sizing is enabled", function()
		local placeholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")

		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.XY,
		})

		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.XY)
		expect(host.Size).toEqual(UDim2.new())

		ReparentableHost.destroy(host)
		placeholder:Destroy()
	end)

	it("fills the fixed cross axis when one axis is automatic", function()
		local placeholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")

		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.Y,
		})
		expect(host.Size).toEqual(UDim2.fromScale(1, 0))

		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.X,
		})
		expect(host.Size).toEqual(UDim2.fromScale(0, 1))

		ReparentableHost.destroy(host)
		placeholder:Destroy()
	end)

	it("detaches and destroys the host", function()
		local placeholder = Instance.new("Frame")
		local host = ReparentableHost.create("TestHost")
		local destroyingCount = 0
		host.Destroying:Connect(function()
			destroyingCount += 1
		end)
		ReparentableHost.place(host, {
			placeholder = placeholder,
			automaticSize = Enum.AutomaticSize.None,
		})

		ReparentableHost.destroy(host)

		expect(destroyingCount).toBe(1)
		expect(host.Parent).toBeNil()
		placeholder:Destroy()
	end)
end)

describe("SlotGeometry", function()
	it("maps item geometry to either Roblox axis", function()
		local itemLayout = {
			startOffset = 100,
			length = 40,
			crossAxisIndex = 2,
			crossAxisCount = 4,
		}

		local verticalPosition, verticalSize = SlotGeometry.get(itemLayout, Axis.Y, false)
		expect(verticalPosition).toEqual(UDim2.new(0.25, 0, 0, 100))
		expect(verticalSize).toEqual(UDim2.new(0.25, 0, 0, 40))

		local horizontalPosition, horizontalSize = SlotGeometry.get(itemLayout, Axis.X, false)
		expect(horizontalPosition).toEqual(UDim2.new(0, 100, 0.25, 0))
		expect(horizontalSize).toEqual(UDim2.new(0, 40, 0.25, 0))
	end)

	it("preserves pixel gutters between equal cross-axis slots", function()
		local itemLayout = {
			startOffset = 100,
			length = 40,
			crossAxisIndex = 2,
			crossAxisCount = 4,
			crossAxisSpacing = 12,
		}

		local verticalPosition, verticalSize = SlotGeometry.get(itemLayout, Axis.Y, false)
		expect(verticalPosition).toEqual(UDim2.new(0.25, 3, 0, 100))
		expect(verticalSize).toEqual(UDim2.new(0.25, -9, 0, 40))

		local horizontalPosition, horizontalSize = SlotGeometry.get(itemLayout, Axis.X, false)
		expect(horizontalPosition).toEqual(UDim2.new(0, 100, 0.25, 3))
		expect(horizontalSize).toEqual(UDim2.new(0, 40, 0.25, -9))
	end)

	it("keeps the cross axis available for vacant self-sizing slots", function()
		local verticalPosition, verticalSize = SlotGeometry.get(nil, Axis.Y, true)
		expect(verticalPosition).toEqual(UDim2.new())
		expect(verticalSize).toEqual(UDim2.fromScale(1, 0))

		local horizontalPosition, horizontalSize = SlotGeometry.get(nil, Axis.X, true)
		expect(horizontalPosition).toEqual(UDim2.new())
		expect(horizontalSize).toEqual(UDim2.fromScale(0, 1))
	end)

	it("uses Roblox automatic sizing only on the main axis", function()
		expect(SlotGeometry.getAutomaticSize(Axis.Y, true)).toBe(Enum.AutomaticSize.Y)
		expect(SlotGeometry.getAutomaticSize(Axis.X, true)).toBe(Enum.AutomaticSize.X)
		expect(SlotGeometry.getAutomaticSize(Axis.Y, false)).toBe(Enum.AutomaticSize.None)
	end)

	it("keeps the fixed axis filled for every automatic-size mode", function()
		expect(SlotGeometry.getHostSize(Enum.AutomaticSize.None)).toEqual(UDim2.fromScale(1, 1))
		expect(SlotGeometry.getHostSize(Enum.AutomaticSize.X)).toEqual(UDim2.fromScale(0, 1))
		expect(SlotGeometry.getHostSize(Enum.AutomaticSize.Y)).toEqual(UDim2.fromScale(1, 0))
		expect(SlotGeometry.getHostSize(Enum.AutomaticSize.XY)).toEqual(UDim2.new())
	end)
end)
