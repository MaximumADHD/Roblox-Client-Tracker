--!nonstrict
local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local Signals = require(Root.Parent.Signals)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecyclerPackage = require(Root)
local ViewRecycler = ViewRecyclerPackage

local e = React.createElement

local function itemSignal(value)
	return Signals.createSignal(value)
end

type Item = {
	id: string,
	name: string,
	full: boolean,
	height: number,
}

local function items(count: number): { Item }
	local result = {}
	for index = 1, count do
		table.insert(result, {
			id = `item{index}`,
			name = `Item {index}`,
			full = index % 2 == 0,
			height = if index == 1 then 30 else 50,
		})
	end
	return result
end

local function getScrollingFrame(container: Instance): ScrollingFrame
	local frame = container:FindFirstChildWhichIsA("ScrollingFrame", true)
	assert(frame ~= nil)
	return frame
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

describe("VirtualList recyclable components", function()
	it("conditionally renders an inline Recyclable view from active", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local active, setActive = Signals.createSignal(true)
		local parentRenders = 0
		local mounts = 0
		local unmounts = 0
		local receivedActive = nil
		local Conditional = ViewRecycler.createRecyclableComponent(function(props)
			receivedActive = props.active
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "ConditionalContent",
				Text = props.text,
			})
		end)
		local function Parent()
			parentRenders += 1
			return e(Conditional, {
				active = active,
				itemSignal = itemSignal({ text = "inline" }),
			})
		end

		ReactRoblox.act(function()
			root:render(e(Parent))
		end)
		expect(container:FindFirstChild("ConditionalContent", true)).never.toBeNil()
		expect(receivedActive).toBeNil()
		local initialParentRenders = parentRenders
		expect(mounts).toBe(1)

		ReactRoblox.act(function()
			setActive(false)
		end)
		expect(container:FindFirstChild("ConditionalContent", true)).toBeNil()
		expect(parentRenders).toBe(initialParentRenders)
		expect(unmounts).toBe(1)

		ReactRoblox.act(function()
			setActive(true)
		end)
		expect(container:FindFirstChild("ConditionalContent", true)).never.toBeNil()
		expect(parentRenders).toBe(initialParentRenders)
		expect(mounts).toBe(2)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("changes composed occupancy from active without rendering the parent ItemView", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local active, setActive = Signals.createSignal(true)
		local parentRenders = 0
		local receivedActive = nil
		local Composed = ViewRecycler.createRecyclableComponent(function(props)
			receivedActive = props.active
			return e("TextLabel", {
				Name = "ConditionalComposedContent",
				Text = props.text,
			})
		end)
		local RowItemView = ViewRecycler.createRecyclableView(function()
			parentRenders += 1
			return e(Composed, {
				active = active,
				itemSignal = itemSignal({ text = "composed" }),
			})
		end)

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items(1),
						getItemKey = function(item)
							return item.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end)
		expect(container:FindFirstChild("ConditionalComposedContent", true)).never.toBeNil()
		expect(receivedActive).toBeNil()
		local initialParentRenders = parentRenders

		ReactRoblox.act(function()
			setActive(false)
		end)
		expect(container:FindFirstChild("ConditionalComposedContent", true)).toBeNil()
		expect(parentRenders).toBe(initialParentRenders)

		ReactRoblox.act(function()
			setActive(true)
		end)
		expect(container:FindFirstChild("ConditionalComposedContent", true)).never.toBeNil()
		expect(parentRenders).toBe(initialParentRenders)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("configures retained and newly assigned ItemViews from the latest list configuration", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local uniformLayout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local measuredLayout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local initialItems = items(1)
		local dataSource = ViewRecycler.DataSource.sequence(initialItems, function(value)
			return value.id
		end)
		local function ComposedContent(props)
			return e("TextLabel", {
				Name = "ComposedContent",
				Text = props.text,
			})
		end
		local Composed = ViewRecycler.createRecyclableComponent(ComposedContent, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local RowItemView = ViewRecycler.createRecyclableView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("Frame", nil, {
				Marker = e("TextLabel", {
					Name = "RowMarker",
					Text = value.id,
				}),
				Composed = if value.full then e(Composed, { itemSignal = itemSignal({ text = value.id }) }) else nil,
			})
		end, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})

		local function renderList(layout, axis)
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = dataSource,
					layout = layout,
					axis = axis,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end

		ReactRoblox.act(function()
			renderList(uniformLayout, ViewRecycler.Axis.Y)
		end)
		local retainedMarker = container:FindFirstChild("RowMarker", true) :: TextLabel
		local retainedFrame = getListItemViewFrame(retainedMarker)
		expect(retainedFrame.AutomaticSize).toBe(Enum.AutomaticSize.None)
		expect(container:FindFirstChild("ComposedContent", true)).toBeNil()

		ReactRoblox.act(function()
			renderList(measuredLayout, ViewRecycler.Axis.X)
		end)
		expect(getListItemViewFrame(retainedMarker)).toBe(retainedFrame)
		expect(retainedFrame.AutomaticSize).toBe(Enum.AutomaticSize.X)
		expect(retainedFrame.Size).toEqual(UDim2.fromScale(0, 1))

		local expandedItems = items(8)
		for _, value in expandedItems do
			value.full = true
		end
		ReactRoblox.act(function()
			dataSource.reset(expandedItems)
		end)

		local markers = {}
		local composedContentByText = {}
		for _, descendant in container:GetDescendants() do
			if descendant.Name == "RowMarker" then
				table.insert(markers, descendant)
			elseif descendant.Name == "ComposedContent" then
				composedContentByText[(descendant :: TextLabel).Text] = descendant
			end
		end
		expect(#markers).toBeGreaterThan(1)
		local sawNewItemView = false
		for _, marker in markers do
			local frame = getListItemViewFrame(marker)
			sawNewItemView = sawNewItemView or frame ~= retainedFrame
			expect(frame.AutomaticSize).toBe(Enum.AutomaticSize.X)
			expect(frame.Size).toEqual(UDim2.fromScale(0, 1))
			expect(composedContentByText[(marker :: TextLabel).Text]).never.toBeNil()
		end
		expect(sawNewItemView).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		uniformLayout.destroy()
		measuredLayout.destroy()
		container:Destroy()
	end)

	it("reassigns composed itemViews without remounting binding-driven content", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local dataSource = ViewRecycler.DataSource.sequence(items(20), function(value)
			return value.id
		end)
		local counts = {
			avatarMounts = 0,
			avatarRenders = 0,
			avatarUnmounts = 0,
			timestampMounts = 0,
			timestampUnmounts = 0,
		}

		local function AvatarContent(props)
			counts.avatarRenders += 1
			React.useEffect(function()
				counts.avatarMounts += 1
				return function()
					counts.avatarUnmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "AvatarContent",
				Size = UDim2.fromOffset(48, 48),
				Text = props.text,
			})
		end
		local function TimestampContent(props)
			React.useEffect(function()
				counts.timestampMounts += 1
				return function()
					counts.timestampUnmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "TimestampContent",
				Size = UDim2.fromOffset(72, 48),
				Text = props.text,
			})
		end
		local Avatar = ViewRecycler.createRecyclableComponent(AvatarContent, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local Timestamp = ViewRecycler.createRecyclableComponent(TimestampContent, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local function Row(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			local nameBinding = SignalsReact.useSignalBinding(function(scope)
				local item = props.itemSignal(scope)
				return item.name
			end)
			local idBinding = SignalsReact.useSignalBinding(function(scope)
				local item = props.itemSignal(scope)
				return item.id
			end)
			return e("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Avatar = e(Avatar, { itemSignal = itemSignal({ text = nameBinding }) }),
				Timestamp = if value.full then e(Timestamp, { itemSignal = itemSignal({ text = idBinding }) }) else nil,
			})
		end
		local RowItemView = ViewRecycler.createRecyclableView(Row, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = dataSource,
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end)

		local initialAvatarMounts = counts.avatarMounts
		local initialTimestampMounts = counts.timestampMounts
		expect(initialAvatarMounts).toBeGreaterThan(0)
		expect(counts.avatarRenders).toBeGreaterThan(0)
		expect(initialTimestampMounts).toBeGreaterThan(0)

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 500)
		end)

		expect(counts.avatarMounts).toBe(initialAvatarMounts)
		expect(counts.avatarUnmounts).toBe(0)
		expect(counts.timestampMounts).toBe(initialTimestampMounts)
		expect(counts.timestampUnmounts).toBe(0)

		ReactRoblox.act(function()
			dataSource.reset({})
		end)
		expect(counts.avatarMounts).toBe(initialAvatarMounts)
		expect(counts.avatarUnmounts).toBe(0)
		expect(counts.timestampMounts).toBe(initialTimestampMounts)
		expect(counts.timestampUnmounts).toBe(0)

		ReactRoblox.act(function()
			dataSource.reset(items(20))
		end)
		expect(counts.avatarMounts).toBe(initialAvatarMounts)
		expect(counts.avatarUnmounts).toBe(0)
		expect(counts.timestampMounts).toBe(initialTimestampMounts)
		expect(counts.timestampUnmounts).toBe(0)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(counts.avatarUnmounts).toBe(initialAvatarMounts)
		expect(counts.timestampUnmounts).toBe(initialTimestampMounts)
		layout.destroy()
		container:Destroy()
	end)

	it("reassigns composed signal views without rerendering their content", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local renders = 0
		local Composed = ViewRecycler.createRecyclableView(function(props)
			renders += 1
			local text = SignalsReact.useSignalBinding(function(scope)
				return props.itemSignal(scope).text
			end)
			return e("TextLabel", {
				Name = "StableComposedContent",
				Text = text,
			})
		end)
		local RowItemView = ViewRecycler.createRecyclableView(function(props)
			local assignment = Signals.createComputed(function(scope)
				return { text = props.itemSignal(scope).name }
			end)
			return e(Composed, { itemSignal = assignment })
		end)

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = ViewRecycler.DataSource.snapshot(items(20), function(value)
						return value.id
					end),
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end)
		local initialRenders = renders
		expect(initialRenders).toBeGreaterThan(0)

		ReactRoblox.act(function()
			getScrollingFrame(container).CanvasPosition = Vector2.new(0, 500)
		end)
		expect(renders).toBe(initialRenders)
		expect((container:FindFirstChild("StableComposedContent", true) :: TextLabel).Text).toContain("Item")

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("transfers one recyclable child between heterogeneous lists in a shared scope", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local mounts = 0
		local unmounts = 0

		local function SharedContent(props)
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "SharedContent",
				Text = props.text,
			})
		end
		local Shared = ViewRecycler.createRecyclableComponent(SharedContent, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local FirstItemView = ViewRecycler.createRecyclableView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e(Shared, { itemSignal = itemSignal({ text = `First {value.name}` }) })
		end, { readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment })
		local SecondItemView = ViewRecycler.createRecyclableView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("Frame", nil, {
				Shared = e(Shared, { itemSignal = itemSignal({ text = `Second {value.name}` }) }),
			})
		end, { readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment })
		local data = {
			items = items(1),
			getItemKey = function(item)
				return item.id
			end,
		}

		local function renderList(itemType, key)
			local listChildren = {
				[key] = e(ViewRecycler.VirtualList, {
					data = data,
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = itemType,
				}),
			}
			root:render(e(ViewRecycler.RecyclingScope, nil, {
				Container = e("Frame", {
					Size = UDim2.fromOffset(300, 100),
				}, listChildren),
			}))
		end

		ReactRoblox.act(function()
			renderList(FirstItemView, "First")
		end)
		expect(mounts).toBe(1)
		expect(unmounts).toBe(0)

		ReactRoblox.act(function()
			renderList(SecondItemView, "Second")
		end)
		expect(mounts).toBe(1)
		expect(unmounts).toBe(0)
		expect(container:FindFirstChild("SharedContent", true).Text).toBe("Second Item 1")

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(unmounts).toBe(1)
		layout.destroy()
		container:Destroy()
	end)

	it("places a reassigned row's composed descendant in the same pass", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listRef = React.createRef()
		local Full = ViewRecycler.createRecyclableComponent(function()
			return e("TextLabel", { Name = "FullBody" })
		end)
		local Compact = ViewRecycler.createRecyclableComponent(function()
			return e("TextLabel", { Name = "CompactBody" })
		end)
		local function Row(props)
			return e("Frame", { Size = UDim2.fromOffset(100, 50) }, {
				Full = e(Full, {
					active = function(scope)
						return props.itemSignal(scope).full
					end,
					itemSignal = props.itemSignal,
				}),
				Compact = e(Compact, {
					active = function(scope)
						return not props.itemSignal(scope).full
					end,
					itemSignal = props.itemSignal,
				}),
			})
		end
		local RowItemView = ViewRecycler.createRecyclableView(Row, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local assignments = 0

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 50),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items(20),
						getItemKey = function(value)
							return value.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
					listRef = listRef,
					_instrumentation = {
						assignmentChanged = function()
							assignments += 1
						end,
					},
				}),
			}))
		end)

		-- Both composed types must have been created and returned to their pools,
		-- because a type's first placement can only mount its content on a
		-- commit. Steady-state recycling reuses a Vacant view instead.
		ReactRoblox.act(function()
			listRef.current.scrollToOffset(50)
		end)
		expect(container:FindFirstChild("FullBody", true)).never.toBeNil()
		ReactRoblox.act(function()
			listRef.current.scrollToOffset(0)
		end)
		expect(container:FindFirstChild("CompactBody", true)).never.toBeNil()
		expect(container:FindFirstChild("FullBody", true)).toBeNil()
		local settledAssignments = assignments

		-- Asserted without an intervening act, so only work the pass itself
		-- performed is observable.
		listRef.current.scrollToOffset(50)
		expect(assignments).never.toBe(settledAssignments)
		expect(container:FindFirstChild("FullBody", true)).never.toBeNil()
		expect(container:FindFirstChild("CompactBody", true)).toBeNil()

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("keeps warm list and composition placement outside React rendering", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listRef = React.createRef()
		local rowRenders = 0
		local placementRenders = 0
		local Composed = ViewRecycler.createRecyclableView(function(props)
			placementRenders += 1
			return e("TextLabel", {
				Name = "ImperativelyPlacedContent",
				Text = SignalsReact.useSignalBinding(function(scope)
					return props.itemSignal(scope).name
				end),
			})
		end)
		local RowItemView = ViewRecycler.createRecyclableView(function(props)
			rowRenders += 1
			return e(Composed, {
				itemSignal = props.itemSignal,
			})
		end, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 50),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items(20),
						getItemKey = function(value)
							return value.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
					listRef = listRef,
				}),
			}))
		end)

		ReactRoblox.act(function()
			listRef.current.scrollToOffset(50)
			listRef.current.scrollToOffset(0)
		end)
		local settledRowRenders = rowRenders
		local settledPlacementRenders = placementRenders

		listRef.current.scrollToOffset(50)

		expect(rowRenders).toBe(settledRowRenders)
		expect(placementRenders).toBe(settledPlacementRenders)
		expect((container:FindFirstChild("ImperativelyPlacedContent", true) :: TextLabel).Text).toBe("Item 2")

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("uses one Assignment subscription for item and occupancy state", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listRef = React.createRef()
		local commits = 0
		local RowItemView = ViewRecycler.createRecyclableView(function(_props)
			React.useLayoutEffect(function()
				commits += 1
			end)
			local assignment = SignalsReact.useSignalState(ViewRecycler.useRecyclingAssignment())
			return e("TextLabel", {
				Name = "StatefulContent",
				Text = if assignment == nil then "vacant" else `{assignment.value.name}:{assignment.key}`,
			})
		end)

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 50),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items(3),
						getItemKey = function(value)
							return value.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
					listRef = listRef,
				}),
			}))
		end)
		local commitsBeforeScroll = commits

		ReactRoblox.act(function()
			listRef.current.scrollToOffset(50)
		end)

		expect((container:FindFirstChild("StatefulContent", true) :: TextLabel).Text).toBe("Item 2:item2")
		expect(commits - commitsBeforeScroll).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("measures a parent row from automatically sized recyclable content", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local function IntrinsicContent(props)
			return e("TextLabel", {
				Name = "IntrinsicContent",
				Size = props.size,
				Text = props.text,
			})
		end
		local Intrinsic = ViewRecycler.createRecyclableComponent(IntrinsicContent, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local function Row(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e(Intrinsic, {
				itemSignal = itemSignal({
					size = UDim2.fromOffset(100, value.height),
					text = value.id,
				}),
			})
		end
		local RowItemView = ViewRecycler.createRecyclableView(Row, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items(20),
						getItemKey = function(value)
							return value.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end)

		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(1000)
		ReactRoblox.act(function()
			RunService.PreRender:Wait()
			RunService.Heartbeat:Wait()
			task.wait()
		end)
		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(980)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("keeps the estimate until composed content has cross-axis geometry", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 50 })
		local contentSize, setContentSize = React.createBinding(UDim2.fromOffset(0, 30))
		local Intrinsic = ViewRecycler.createRecyclableComponent(function()
			return e("TextLabel", {
				Name = "CrossAxisContent",
				Size = contentSize,
				Text = "content",
			})
		end, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local RowItemView = ViewRecycler.createRecyclableView(function(props)
			return e(Intrinsic, {
				itemSignal = props.itemSignal,
			})
		end, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items(20),
						getItemKey = function(value)
							return value.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end)

		ReactRoblox.act(function()
			RunService.Heartbeat:Wait()
			task.wait()
		end)
		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(1000)

		ReactRoblox.act(function()
			setContentSize(UDim2.fromOffset(100, 30))
			RunService.Heartbeat:Wait()
			task.wait()
		end)
		expect(layout.getItemLayout(1).length).toBe(30)
		local lastItem = layout.getItemLayout(20)
		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBe(lastItem.startOffset + lastItem.length)
		expect(getScrollingFrame(container).CanvasSize.Y.Offset).toBeLessThan(1000)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)
end)
