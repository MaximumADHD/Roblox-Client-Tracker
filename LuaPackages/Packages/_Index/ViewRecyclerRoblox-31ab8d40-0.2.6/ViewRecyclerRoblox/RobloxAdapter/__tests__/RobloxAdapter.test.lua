local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Axis = Core.Axis
local MeasurementBatcher = require(Root.RobloxAdapter.MeasurementBatcher)
local Measurer = require(Root.RobloxAdapter.Measurer)
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
	local virtualizer = RobloxAdapter.createVirtualizer(virtualizerOptions)
	local destroyVirtualizer = virtualizer.destroy
	virtualizer.destroy = function()
		destroyVirtualizer()
		recyclingScope.destroy()
	end
	return virtualizer
end

describe("RobloxAdapter root", function()
	it("exports the imperative Virtualizer and Recycling scope facades", function()
		expect((RobloxAdapter :: any).createItemViewPool).toBeNil()
		expect(type(RobloxAdapter.createRecyclingScope)).toBe("function")
		expect(type(RobloxAdapter.createVirtualizer)).toBe("function")
		expect((RobloxAdapter :: any).createListRuntime).toBeNil()
		expect((RobloxAdapter :: any).StickyPolicy).toBeNil()
		expect((RobloxAdapter :: any).SupplementaryPlacement).toBeNil()
		expect((RobloxAdapter :: any).VirtualizerCommandType).toBeNil()
		expect((RobloxAdapter :: any).VirtualizerEngine).toBeNil()
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
		expect(type(RobloxAdapter.Internal.ScrollingFrameVirtualizer)).toBe("table")
		expect(type(RobloxAdapter.Internal.ScrollingFrameSync)).toBe("table")
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
		expect(mountedRanges).toEqual({ { firstIndex = 1, lastIndex = 3 } })
		expect(virtualizer.getVisibleRange()).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(virtualizer.getMountedRange()).toEqual({ firstIndex = 1, lastIndex = 3 })

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
			isItemStickyHeader = function(value)
				return value.kind == "header"
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
		expect(assignments["header-a"].Parent).toBe(viewportOverlay)
		expect(assignments["header-a"].Position).toBe(UDim2.fromOffset(0, -1))
		expect(assignments["header-a"].ZIndex).toBe(2)
		expect(assignments["row-a"].Parent).toBe(scrollingFrame)

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
			isItemStickyHeader = function(value)
				return value.kind == "header"
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
		expect(header.Parent).toBe(scrollingFrame)
		expect(row.Parent).toBe(scrollingFrame)
		expect(header.Position.Y.Offset).toBe(toolbarHeight)
		expect(row.Position.Y.Offset).toBe(toolbarHeight + stride)
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

		expect((host :: Frame).Position.Y.Offset).toBe(80)
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
		local host = scrollingFrame:FindFirstChildWhichIsA("Frame") :: Frame
		guiService.SelectedObject = host

		dataSource.reset({ "b" })

		expect(guiService.SelectedObject).toBeNil()
		expect(selectionWasClearedBeforeUpdate).toBe(true)
		expect(scrollingFrame:FindFirstChildWhichIsA("Frame")).toBe(host)
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
				update = function(itemView, assignment)
					assignments[itemView] = assignment
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
				getItemViewType = function()
					return "row"
				end,
			})
		end
		local first = createHostVirtualizer(firstFrame, firstSource, firstLayout)
		local itemView = firstFrame:FindFirstChildWhichIsA("Frame")
		assert(itemView ~= nil, "expected first Virtualizer to place an ItemView")

		first.destroy()
		expect(itemView.Parent).toBeNil()
		local second = createHostVirtualizer(secondFrame, secondSource, secondLayout)

		expect(secondFrame:FindFirstChildWhichIsA("Frame")).toBe(itemView)
		expect(assignments[itemView].key).toBe("b")
		expect(created).toBe(1)

		second.destroy()
		recyclingScope.destroy()
		expect(itemView.Parent).toBeNil()
		firstLayout.destroy()
		secondLayout.destroy()
		firstFrame:Destroy()
		secondFrame:Destroy()
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

