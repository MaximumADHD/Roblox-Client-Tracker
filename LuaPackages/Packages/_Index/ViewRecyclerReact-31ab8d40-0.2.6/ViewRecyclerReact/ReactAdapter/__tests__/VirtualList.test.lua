--!nonstrict
local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecyclerPackage = require(Root)
local ViewRecycler = ViewRecyclerPackage

local Axis = ViewRecycler.Axis
local AutoScrollPolicy = ViewRecycler.AutoScrollPolicy
local AutoScrollTarget = ViewRecycler.AutoScrollTarget
local ScrollAlignment = ViewRecycler.ScrollAlignment

local e = React.createElement

local function defineCommitReadyView(component)
	return ViewRecycler.createRecyclableView(component, {
		readiness = RecyclableViewReadiness.ReadyOnCommit,
		hideWhilePending = true,
	})
end

local function defineAssignmentReadyView(component)
	return ViewRecycler.createRecyclableView(component, {
		readiness = RecyclableViewReadiness.ReadyOnAssignment,
	})
end

type Item = {
	id: string,
	kind: string,
	text: string,
	height: number?,
	width: number?,
}

local function item(index: number, kind: string?): Item
	return {
		id = `item{index}`,
		kind = kind or "item",
		text = `Item {index}`,
	}
end

local function items(count: number): { Item }
	local result = table.create(count)
	for index = 1, count do
		table.insert(result, item(index))
	end
	return result
end

local function getScrollingFrame(container: Instance): ScrollingFrame
	local frame = container:FindFirstChildWhichIsA("ScrollingFrame", true)
	assert(frame ~= nil, "expected a mounted ScrollingFrame")
	return frame
end

local function collectContentTexts(container: Instance, visibleOnly: boolean): { string }
	local result = {}
	for _, descendant in container:GetDescendants() do
		local current: Instance? = descendant
		local isVisible = true
		while visibleOnly and current ~= nil and current ~= container do
			if current:IsA("GuiObject") and not current.Visible then
				isVisible = false
				break
			end
			current = current.Parent
		end
		if isVisible and descendant:IsA("TextLabel") and descendant.Name == "Content" and descendant.Text ~= "" then
			table.insert(result, descendant.Text)
		end
	end
	table.sort(result)
	return result
end

local function contentTexts(container: Instance): { string }
	return collectContentTexts(container, true)
end

local function allContentTexts(container: Instance): { string }
	return collectContentTexts(container, false)
end

local function getListItemViewFrame(instance: Instance): Frame
	local current = instance.Parent
	while current ~= nil do
		if current:IsA("Frame") and string.find(current.Name, "ListItemViewFrame", 1, true) == 1 then
			return current
		end
		current = current.Parent
	end
	error("expected content to have a ListItemViewFrame ancestor")
end

local function findHostByText(container: Instance, text: string): Frame
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Text == text then
			return getListItemViewFrame(descendant)
		end
	end
	error(`expected content with text "{text}"`)
end

local function getLargestViewportGap(container: Instance, scrollingFrame: ScrollingFrame): number
	local viewportStart = scrollingFrame.AbsolutePosition.Y
	local viewportEnd = viewportStart + scrollingFrame.AbsoluteWindowSize.Y
	local intervals = {}
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Name == "Content" then
			local current: Instance? = descendant
			local visible = true
			while current ~= nil and current ~= container do
				if current:IsA("GuiObject") and not current.Visible then
					visible = false
					break
				end
				current = current.Parent
			end
			if visible then
				local start = descendant.AbsolutePosition.Y
				local finish = start + descendant.AbsoluteSize.Y
				if finish > viewportStart and start < viewportEnd then
					table.insert(intervals, {
						start = start,
						finish = finish,
					})
				end
			end
		end
	end
	table.sort(intervals, function(left, right)
		return left.start < right.start
	end)
	local largestGap = 0
	local coveredEnd = viewportStart
	for _, interval in intervals do
		largestGap = math.max(largestGap, interval.start - coveredEnd)
		coveredEnd = math.max(coveredEnd, interval.finish)
	end
	return math.max(largestGap, viewportEnd - coveredEnd)
end

local function selectItemText(value: Item): string
	return value.text
end

local function TextContent(props)
	local value = SignalsReact.useSignalState(props.itemSignal)
	return e("TextLabel", {
		Name = "Content",
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Text = value.text,
	})
end

local DefaultItemView = defineCommitReadyView(TextContent)
local EmptyItemView = defineCommitReadyView(function()
	return nil
end)

local function ListWithOwnedUniformLayout(props)
	local layout = React.useState(function()
		return ViewRecycler.Layout.uniform({ itemLength = props.itemLength })
	end)
	local listProps = table.clone(props)
	listProps.itemLength = nil
	listProps.layout = layout
	return e(ViewRecycler.VirtualList, listProps)
end

local function mount(_container: Instance, root, props, component)
	ReactRoblox.act(function()
		root:render(e("Frame", {
			Name = "Host",
			Size = UDim2.fromOffset(200, 100),
		}, {
			List = e(component or ViewRecycler.VirtualList, props),
		}))
	end)
end

