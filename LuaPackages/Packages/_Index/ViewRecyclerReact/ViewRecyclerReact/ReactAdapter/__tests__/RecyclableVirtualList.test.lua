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
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecyclerPackage = require(Root)
local ViewRecycler = ViewRecyclerPackage

local e = React.createElement

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
				Composed = if value.full then e(Composed, { text = value.id }) else nil,
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
				Avatar = e(Avatar, { text = nameBinding }),
				Timestamp = if value.full then e(Timestamp, { text = idBinding }) else nil,
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
			return e(Shared, { text = `First {value.name}` })
		end, { readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment })
		local SecondItemView = ViewRecycler.createRecyclableView(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("Frame", nil, {
				Shared = e(Shared, { text = `Second {value.name}` }),
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
				size = UDim2.fromOffset(100, value.height),
				text = value.id,
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
end)