describe("Measurer", function()
	local function measurementIdentity(
		key: string,
		index: number?,
		assignmentGeneration: number?,
		itemRevision: number?
	)
		return {
			itemKey = key,
			itemIndex = index,
			assignmentGeneration = assignmentGeneration or 1,
			itemRevision = itemRevision or 0,
		}
	end

	it("reports the settled main-axis size for the current identity", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local instance = Instance.new("Frame")
		instance.Size = UDim2.fromOffset(80, 40)
		instance.Parent = container
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return measurementIdentity("row", 3)
			end,
			onItemMeasured = function(identity, length)
				table.insert(measurements, { identity = identity, length = length })
			end,
		})

		measurer.scheduleSettle()
		for _ = 1, 3 do
			game:GetService("RunService").Heartbeat:Wait()
		end

		expect(#measurements).toBeGreaterThan(0)
		for _, measurement in measurements do
			expect(measurement).toEqual({ identity = measurementIdentity("row", 3), length = 40 })
		end

		measurer.disconnect()
		container:Destroy()
	end)

	it("reports a settled zero main-axis size", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local instance = Instance.new("Frame")
		instance.Size = UDim2.fromOffset(80, 0)
		instance.Parent = container
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return measurementIdentity("collapsed", 1)
			end,
			onItemMeasured = function(identity, length)
				table.insert(measurements, { identity = identity, length = length })
			end,
		})

		measurer.scheduleSettle()
		for _ = 1, 3 do
			game:GetService("RunService").Heartbeat:Wait()
		end

		expect(measurements).toEqual({
			{ identity = measurementIdentity("collapsed", 1), length = 0 },
		})

		measurer.disconnect()
		container:Destroy()
	end)

	it("updates a zero measurement when content later grows", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local instance = Instance.new("Frame")
		instance.Size = UDim2.fromOffset(80, 0)
		instance.Parent = container
		for _ = 1, 2 do
			game:GetService("RunService").Heartbeat:Wait()
		end
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return measurementIdentity("appearing", 1)
			end,
			onItemMeasured = function(identity, length)
				table.insert(measurements, { identity = identity, length = length })
			end,
		})

		measurer.scheduleSettle()
		for _ = 1, 3 do
			game:GetService("RunService").Heartbeat:Wait()
		end
		expect(measurements[#measurements]).toEqual({ identity = measurementIdentity("appearing", 1), length = 0 })

		instance.Size = UDim2.fromOffset(80, 64)
		for _ = 1, 2 do
			game:GetService("RunService").Heartbeat:Wait()
		end

		expect(measurements[1]).toEqual({ identity = measurementIdentity("appearing", 1), length = 0 })
		expect(measurements[#measurements]).toEqual({ identity = measurementIdentity("appearing", 1), length = 64 })

		measurer.disconnect()
		container:Destroy()
	end)

	it("ignores measurements while the cross axis is unsettled", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local instance = Instance.new("Frame")
		instance.Size = UDim2.fromOffset(0, 40)
		instance.Parent = container
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return measurementIdentity("unsettled", 1)
			end,
			onItemMeasured = function(identity, length)
				table.insert(measurements, { identity = identity, length = length })
			end,
		})

		measurer.scheduleSettle()
		for _ = 1, 3 do
			game:GetService("RunService").Heartbeat:Wait()
		end

		expect(measurements).toEqual({})

		measurer.disconnect()
		container:Destroy()
	end)

	it("drops a pending measurement after identity changes", function()
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(200, 200)
		local instance = Instance.new("Frame")
		instance.Size = UDim2.fromOffset(80, 40)
		instance.Parent = container
		local identity = measurementIdentity("first", 1)
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return identity
			end,
			onItemMeasured = function(currentIdentity, length)
				table.insert(measurements, { identity = currentIdentity, length = length })
			end,
		})

		measurer.scheduleSettle()
		identity = measurementIdentity("second", 2)
		game:GetService("RunService").Heartbeat:Wait()

		expect(measurements).toEqual({})

		measurer.disconnect()
		container:Destroy()
	end)

	it("drops a pending measurement after same-key provenance changes", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local instance = Instance.new("Frame")
		instance.Size = UDim2.fromOffset(80, 40)
		instance.Parent = container
		local identity = measurementIdentity("same", 1, 1, 0)
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return identity
			end,
			onItemMeasured = function(currentIdentity, length)
				table.insert(measurements, { identity = currentIdentity, length = length })
			end,
		})

		measurer.scheduleSettle()
		identity = measurementIdentity("same", 1, 2, 1)
		for _ = 1, 3 do
			game:GetService("RunService").Heartbeat:Wait()
		end
		expect(#measurements).toBeGreaterThan(0)
		for _, measurement in measurements do
			expect(measurement).toEqual({ identity = identity, length = 40 })
		end

		measurer.disconnect()
		container:Destroy()
	end)

	it("validates every canonical identity field when delayed work executes", function()
		local sizeSignal = {
			Connect = function()
				return {
					Disconnect = function() end,
				}
			end,
		}
		local instance: any
		instance = setmetatable({}, {
			__index = function(_, key)
				if key == "AbsoluteSize" then
					return Vector2.new(80, 40)
				elseif key == "GetPropertyChangedSignal" then
					return function()
						return sizeSignal
					end
				end
				return nil
			end,
		})
		local identity = measurementIdentity("row", 1, 3, 4)
		local measurements = {}
		local measurer = Measurer.attach({
			instance = instance :: any,
			axis = Axis.Y,
			getIdentity = function()
				return identity
			end,
			onItemMeasured = function(currentIdentity)
				table.insert(measurements, currentIdentity)
			end,
		})
		local changes: { any } = {
			{ field = "itemKey", value = "other" },
			{ field = "itemIndex", value = 2 },
			{ field = "assignmentGeneration", value = 5 },
			{ field = "itemRevision", value = 6 },
			{ field = "pinnedPosition", value = "start" },
		}

		for _, change in changes do
			identity = measurementIdentity("row", 1, 3, 4)
			measurer.scheduleSettle()
			local mutableIdentity: any = identity
			mutableIdentity[change.field] = change.value
			game:GetService("RunService").Heartbeat:Wait()
			task.wait()
		end

		expect(measurements).toEqual({})
		measurer.disconnect()
	end)

	it("deduplicates an unchanged pending measurement identity", function()
		local instance = Instance.new("Frame")
		local identity = measurementIdentity("same", 1, 1, 0)
		local measurer = Measurer.attach({
			instance = instance,
			axis = Axis.Y,
			getIdentity = function()
				return identity
			end,
			onItemMeasured = function() end,
		})

		measurer.scheduleSettle()
		measurer.scheduleSettle()

		expect(measurer.getPendingCount()).toBe(1)
		measurer.disconnect()
		instance:Destroy()
	end)