describe("VirtualList", function()
	it("activates and subscribes callbacks only after commit under Strict Mode", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local events = {}
		local subscribeCount = 0
		local disconnectCount = 0
		local dataSource = ViewRecycler.DataSource.sequence({ item(1) }, function(value)
			return value.id
		end)
		local originalSubscribe = dataSource.subscribe
		dataSource.subscribe = function(callback)
			subscribeCount += 1
			table.insert(events, "subscribe")
			local disconnect = originalSubscribe(callback)
			return function()
				disconnectCount += 1
				disconnect()
			end
		end
		local function CommitMarker()
			React.useLayoutEffect(function()
				table.insert(events, "commit")
			end, {})
			return nil
		end

		ReactRoblox.act(function()
			root:render(e(React.StrictMode, nil, {
				Marker = e(CommitMarker),
				List = e(ViewRecycler.VirtualList, {
					data = dataSource,
					layout = layout,
					axis = Axis.Y,
					itemType = DefaultItemView,
					onVisibleRangeChanged = function()
						table.insert(events, "visible")
					end,
				}),
			}))
		end)

		expect(events).toEqual({ "commit", "subscribe", "visible" })
		expect(subscribeCount).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(disconnectCount).toBe(1)
		layout.destroy()
		container:Destroy()
	end)

	it("exports ItemView and pinned-item constructors without legacy placement APIs", function()
		expect(type(ViewRecycler.createRecyclableView)).toBe("function")
		expect(type(ViewRecycler.createRecyclableComponent)).toBe("function")
		expect(type(ViewRecycler.createPinnedItem)).toBe("function")
		expect(type(ViewRecycler.useRecyclingItem)).toBe("function")
		expect(type(ViewRecycler.useRecyclingAssignment)).toBe("function")
		expect((ViewRecycler :: any).ListCell).toBeNil()
		expect((ViewRecycler :: any).Placement).toBeNil()
		expect((ViewRecycler :: any).StickyPolicy).toBeNil()
		expect((ViewRecycler :: any).supplementaryPlacement).toBeNil()
		expect((ViewRecycler.VirtualizerCommandType :: any).ApplyDataSourceChange).toBeNil()
		expect((ViewRecycler.VirtualizerCommandType :: any).SubmitLogicalMeasurements).toBeNil()
		expect((ViewRecycler :: any).VirtualizerEngine).toBeNil()
		expect((ViewRecycler :: any).RenderWindow).toBeNil()
	end)

	it("mounts through the default React facade", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecyclerPackage.Layout.uniform({ itemLength = 50 })

		mount(container, root, {
			data = {
				items = { item(1) },
				getItemKey = function(value)
					return value.id
				end,
			},
			layout = layout,
			axis = ViewRecyclerPackage.Axis.Y,
			itemType = DefaultItemView,
		}, ViewRecyclerPackage.VirtualList)

		expect(contentTexts(container)).toEqual({ "Item 1" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("reports visible boundaries independently from mounted boundaries", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local visibleRanges = {}
		local mountedRanges = {}

		mount(container, root, {
			data = {
				items = items(20),
				getItemKey = function(value)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscan = 2,
			itemType = DefaultItemView,
			onVisibleRangeChanged = function(range)
				table.insert(visibleRanges, table.clone(range))
			end,
			onMountedRangeChanged = function(range)
				table.insert(mountedRanges, table.clone(range))
			end,
		})
		expect(visibleRanges).toEqual({ { firstIndex = 1, lastIndex = 2 } })
		expect(mountedRanges).toEqual({ { firstIndex = 1, lastIndex = 4 } })

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 25)
		end)

		expect(visibleRanges).toEqual({
			{ firstIndex = 1, lastIndex = 2 },
			{ firstIndex = 1, lastIndex = 3 },
		})
		expect(mountedRanges).toEqual({ { firstIndex = 1, lastIndex = 4 } })

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("reports cancellable data prefetch ranges without mounting them", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local requests = {}
		local mountedRanges = {}

		mount(container, root, {
			data = {
				items = items(20),
				getItemKey = function(value)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			dataPrefetch = { endItems = 2 },
			itemType = DefaultItemView,
			onDataPrefetchRequested = function(request)
				table.insert(requests, request)
			end,
			onMountedRangeChanged = function(range)
				table.insert(mountedRanges, table.clone(range))
			end,
		})

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 100)
		end)

		local request = requests[#requests]
		expect(request.edge).toBe("end")
		expect(request.range).toEqual({ firstIndex = 5, lastIndex = 6 })
		expect(request.isCurrent()).toBe(true)
		expect(mountedRanges[#mountedRanges]).toEqual({ firstIndex = 3, lastIndex = 4 })

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(request.isCurrent()).toBe(false)
		layout.destroy()
		container:Destroy()
	end)

	it("accepts asymmetric overscan policies without changing the fixed default", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local mountedRanges = {}

		mount(container, root, {
			data = {
				items = items(20),
				getItemKey = function(value)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscanPolicy = {
				compute = function()
					return { before = 0, after = 2 }
				end,
			},
			itemType = DefaultItemView,
			onMountedRangeChanged = function(range)
				table.insert(mountedRanges, table.clone(range))
			end,
		})

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 200)
		end)

		expect(mountedRanges[#mountedRanges]).toEqual({ firstIndex = 5, lastIndex = 8 })

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("forwards opt-in Core diagnostics without changing list behavior", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local sawRange = false
		local sawPool = false

		mount(container, root, {
			data = {
				items = { item(1), item(2), item(3) },
				getItemKey = function(value)
					return value.id
				end,
			},
			diagnostics = function(event)
				sawRange = sawRange or event.kind == "rangeChanged"
				sawPool = sawPool or event.kind == "poolChanged"
			end,
			layout = layout,
			axis = Axis.Y,
			itemType = DefaultItemView,
		})

		expect(sawRange).toBe(true)
		expect(sawPool).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("routes shared-scope pool diagnostics separately from list diagnostics", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local scopeEvents = {}
		local listEvents = {}

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(200, 100),
			}, {
				Scope = e(ViewRecycler.RecyclingScope, {
					diagnostics = function(event)
						table.insert(scopeEvents, event.kind)
					end,
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = {
							items = { item(1), item(2), item(3) },
							getItemKey = function(value)
								return value.id
							end,
						},
						diagnostics = function(event)
							table.insert(listEvents, event.kind)
						end,
						layout = layout,
						axis = Axis.Y,
						itemType = DefaultItemView,
					}),
				}),
			}))
		end)

		expect(table.find(scopeEvents, "poolChanged")).never.toBeNil()
		expect(table.find(scopeEvents, "rangeChanged")).toBeNil()
		expect(table.find(listEvents, "rangeChanged")).never.toBeNil()
		expect(table.find(listEvents, "itemViewsSynchronized")).never.toBeNil()
		expect(table.find(listEvents, "poolChanged")).toBeNil()

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("does not expose internal adapter machinery from the React root", function()
		local publicApi = ViewRecycler :: any
		expect(publicApi.Core).toBe(nil)
		expect(publicApi.Adapter).toBe(nil)
		expect(publicApi.AdapterPrimitives).toBe(nil)
		expect(publicApi.DebugFlags).toBe(nil)
	end)

	it("rejects a list without an item type", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		expect(function()
			mount(container, root, {
				data = ViewRecycler.DataSource.snapshot(items(1), function(value: Item)
					return value.id
				end),
				layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
				axis = Axis.Y,
			})
		end).toThrow("`itemType` is required")

		pcall(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
		end)
		container:Destroy()
	end)

	it("reserves scroll host position and Canvas properties", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })

		expect(function()
			mount(container, root, {
				data = ViewRecycler.DataSource.snapshot(items(1), function(value: Item)
					return value.id
				end),
				layout = layout,
				axis = Axis.Y,
				itemType = DefaultItemView,
				scrollingFrameProps = {
					CanvasSize = UDim2.fromOffset(0, 500),
				},
			})
		end).toThrow("CanvasSize is already used by ViewRecycler")

		pcall(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("rejects an unregistered item type function", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		expect(function()
			mount(container, root, {
				data = ViewRecycler.DataSource.snapshot(items(1), function(value: Item)
					return value.id
				end),
				layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
				axis = Axis.Y,
				itemType = function()
					return nil
				end,
			})
		end).toThrow("must return a Recyclable view type")

		pcall(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
		end)
		container:Destroy()
	end)

	it("rejects a selector that returns an unregistered component", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		expect(function()
			mount(container, root, {
				data = ViewRecycler.DataSource.snapshot(items(1), function(value: Item)
					return value.id
				end),
				layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
				axis = Axis.Y,
				itemType = function()
					return function()
						return nil
					end
				end,
			})
		end).toThrow("must return a Recyclable view type")

		pcall(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
		end)
		container:Destroy()
	end)

	it("renders the initial viewport without a primer scroll or resize", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 25 })

		mount(container, root, {
			data = {
				items = listItems,
				getItemKey = function(value: Item)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = DefaultItemView,
		})

		local frame = getScrollingFrame(container)
		expect(frame.CanvasSize.Y.Offset).toBe(500)
		expect(frame.ScrollingDirection).toBe(Enum.ScrollingDirection.Y)
		expect(contentTexts(container)).toEqual({ "Item 1", "Item 2", "Item 3", "Item 4" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("presents newly visible masonry items inside a stale scalar band", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(3)
		local lengths = { 100, 1000, 100 }
		local layout = ViewRecycler.Layout.masonry({
			getItemLength = function(index)
				return lengths[index]
			end,
			crossAxisCount = 2,
		})

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = DefaultItemView,
		})
		expect(contentTexts(container)).toEqual({ "Item 1", "Item 2" })

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 100)
		end)

		expect(contentTexts(container)).toEqual({ "Item 2", "Item 3" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("moves the canvas to the new axis when axis changes", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 25 })
		local props = {
			data = {
				items = listItems,
				getItemKey = function(value: Item)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = DefaultItemView,
		}

		mount(container, root, props)
		local frame = getScrollingFrame(container)
		expect(frame.CanvasSize).toBe(UDim2.fromOffset(0, 500))

		local horizontalProps = table.clone(props)
		horizontalProps.axis = Axis.X
		mount(container, root, horizontalProps)
		expect(frame.CanvasSize).toBe(UDim2.fromOffset(500, 0))
		expect(frame.ScrollingDirection).toBe(Enum.ScrollingDirection.X)
		expect(contentTexts(container)).toEqual({
			"Item 1",
			"Item 2",
			"Item 3",
			"Item 4",
			"Item 5",
			"Item 6",
			"Item 7",
			"Item 8",
		})

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("updates measured ItemView host sizing when axis changes", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 25 })
		local props = {
			data = {
				items = { item(1) },
				getItemKey = function(value: Item)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = DefaultItemView,
		}

		mount(container, root, props)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame
		local contentRoot = (container:FindFirstChild("Content", true) :: TextLabel).Parent :: Frame
		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.Y)
		expect(host.Size).toEqual(UDim2.fromScale(1, 0))
		expect(contentRoot.AutomaticSize).toBe(Enum.AutomaticSize.Y)
		expect(contentRoot.Size).toEqual(UDim2.fromScale(1, 0))

		local horizontalProps = table.clone(props)
		horizontalProps.axis = Axis.X
		mount(container, root, horizontalProps)
		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.X)
		expect(host.Size).toEqual(UDim2.fromScale(0, 1))
		expect(contentRoot.AutomaticSize).toBe(Enum.AutomaticSize.X)
		expect(contentRoot.Size).toEqual(UDim2.fromScale(0, 1))

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("supports both data modes while retaining released ItemViews", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(3)
		local mounts = 0
		local unmounts = 0
		local TrackingItemView = defineCommitReadyView(function(props)
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e(TextContent, props)
		end)
		local sharedProps = {
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			itemType = TrackingItemView,
		}

		local declarativeProps = table.clone(sharedProps)
		declarativeProps.data = {
			items = listItems,
			getItemKey = function(value: Item)
				return value.id
			end,
		}
		mount(container, root, declarativeProps)
		local declarativeMounts = mounts
		expect(declarativeMounts).toBeGreaterThan(0)

		local dataSourceProps = table.clone(sharedProps)
		dataSourceProps.data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
			return value.id
		end)
		mount(container, root, dataSourceProps)
		expect(unmounts).toBe(0)
		expect(mounts).toBeGreaterThan(declarativeMounts)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("atomically grows data with a matching custom layout", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		local function customLayout(values)
			return ViewRecycler.Layout.create({
				getItemLayout = function(index)
					assert(values[index] ~= nil, "layout read outside its matching data")
					return {
						startOffset = (index - 1) * 50,
						length = 50,
					}
				end,
			})
		end
		local function renderList(values)
			mount(container, root, {
				data = {
					items = values,
					getItemKey = function(value: Item)
						return value.id
					end,
				},
				layout = customLayout(values),
				axis = Axis.Y,
				overscan = 0,
				preserveScrollPositionOnChange = false,
				itemType = DefaultItemView,
			})
		end

		renderList(listItems)
		local grown = table.clone(listItems)
		table.insert(grown, 1, {
			id = "inserted",
			kind = "item",
			text = "Inserted",
		})
		renderList(grown)

		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(1050)
		expect(contentTexts(container)).toEqual({ "Inserted", "Item 1" })

		local updated = table.clone(grown)
		updated[1] = table.clone(updated[1])
		updated[1].text = "Updated inserted"
		renderList(updated)
		expect(contentTexts(container)).toEqual({ "Item 1", "Updated inserted" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("measures self-sizing rows and updates the canvas length", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		listItems[1].height = 30
		listItems[2].height = 90
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local contentLengths = {}
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.None,
				Size = UDim2.new(1, 0, 0, value.height or 50),
				Text = value.text,
			})
		end)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = MeasuredItemView,
			onContentLengthChanged = function(contentLength)
				table.insert(contentLengths, contentLength)
			end,
		})

		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(1000)
		expect(contentLengths[#contentLengths]).toBe(1000)

		ReactRoblox.act(function()
			RunService.Heartbeat:Wait()
			task.wait()
		end)

		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(1020)
		expect(contentLengths[#contentLengths]).toBe(1020)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("settles rapid scrolling without leaving uncovered viewport coordinates", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(5000)
		local random = Random.new(1337)
		local words = string.split(
			"measurement correction keeps visible content anchored while variable wrapped rows replace estimated geometry",
			" "
		)
		for index, value in listItems do
			local parts = table.create(45)
			for _ = 1, random:NextInteger(8, 45) do
				table.insert(parts, words[random:NextInteger(1, #words)])
			end
			value.text = `Item #{index}: {table.concat(parts, " ")}`
		end
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 72 })
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 0),
			}, {
				Content = e("TextLabel", {
					Name = "Content",
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.fromScale(1, 0),
					Text = value.text,
					TextSize = 17,
					TextWrapped = true,
				}),
				Padding = e("UIPadding", {
					PaddingBottom = UDim.new(0, 6),
				}),
			})
		end)

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Name = "Host",
				Size = UDim2.fromOffset(1024, 488),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
						return value.id
					end),
					layout = layout,
					axis = Axis.Y,
					overscan = 8,
					itemType = MeasuredItemView,
				}),
			}))
		end)
		local scrollingFrame = getScrollingFrame(container)

		local offset = 0
		for _ = 1, 20 do
			local velocity = 1200
			for _ = 1, 8 do
				ReactRoblox.act(function()
					offset += velocity
					scrollingFrame.CanvasPosition = Vector2.new(0, offset)
					RunService.Heartbeat:Wait()
				end)
				velocity *= 0.72
			end
			ReactRoblox.act(function()
				for _ = 1, 12 do
					RunService.Heartbeat:Wait()
					task.wait()
				end
			end)
			expect(getLargestViewportGap(container, scrollingFrame)).toBeLessThan(7)
		end

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end, 15000)

	it("measures a committed row inserted before the visible anchor", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		for _, value in listItems do
			value.height = 40
		end
		local dataSource = ViewRecycler.DataSource.sequence(listItems, function(value: Item)
			return value.id
		end)
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 40 })
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.new(1, 0, 0, value.height),
				Text = value.text,
			})
		end)

		mount(container, root, {
			data = dataSource,
			layout = layout,
			axis = Axis.Y,
			overscan = 2,
			itemType = MeasuredItemView,
		})
		local scrollingFrame = getScrollingFrame(container)
		ReactRoblox.act(function()
			scrollingFrame.CanvasPosition = Vector2.new(0, 360)
			RunService.Heartbeat:Wait()
			task.wait()
		end)

		ReactRoblox.act(function()
			dataSource.insert(9, {
				id = "inserted-before-anchor",
				kind = "item",
				text = "Inserted before anchor",
				height = 80,
			})
		end)
		ReactRoblox.act(function()
			for _ = 1, 3 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)

		local content: TextLabel? = nil
		for _, descendant in container:GetDescendants() do
			if
				descendant:IsA("TextLabel")
				and descendant.Name == "Content"
				and descendant.Text == "Inserted before anchor"
			then
				content = descendant
				break
			end
		end
		expect(scrollingFrame.CanvasSize.Y.Offset).toBe(880)
		expect(content).never.toBeNil()
		expect(getListItemViewFrame(content :: TextLabel).AbsoluteSize.Y).toBe(80)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("propagates binding-driven wrapped text growth into measured geometry", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local root = ReactRoblox.createRoot(container)
		local text, setText = React.createBinding("Short response")
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 30 })
		local StreamingItemView = defineCommitReadyView(function()
			return e("TextLabel", {
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.Y,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -20, 0, 0),
				Text = text,
				TextWrapped = true,
			})
		end)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot({ item(1) }, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = StreamingItemView,
		})
		ReactRoblox.act(function()
			for _ = 1, 3 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)
		local initialLength = getScrollingFrame(container).CanvasSize.Y.Offset

		ReactRoblox.act(function()
			setText(
				"This response streams through a binding and becomes long enough to wrap across several measured lines."
			)
			for _ = 1, 5 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)

		local content = container:FindFirstChild("Content", true) :: TextLabel
		expect(content.TextWrapped).toBe(true)
		expect(content.AbsoluteSize.X).toBe(180)
		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBeGreaterThan(initialLength)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("keeps an end-aligned chat at the end while bound text grows", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local root = ReactRoblox.createRoot(container)
		local text, setText = React.createBinding("Short response")
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 30 })
		local StreamingItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.Y,
				Position = UDim2.fromOffset(10, 0),
				RichText = value.id == "item10",
				Size = UDim2.new(1, -20, 0, 0),
				Text = if value.id == "item10" then text else value.text,
				TextWrapped = true,
			}, {
				MinimumSize = e("UISizeConstraint", {
					MinSize = Vector2.new(0, 30),
				}),
			})
		end)
		local props: any = table.clone(ViewRecycler.ChatPreset.create())
		props.data = ViewRecycler.DataSource.snapshot(items(10), function(value: Item)
			return value.id
		end)
		props.layout = layout
		props.axis = Axis.Y
		props.overscan = 0
		props.itemType = StreamingItemView

		mount(container, root, props)
		ReactRoblox.act(function()
			for _ = 1, 5 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)
		local frame = getScrollingFrame(container)
		local initialLength = frame.CanvasSize.Y.Offset
		expect(math.abs(frame.CanvasPosition.Y - math.max(0, initialLength - frame.AbsoluteWindowSize.Y))).toBeLessThan(
			2
		)

		ReactRoblox.act(function()
			setText(
				"This response streams through a binding and becomes long enough to wrap across several measured lines while the chat continues following the end."
			)
			for _ = 1, 5 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)

		local grownLength = frame.CanvasSize.Y.Offset
		expect(grownLength).toBeGreaterThan(initialLength)
		expect(math.abs(frame.CanvasPosition.Y - math.max(0, grownLength - frame.AbsoluteWindowSize.Y))).toBeLessThan(2)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("restores a zero-sized measured row when its content appears", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(3)
		listItems[1].height = 0
		listItems[2].height = 64
		listItems[3].height = 64
		local dataSource = ViewRecycler.DataSource.sequence(listItems, function(value: Item)
			return value.id
		end)
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.new(1, 0, 0, value.height),
				Text = value.text,
			})
		end)

		mount(container, root, {
			data = dataSource,
			layout = layout,
			axis = Axis.Y,
			overscan = 1,
			itemType = MeasuredItemView,
		})
		ReactRoblox.act(function()
			for _ = 1, 3 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)

		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(128)

		local visibleFirstItem = table.clone(listItems[1])
		visibleFirstItem.height = 80
		visibleFirstItem.text = "Appeared"
		ReactRoblox.act(function()
			dataSource.setItem(1, visibleFirstItem)
		end)
		ReactRoblox.act(function()
			for _ = 1, 5 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)

		expect(contentTexts(container)).toEqual({ "Appeared", "Item 2", "Item 3" })
		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(208)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("measures self-sizing columns and updates the horizontal canvas length", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		listItems[1].width = 30
		listItems[2].width = 90
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.None,
				Size = UDim2.new(0, value.width or 50, 1, 0),
				Text = value.text,
			})
		end)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.X,
			overscan = 0,
			itemType = MeasuredItemView,
		})

		expect(getScrollingFrame(container).CanvasSize.X.Offset).toBe(1000)

		ReactRoblox.act(function()
			RunService.Heartbeat:Wait()
			task.wait()
		end)

		expect(getScrollingFrame(container).CanvasSize.X.Offset).toBe(1020)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("does not rebind visible signal consumers for a tail insertion", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSourceItems = items(20)
		local dataSource = ViewRecycler.DataSource.sequence(dataSourceItems, function(value: Item)
			return value.id
		end)
		local renderCounts = {}

		local function SignalContent(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			renderCounts[value.id] = (renderCounts[value.id] or 0) + 1
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.fromScale(1, 1),
				Text = value.text,
			})
		end
		local SignalItemView = defineCommitReadyView(SignalContent)

		mount(container, root, {
			data = dataSource,
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			itemType = SignalItemView,
		})
		local item1RenderCount = renderCounts.item1
		local item2RenderCount = renderCounts.item2
		expect(type(item1RenderCount)).toBe("number")
		expect(type(item2RenderCount)).toBe("number")

		ReactRoblox.act(function()
			dataSource.append(item(21))
		end)

		expect(renderCounts.item1).toBe(item1RenderCount)
		expect(renderCounts.item2).toBe(item2RenderCount)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("recycles by item type and renders updated assignment data", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listItems = {
			item(1, "header"),
			item(2, "row"),
			item(3, "header"),
			item(4, "row"),
		}
		local dataSource = ViewRecycler.DataSource.sequence(listItems, function(value: Item)
			return value.id
		end)
		local function createTypedItemView()
			return defineCommitReadyView(function(props)
				return e(TextContent, {
					itemSignal = props.itemSignal,
				})
			end)
		end
		local itemViewTypes = {
			header = createTypedItemView(),
			row = createTypedItemView(),
		}

		mount(container, root, {
			data = dataSource,
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = function(value: Item)
				return itemViewTypes[value.kind]
			end,
		})
		expect(contentTexts(container)).toEqual({ "Item 1", "Item 2" })

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 100)
		end)

		expect(contentTexts(container)).toEqual({ "Item 3", "Item 4" })

		local updatedItems = table.clone(listItems)
		updatedItems[3] = table.clone(updatedItems[3])
		updatedItems[3].text = "Updated header"
		updatedItems[4] = table.clone(updatedItems[4])
		updatedItems[4].text = "Updated row"
		ReactRoblox.act(function()
			dataSource.transaction(function()
				dataSource.setItem(3, updatedItems[3])
				dataSource.setItem(4, updatedItems[4])
			end)
		end)

		expect(contentTexts(container)).toEqual({ "Updated header", "Updated row" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("keeps sticky and pinned ItemViews in the viewport overlay without remounting", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listItems = {
			item(1, "header"),
			item(2, "row"),
			item(3, "header"),
			item(4, "row"),
		}
		local headerUnmounts = 0
		local HeaderItemView = defineCommitReadyView(function(props)
			React.useEffect(function()
				return function()
					headerUnmounts += 1
				end
			end, {})
			return e(TextContent, props)
		end)
		local RowItemView = defineCommitReadyView(TextContent)
		local ToolbarItemView = defineCommitReadyView(TextContent)
		local StatusItemView = defineCommitReadyView(TextContent)

		mount(container, root, {
			data = {
				items = listItems,
				getItemKey = function(value: Item)
					return value.id
				end,
			},
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = function(value: Item)
				return if value.kind == "header" then HeaderItemView else RowItemView
			end,
			isItemStickyHeader = function(value: Item)
				return value.kind == "header"
			end,
			pinnedStartItem = ViewRecycler.createPinnedItem({
				key = "$toolbar",
				value = {
					id = "$toolbar",
					kind = "toolbar",
					text = "Toolbar",
				},
				itemType = ToolbarItemView,
			}),
			pinnedEndItem = ViewRecycler.createPinnedItem({
				key = "$status",
				value = {
					id = "$status",
					kind = "status",
					text = "Status",
				},
				itemType = StatusItemView,
			}),
		})
		expect(contentTexts(container)).toEqual({ "Item 1", "Item 2", "Status", "Toolbar" })
		local overlay = container:FindFirstChild("ViewRecyclerOverlay", true) :: Frame
		expect(overlay).never.toBeNil()
		expect(overlay.Active).toBe(false)
		expect(overlay.ClipsDescendants).toBe(true)
		expect(overlay.Size).toBe(UDim2.new(1, -12, 1, 0))
		local pinnedContentBeforeScroll = nil
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextLabel") and descendant.Text == "Item 1" then
				pinnedContentBeforeScroll = descendant
				break
			end
		end
		expect(pinnedContentBeforeScroll).never.toBeNil()
		local pinnedHost = getListItemViewFrame(pinnedContentBeforeScroll :: TextLabel)
		expect(pinnedHost.Parent).toBe(getScrollingFrame(container))
		expect(pinnedHost.Position.Y.Offset).toBe(0)
		expect(pinnedHost.ZIndex).toBe(1)
		local toolbarContent = nil
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextLabel") and descendant.Text == "Toolbar" then
				toolbarContent = descendant
				break
			end
		end
		expect(toolbarContent).never.toBeNil()
		local toolbarHost = getListItemViewFrame(toolbarContent :: TextLabel)
		expect(toolbarHost.Parent).toBe(overlay)
		expect(toolbarHost.Position.Y.Offset).toBe(0)

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 10)
		end)
		expect(toolbarHost.Position.Y.Offset).toBe(0)

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 20)
		end)
		expect(toolbarHost.Position.Y.Offset).toBe(0)

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 60)
		end)

		local pinnedContent = nil
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextLabel") and descendant.Text == "Item 1" then
				pinnedContent = descendant
				break
			end
		end
		expect(pinnedContent).never.toBeNil()
		expect((pinnedContent :: TextLabel):FindFirstAncestorWhichIsA("ScrollingFrame")).toBeNil()
		expect((pinnedContent :: TextLabel):FindFirstAncestor("ViewRecyclerOverlay")).toBe(overlay)
		expect(pinnedContent).toBe(pinnedContentBeforeScroll)
		expect(getListItemViewFrame(pinnedContent :: TextLabel)).toBe(pinnedHost)
		expect(pinnedHost.Position.Y.Offset).toBe(-10)
		expect(pinnedHost.ZIndex).toBe(2)
		expect(toolbarHost.Position.Y.Offset).toBe(0)
		expect(headerUnmounts).toBe(0)

		ReactRoblox.act(function()
			local scrollingFrame = getScrollingFrame(container)
			scrollingFrame.ScrollBarThickness = 16
			scrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
		end)
		expect(overlay.Position).toBe(UDim2.fromOffset(16, 0))
		expect(overlay.Size).toBe(UDim2.new(1, -16, 1, 0))

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("places the first canvas row below the sticky header after a pinned start item measures", function()
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local root = ReactRoblox.createRoot(container)
		local itemLength = 42
		local spacing = 2
		local stride = itemLength + spacing
		local toolbarHeight = 34
		local layout = ViewRecycler.Layout.uniform({
			itemLength = itemLength,
			spacing = spacing,
		})
		local listItems = {}
		for section = 1, 6 do
			table.insert(listItems, {
				id = `header-{section}`,
				kind = "header",
				text = `Section {section}`,
			})
			for row = 1, 5 do
				table.insert(listItems, {
					id = `row-{section}-{row}`,
					kind = "row",
					text = `Item {section}.{row}`,
				})
			end
		end
		local HeaderItemView = defineAssignmentReadyView(TextContent)
		local RowItemView = defineAssignmentReadyView(TextContent)
		local ToolbarItemView = defineAssignmentReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.new(1, 0, 0, toolbarHeight),
				Text = value.text,
			})
		end)

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Name = "Host",
				Size = UDim2.fromOffset(420, 560),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = listItems,
						getItemKey = function(value: Item)
							return value.id
						end,
					},
					layout = layout,
					axis = Axis.Y,
					overscan = 2,
					itemType = function(value: Item)
						return if value.kind == "header" then HeaderItemView else RowItemView
					end,
					isItemStickyHeader = function(value: Item)
						return value.kind == "header"
					end,
					pinnedStartItem = ViewRecycler.createPinnedItem({
						key = "$toolbar",
						value = {
							id = "$toolbar",
							kind = "toolbar",
							text = "Toolbar",
						},
						itemType = ToolbarItemView,
					}),
				}),
			}))
		end)

		local dataLength = layout.getContentLength()
		ReactRoblox.act(function()
			for _ = 1, 8 do
				if getScrollingFrame(container).CanvasSize.Y.Offset >= dataLength + toolbarHeight then
					break
				end
				RunService.Heartbeat:Wait()
				task.wait()
			end
		end)

		local overlay = container:FindFirstChild("ViewRecyclerOverlay", true) :: Frame
		local scrollingFrame = getScrollingFrame(container)
		local toolbarHost = findHostByText(container, "Toolbar")
		local headerHost = findHostByText(container, "Section 1")
		local rowHost = findHostByText(container, "Item 1.1")

		expect(scrollingFrame.CanvasPosition.Y).toBe(0)
		expect(toolbarHost.Parent).toBe(overlay)
		expect(headerHost.Parent).toBe(scrollingFrame)
		expect(rowHost.Parent).toBe(scrollingFrame)
		expect(headerHost.Position.Y.Offset).toBe(toolbarHeight)
		expect(rowHost.Position.Y.Offset).toBe(toolbarHeight + stride)
		expect(rowHost.AbsolutePosition.Y).toBeGreaterThanOrEqual(
			headerHost.AbsolutePosition.Y + headerHost.AbsoluteSize.Y - 0.5
		)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("reassigns binding-only itemViews synchronously without rerendering", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local renders = 0
		local ImmediateItemView = defineAssignmentReadyView(function(props)
			renders += 1
			local text = SignalsReact.useSignalBinding(function(scope)
				return selectItemText(props.itemSignal(scope))
			end)
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.fromScale(1, 1),
				Text = text,
			})
		end)

		mount(container, root, {
			data = {
				items = items(20),
				getItemKey = function(value: Item)
					return value.id
				end,
			},
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			itemType = ImmediateItemView,
		})
		expect(contentTexts(container)).toEqual({ "Item 1", "Item 2" })
		local initialRenders = renders

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 100)
		end)

		expect(contentTexts(container)).toEqual({ "Item 3", "Item 4" })
		expect(renders).toBe(initialRenders)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("preserves nested component mount identity through reassignment and vacancy", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local dataSource = ViewRecycler.DataSource.sequence(items(20), function(value: Item)
			return value.id
		end)
		local mounts = 0
		local unmounts = 0
		local nextMountId = 0
		local mountIdsByItem = {}

		local function PhysicalRow(props)
			local mountId = React.useState(function()
				nextMountId += 1
				return nextMountId
			end)
			mountIdsByItem[props.itemId] = mountId
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.fromScale(1, 1),
				Text = props.text,
			})
		end
		local RecycledItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			local text = SignalsReact.useSignalBinding(function(scope)
				return selectItemText(props.itemSignal(scope))
			end)
			return e(PhysicalRow, {
				itemId = value.id,
				text = text,
			})
		end)

		mount(container, root, {
			data = dataSource,
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = RecycledItemView,
		})
		expect(contentTexts(container)).toEqual({ "Item 1", "Item 2" })
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)
		local firstMountId = mountIdsByItem.item1
		local secondMountId = mountIdsByItem.item2

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 100)
		end)
		expect(contentTexts(container)).toEqual({ "Item 3", "Item 4" })
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)

		ReactRoblox.act(function()
			dataSource.reset({})
		end)
		expect(contentTexts(container)).toEqual({})
		expect(allContentTexts(container)).toEqual({})
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)

		ReactRoblox.act(function()
			dataSource.reset({ item(5), item(6) })
		end)
		expect(contentTexts(container)).toEqual({ "Item 5", "Item 6" })
		expect(allContentTexts(container)).toEqual({ "Item 5", "Item 6" })
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)
		local reusedMountIds = {
			[mountIdsByItem.item5] = true,
			[mountIdsByItem.item6] = true,
		}
		expect(reusedMountIds[firstMountId]).toBe(true)
		expect(reusedMountIds[secondMountId]).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(unmounts).toBe(mounts)
		layout.destroy()
		container:Destroy()
	end)

	it("unmounts vacant itemViews when the retention limit evicts them", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(2), function(value: Item)
			return value.id
		end)
		local mounts = 0
		local unmounts = 0
		local TrackingItemView = defineCommitReadyView(function(props)
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e(TextContent, props)
		end)
		local props = {
			data = dataSource,
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			itemType = TrackingItemView,
		}

		mount(container, root, props)
		expect(mounts).toBe(2)

		ReactRoblox.act(function()
			dataSource.reset({})
		end)
		expect(unmounts).toBe(0)
		expect(#allContentTexts(container)).toBe(0)

		local boundedProps = table.clone(props)
		boundedProps.maxPoolSize = 0
		mount(container, root, boundedProps)
		expect(unmounts).toBe(2)
		expect(allContentTexts(container)).toEqual({})

		ReactRoblox.act(function()
			dataSource.reset(items(2))
		end)
		expect(mounts).toBe(4)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(unmounts).toBe(mounts)
		props.layout.destroy()
		container:Destroy()
	end)

	it("transfers a vacant ItemView between lists in one RecyclingScope without remounting", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local firstSource = ViewRecycler.DataSource.sequence({ item(1) }, function(value: Item)
			return value.id
		end)
		local secondSource = ViewRecycler.DataSource.sequence({}, function(value: Item)
			return value.id
		end)
		local firstLayout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local secondLayout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local mounts = 0
		local unmounts = 0
		local SharedItemView = defineCommitReadyView(function(props)
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e(TextContent, props)
		end)

		local function renderSurface(showFirst: boolean)
			return e("Frame", {
				Size = UDim2.fromOffset(100, 100),
			}, {
				Scope = e(ViewRecycler.RecyclingScope, nil, {
					First = if showFirst
						then e(ViewRecycler.VirtualList, {
							data = firstSource,
							layout = firstLayout,
							axis = Axis.Y,
							overscan = 0,
							itemType = SharedItemView,
							scrollingFrameProps = { Name = "FirstList" },
						})
						else nil,
					Second = e(ViewRecycler.VirtualList, {
						data = secondSource,
						layout = secondLayout,
						axis = Axis.Y,
						overscan = 0,
						itemType = SharedItemView,
						scrollingFrameProps = { Name = "SecondList" },
					}),
				}),
			})
		end

		ReactRoblox.act(function()
			root:render(renderSurface(true))
		end)
		expect(contentTexts(container)).toEqual({ "Item 1" })
		expect(mounts).toBe(1)
		local originalHost = getListItemViewFrame(container:FindFirstChild("Content", true))
		expect(originalHost.Parent.Name).toBe("FirstList")

		ReactRoblox.act(function()
			firstSource.reset({})
		end)
		expect(contentTexts(container)).toEqual({})
		expect(mounts).toBe(1)
		expect(unmounts).toBe(0)

		ReactRoblox.act(function()
			secondSource.reset({ item(2) })
		end)

		expect(contentTexts(container)).toEqual({ "Item 2" })
		expect(mounts).toBe(1)
		expect(unmounts).toBe(0)
		local secondList = container:FindFirstChild("SecondList", true)
		local content = container:FindFirstChild("Content", true)
		expect(content:IsDescendantOf(secondList)).toBe(true)
		expect(getListItemViewFrame(content)).toBe(originalHost)
		expect(originalHost.Parent).toBe(secondList)

		ReactRoblox.act(function()
			root:render(renderSurface(false))
		end)
		expect(contentTexts(container)).toEqual({ "Item 2" })
		expect(mounts).toBe(1)
		expect(unmounts).toBe(0)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(unmounts).toBe(1)
		firstLayout.destroy()
		secondLayout.destroy()
		container:Destroy()
	end)

	it("reconciles application context changes without remounting list itemViews", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listItems = items(20)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local mounts = 0
		local unmounts = 0
		local AppVersionContext = React.createContext(0)

		local function TemplateContent(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			local appVersion = React.useContext(AppVersionContext)
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.fromScale(1, 1),
				Text = `{value.text}:{appVersion}`,
			})
		end
		local TemplateItemView = defineCommitReadyView(TemplateContent)
		local listProps = {
			data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = TemplateItemView,
		}

		local function ContextualList(props)
			return e(AppVersionContext.Provider, {
				value = props.appVersion,
			}, {
				List = e(ViewRecycler.VirtualList, listProps),
			})
		end

		local function renderList(appVersion)
			mount(container, root, {
				appVersion = appVersion,
			}, ContextualList)
		end

		renderList(1)
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)
		expect(contentTexts(container)).toEqual({ "Item 1:1", "Item 2:1" })

		renderList(1)
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)

		renderList(2)
		expect(mounts).toBe(2)
		expect(unmounts).toBe(0)
		expect(contentTexts(container)).toEqual({ "Item 1:2", "Item 2:2" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(unmounts).toBe(mounts)
		container:Destroy()
	end)

	it("fails when visible items have duplicate keys", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		expect(function()
			mount(container, root, {
				data = ViewRecycler.DataSource.snapshot(items(2), function(_value: Item)
					return "duplicate"
				end),
				layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
				axis = Axis.Y,
				overscan = 0,
				itemType = DefaultItemView,
			})
		end).toThrow("duplicate key")

		pcall(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
		end)
		container:Destroy()
	end)

	it("assigns, transfers, and clears imperative and instance refs", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local firstRef: any = { current = nil }
		local secondRef: any = { current = nil }
		local firstFrameRef: any = { current = nil }
		local secondFrameRef: any = { current = nil }
		local layout = ViewRecycler.Layout.uniform({ itemLength = 40 })

		local function render(listRef, scrollingFrameRef)
			mount(container, root, {
				data = ViewRecycler.DataSource.snapshot({}),
				layout = layout,
				axis = Axis.Y,
				itemType = EmptyItemView,
				listRef = listRef,
				scrollingFrameRef = scrollingFrameRef,
			})
		end

		render(firstRef, firstFrameRef)
		expect(type(firstRef.current.scrollToIndex)).toBe("function")
		expect(firstFrameRef.current.ClassName).toBe("ScrollingFrame")

		render(secondRef, secondFrameRef)
		expect(firstRef.current).toBe(nil)
		expect(firstFrameRef.current).toBe(nil)
		expect(type(secondRef.current.scrollToIndex)).toBe("function")
		expect(secondFrameRef.current.ClassName).toBe("ScrollingFrame")

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(secondRef.current).toBe(nil)
		expect(secondFrameRef.current).toBe(nil)
		container:Destroy()
	end)

	it("scrolls from native input and the public handle with alignment", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listRef: any = { current = nil }
		local viewportSizes = {}
		local scrollOffsets = {}

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(items(20), function(value: Item)
				return value.id
			end),
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			itemType = DefaultItemView,
			listRef = listRef,
			onViewportChanged = function(size)
				table.insert(viewportSizes, size)
			end,
			onScrollOffsetChanged = function(offset)
				table.insert(scrollOffsets, offset)
			end,
		})

		local frame = getScrollingFrame(container)
		expect(viewportSizes[#viewportSizes].X).toBeGreaterThan(0)
		expect(viewportSizes[#viewportSizes].Y).toBe(100)
		ReactRoblox.act(function()
			listRef.current.scrollToIndex(5, { alignment = ScrollAlignment.Center })
		end)
		expect(frame.CanvasPosition.Y).toBe(175)
		expect(scrollOffsets[#scrollOffsets]).toBe(175)
		expect(contentTexts(container)).toEqual({ "Item 4", "Item 5", "Item 6" })
		expect(listRef.current.getScrollState().scrollOffset).toBe(175)
		local snapshot = listRef.current.captureScrollAnchorSnapshot()
		expect(snapshot.anchorKey).toBe("item4")
		expect(snapshot.offsetWithinItem).toBe(25)

		ReactRoblox.act(function()
			expect(listRef.current.scrollBy(50)).toBe(225)
		end)
		expect(frame.CanvasPosition.Y).toBe(225)
		ReactRoblox.act(function()
			expect(listRef.current.scrollToOffset(9999)).toBe(900)
		end)
		expect(frame.CanvasPosition.Y).toBe(900)
		ReactRoblox.act(function()
			expect(listRef.current.restoreScrollAnchorSnapshot(snapshot)).toBe(175)
		end)
		expect(frame.CanvasPosition.Y).toBe(175)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 300)
		end)
		expect(scrollOffsets[#scrollOffsets]).toBe(300)
		expect(contentTexts(container)).toEqual({ "Item 7", "Item 8" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("settles the first center jump to a measured final item", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listRef: any = { current = nil }
		local listItems = items(5000)
		listItems[5000].height = 100
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.None,
				Size = UDim2.new(1, 0, 0, value.height or 50),
				Text = value.text,
			})
		end)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = MeasuredItemView,
			listRef = listRef,
		})

		local frame = getScrollingFrame(container)
		ReactRoblox.act(function()
			listRef.current.scrollToIndex(5000, { alignment = ScrollAlignment.Center })
		end)
		local estimatedOffset = frame.CanvasPosition.Y

		ReactRoblox.act(function()
			RunService.Heartbeat:Wait()
			task.wait()
		end)

		local targetLayout = layout.getItemLayout(5000)
		local alignedOffset = targetLayout.startOffset + targetLayout.length / 2 - frame.AbsoluteWindowSize.Y / 2
		expect(targetLayout).toEqual({ startOffset = 249950, length = 100 })
		expect(frame.CanvasPosition.Y).toBe(alignedOffset)
		expect(frame.CanvasPosition.Y).never.toBe(estimatedOffset)
		expect(frame.CanvasPosition.Y).toBeLessThanOrEqual(targetLayout.startOffset)
		expect(frame.CanvasPosition.Y + frame.AbsoluteWindowSize.Y).toBeGreaterThanOrEqual(
			targetLayout.startOffset + targetLayout.length
		)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("settles a measured end target after the canvas grows", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local listRef: any = { current = nil }
		local listItems = items(20)
		listItems[20].height = 200
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local MeasuredItemView = defineCommitReadyView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.None,
				Size = UDim2.new(1, 0, 0, value.height or 50),
				Text = value.text,
			})
		end)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(listItems, function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			itemType = MeasuredItemView,
			listRef = listRef,
		})

		local frame = getScrollingFrame(container)
		ReactRoblox.act(function()
			listRef.current.scrollToIndex(20, { alignment = ScrollAlignment.Start })
		end)
		ReactRoblox.act(function()
			for _ = 1, 3 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)

		expect(layout.getItemLayout(20).startOffset).toBe(950)
		expect(frame.CanvasPosition.Y).toBe(950)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("applies initial end alignment", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(items(20), function(value: Item)
				return value.id
			end),
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			initialScrollAlignment = ScrollAlignment.End,
			itemType = DefaultItemView,
		})

		expect(getScrollingFrame(container).CanvasPosition.Y).toBe(900)
		expect(contentTexts(container)).toEqual({ "Item 19", "Item 20" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("places short content at the configured end edge", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(items(1), function(value: Item)
				return value.id
			end),
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			contentAlignment = ScrollAlignment.End,
			itemType = DefaultItemView,
		})

		local itemViewHost
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("Frame") and string.find(descendant.Name, "ListItemViewFrame", 1, true) == 1 then
				itemViewHost = descendant
				break
			end
		end
		expect(itemViewHost).never.toBeNil()
		expect((itemViewHost :: Frame).Position.Y.Offset).toBe(50)
		expect(getScrollingFrame(container).CanvasPosition.Y).toBe(0)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("applies initial end alignment from measured estimates", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(items(20), function(value: Item)
				return value.id
			end),
			layout = layout,
			axis = Axis.Y,
			overscan = 0,
			initialScrollAlignment = ScrollAlignment.End,
			itemType = DefaultItemView,
		})

		expect(getScrollingFrame(container).CanvasPosition.Y).toBe(900)
		expect(contentTexts(container)).toEqual({ "Item 19", "Item 20" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("applies initial end alignment on the horizontal axis", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		mount(container, root, {
			data = ViewRecycler.DataSource.snapshot(items(20), function(value: Item)
				return value.id
			end),
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.X,
			overscan = 0,
			initialScrollAlignment = ScrollAlignment.End,
			itemType = DefaultItemView,
		})

		local frame = getScrollingFrame(container)
		expect(frame.CanvasPosition.X).toBe(800)
		expect(frame.CanvasSize.X.Offset).toBe(1000)
		expect(frame.ScrollingDirection).toBe(Enum.ScrollingDirection.X)
		expect(contentTexts(container)).toEqual({ "Item 17", "Item 18", "Item 19", "Item 20" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("follows one data-source transaction from its prechange end state", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(3), function(value: Item)
			return value.id
		end)
		local decisions = 0

		mount(container, root, {
			data = dataSource,
			itemLength = 50,
			axis = Axis.Y,
			overscan = 0,
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = function(transaction, before)
				decisions += 1
				expect(transaction.changes).toEqual({
					{ type = ViewRecycler.DataSourceChangeType.Insert, index = 4, keys = { "item4" } },
					{ type = ViewRecycler.DataSourceChangeType.Insert, index = 5, keys = { "item5" } },
				})
				expect(before.scrollOffset).toBe(50)
				expect(before.viewportLength).toBe(100)
				expect(before.contentLength).toBe(150)
				expect(before.distanceFromEnd).toBe(0)
				return if before.atEnd then AutoScrollTarget.End else false
			end,
			itemType = DefaultItemView,
		}, ListWithOwnedUniformLayout)

		ReactRoblox.act(function()
			dataSource.transaction(function()
				dataSource.append(item(4))
				dataSource.append(item(5))
			end)
		end)

		expect(decisions).toBe(1)
		expect(getScrollingFrame(container).CanvasPosition.Y).toBe(150)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("stops following the end after the user scrolls away", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(5), function(value: Item)
			return value.id
		end)

		mount(container, root, {
			data = dataSource,
			itemLength = 50,
			axis = Axis.Y,
			overscan = 0,
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
			itemType = DefaultItemView,
		}, ListWithOwnedUniformLayout)
		local frame = getScrollingFrame(container)

		ReactRoblox.act(function()
			dataSource.append(item(6))
		end)
		expect(frame.CanvasPosition.Y).toBe(200)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 100)
			dataSource.append(item(7))
		end)
		expect(frame.CanvasPosition.Y).toBe(100)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("does not follow pagination growth without an auto-scroll policy", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(60), function(value: Item)
			return value.id
		end)
		local endReached = 0

		mount(container, root, {
			data = dataSource,
			itemLength = 50,
			axis = Axis.Y,
			overscan = 0,
			onEndReached = function()
				endReached += 1
				if endReached == 1 then
					dataSource.transaction(function()
						for index = 61, 90 do
							dataSource.append(item(index))
						end
					end)
				end
			end,
			itemType = DefaultItemView,
		}, ListWithOwnedUniformLayout)
		local frame = getScrollingFrame(container)
		local oldBottom = 60 * 50 - frame.AbsoluteWindowSize.Y

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, oldBottom)
			task.wait()
		end)

		expect(endReached).toBe(1)
		expect(dataSource.getItemCount()).toBe(90)
		expect(frame.CanvasPosition.Y).toBe(oldBottom)
		expect(frame.CanvasPosition.Y).never.toBe(90 * 50 - frame.AbsoluteWindowSize.Y)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("uses the chat preset threshold to follow near the end and disarm beyond it", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(5), function(value: Item)
			return value.id
		end)
		local props: any = table.clone(ViewRecycler.ChatPreset.create({
			endReachedThreshold = 20,
		}))
		props.data = dataSource
		props.itemLength = 50
		props.axis = Axis.Y
		props.overscan = 0
		props.itemType = DefaultItemView
		mount(container, root, props, ListWithOwnedUniformLayout)
		local frame = getScrollingFrame(container)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 135)
			dataSource.append(item(6))
		end)
		expect(frame.CanvasPosition.Y).toBe(200)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 179)
			dataSource.append(item(7))
		end)
		expect(frame.CanvasPosition.Y).toBe(179)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("rearms edge callbacks after exit and structural transactions", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(10), function(value: Item)
			return value.id
		end)
		local starts = 0
		local ends = 0

		mount(container, root, {
			data = dataSource,
			itemLength = 50,
			axis = Axis.Y,
			overscan = 0,
			onStartReached = function()
				starts += 1
			end,
			onEndReached = function()
				ends += 1
			end,
			itemType = DefaultItemView,
		}, ListWithOwnedUniformLayout)

		local frame = getScrollingFrame(container)
		expect(starts).toBe(1)
		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 100)
			frame.CanvasPosition = Vector2.new(0, 0)
		end)
		expect(starts).toBe(2)

		ReactRoblox.act(function()
			dataSource.append(item(11))
		end)
		expect(starts).toBe(3)

		ReactRoblox.act(function()
			dataSource.setItem(1, {
				id = "item1",
				kind = "item",
				text = "Updated item 1",
			})
		end)
		expect(starts).toBe(3)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, dataSource.getItemCount() * 50 - frame.AbsoluteWindowSize.Y)
			task.wait()
		end)
		expect(ends).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("checks an eligible edge when its callback becomes available", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local starts = 0
		local props = {
			data = ViewRecycler.DataSource.snapshot(items(3), function(value: Item)
				return value.id
			end),
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			itemType = DefaultItemView,
		}

		mount(container, root, props)
		props.onStartReached = function()
			starts += 1
		end
		mount(container, root, props)
		expect(starts).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("allows follow callbacks to choose the start edge", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(5), function(value: Item)
			return value.id
		end)

		mount(container, root, {
			data = dataSource,
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			autoScrollOnChange = function()
				return AutoScrollTarget.Start
			end,
			itemType = DefaultItemView,
		})
		local frame = getScrollingFrame(container)
		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 100)
			dataSource.prepend({
				id = "item0",
				kind = "item",
				text = "Item 0",
			})
		end)
		expect(frame.CanvasPosition.Y).toBe(0)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("can opt out of maintaining visible content position", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local dataSource = ViewRecycler.DataSource.sequence(items(10), function(value: Item)
			return value.id
		end)

		mount(container, root, {
			data = dataSource,
			layout = ViewRecycler.Layout.uniform({ itemLength = 50 }),
			axis = Axis.Y,
			overscan = 0,
			preserveScrollPositionOnChange = false,
			itemType = DefaultItemView,
		})
		local frame = getScrollingFrame(container)
		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 100)
			dataSource.prepend({
				id = "item0",
				kind = "item",
				text = "Item 0",
			})
		end)
		expect(frame.CanvasPosition.Y).toBe(100)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("applies initial alignment again when the data source is replaced", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local function propsFor(dataSource)
			return {
				data = dataSource,
				layout = layout,
				axis = Axis.Y,
				overscan = 0,
				initialScrollAlignment = ScrollAlignment.End,
				itemType = DefaultItemView,
			}
		end

		mount(
			container,
			root,
			propsFor(ViewRecycler.DataSource.snapshot(items(3), function(value: Item)
				return value.id
			end))
		)
		expect(getScrollingFrame(container).CanvasPosition.Y).toBe(50)

		mount(
			container,
			root,
			propsFor(ViewRecycler.DataSource.snapshot(items(10), function(value: Item)
				return value.id
			end))
		)
		expect(getScrollingFrame(container).CanvasPosition.Y).toBe(400)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