end)

describe("MeasurementBatcher", function()
	it("rejects a deferred batch across a same-key source reset and accepts fresh provenance", function()
		local source = Core.DataSource.sequence({ "a" }, function(value)
			return value
		end)
		local layout = Core.Layout.measured({ estimatedItemLength = 50 })
		local recyclingScope = Core.Adapter.createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local runtime = Core.Adapter.createVirtualizer({
			dataSource = source,
			layout = layout,
			overscan = 0,
			recyclingScope = recyclingScope,
			getItemViewType = function()
				return "row"
			end,
		})
		runtime.dispatch({ type = Core.VirtualizerCommandType.Activate })
		runtime.dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 50,
			crossAxisLength = 100,
		})
		local itemView
		for _, candidate in runtime.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
			local intent = runtime.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = candidate })
			if intent ~= nil and intent.measurementIdentity.itemKey == "a" then
				itemView = candidate
				break
			end
		end
		assert(itemView ~= nil, "expected an itemView for key a")
		local stale =
			runtime.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView }).measurementIdentity
		runtime.dispatch({
			type = Core.VirtualizerCommandType.SubmitMeasurements,
			measurements = {
				{
					itemIndex = stale.itemIndex,
					itemKey = stale.itemKey,
					assignmentGeneration = stale.assignmentGeneration,
					itemRevision = stale.itemRevision,
					length = 100,
				},
			},
		})
		local scheduled = {}
		local batcher = MeasurementBatcher.new(function(measurements)
			runtime.dispatch({ type = Core.VirtualizerCommandType.SubmitMeasurements, measurements = measurements })
		end, function(callback)
			table.insert(scheduled, callback)
		end)
		batcher.add({
			itemIndex = stale.itemIndex,
			itemKey = stale.itemKey,
			assignmentGeneration = stale.assignmentGeneration,
			itemRevision = stale.itemRevision,
			length = 300,
		})

		source.reset({ "a" })
		scheduled[1]()
		expect(runtime.query({ type = Core.VirtualizerQueryType.GetItemLayout, index = 1 }).length).toBe(100)

		local fresh =
			runtime.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView }).measurementIdentity
		batcher.add({
			itemIndex = fresh.itemIndex,
			itemKey = fresh.itemKey,
			assignmentGeneration = fresh.assignmentGeneration,
			itemRevision = fresh.itemRevision,
			length = 140,
		})
		scheduled[2]()
		expect(runtime.query({ type = Core.VirtualizerQueryType.GetItemLayout, index = 1 }).length).toBe(140)

		batcher.destroy()
		runtime.dispatch({ type = Core.VirtualizerCommandType.Destroy })
		recyclingScope.destroy()
		layout.destroy()
	end)

	it("flushes all measurements scheduled in one turn as one batch", function()
		local scheduled: { () -> () } = {}
		local flushed = {}
		local batcher = MeasurementBatcher.new(function(measurements)
			table.insert(flushed, measurements)
		end, function(callback)
			table.insert(scheduled, callback)
		end)

		batcher.add({ itemKey = "a", itemIndex = 1, assignmentGeneration = 1, itemRevision = 0, length = 20 })
		batcher.add({ itemKey = "b", itemIndex = 2, assignmentGeneration = 2, itemRevision = 0, length = 30 })

		expect(#scheduled).toBe(1)
		expect(#flushed).toBe(0)
		scheduled[1]()
		expect(flushed).toEqual({
			{
				{ itemKey = "a", itemIndex = 1, assignmentGeneration = 1, itemRevision = 0, length = 20 },
				{ itemKey = "b", itemIndex = 2, assignmentGeneration = 2, itemRevision = 0, length = 30 },
			},
		})
	end)

	it("drops a scheduled batch after destruction", function()
		local scheduled: { () -> () } = {}
		local flushCount = 0
		local batcher = MeasurementBatcher.new(function()
			flushCount += 1
		end, function(callback)
			table.insert(scheduled, callback)
		end)

		batcher.add({ itemKey = "a", itemIndex = 1, assignmentGeneration = 1, itemRevision = 0, length = 20 })
		batcher.destroy()
		scheduled[1]()

		expect(flushCount).toBe(0)
	end)

	it("cancels a replacement-lifetime batch without canceling newer work", function()
		local scheduled: { () -> () } = {}
		local flushed = {}
		local batcher = MeasurementBatcher.new(function(measurements)
			table.insert(flushed, measurements)
		end, function(callback)
			table.insert(scheduled, callback)
		end)
		local stale = { itemKey = "a", itemIndex = 1, assignmentGeneration = 1, itemRevision = 0, length = 20 }
		local fresh = { itemKey = "a", itemIndex = 1, assignmentGeneration = 2, itemRevision = 0, length = 30 }

		batcher.add(stale)
		batcher.cancelPending()
		batcher.add(fresh)
		scheduled[1]()
		expect(flushed).toEqual({})
		scheduled[2]()
		expect(flushed).toEqual({ { fresh } })
	end)
end)
