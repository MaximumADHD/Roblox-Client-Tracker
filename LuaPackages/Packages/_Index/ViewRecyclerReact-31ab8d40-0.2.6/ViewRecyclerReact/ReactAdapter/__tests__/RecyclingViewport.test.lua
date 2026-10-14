--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local SignalsReact = require(Root.Parent.SignalsReact)
local ReactRoblox = TestDependencies.ReactRoblox
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local createReactAdapter = require(Root.ReactAdapter.Private.createReactAdapter)

local e = React.createElement

type Item = {
	id: string,
	text: string,
}

local function item(id: string, text: string): Item
	return {
		id = id,
		text = text,
	}
end

local function getItemKey(value: Item): string
	return value.id
end

local function findContent(container: Instance): TextLabel?
	local content = container:FindFirstChild("Content", true)
	return if content ~= nil and content:IsA("TextLabel") then content else nil
end

local function mountedItemViewHostCount(container: Instance): number
	local count = 0
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("Frame") and string.find(descendant.Name, "ListItemViewFrame", 1, true) == 1 then
			count += 1
		end
	end
	return count
end

describe("RecyclingViewport", function()
	it("transfers one UntilCommit host between lists after release without remounting it", function()
		local portalCalls = 0
		local ViewRecycler = createReactAdapter({
			createPortal = function(children, target)
				portalCalls += 1
				return ReactRoblox.createPortal(children, target)
			end,
		})
		local firstSource = ViewRecycler.DataSource.sequence({ item("first", "First") }, getItemKey)
		local secondSource = ViewRecycler.DataSource.sequence({ item("second", "Second") }, getItemKey)
		local firstLayout = ViewRecycler.Layout.uniform({ itemLength = 100 })
		local secondLayout = ViewRecycler.Layout.uniform({ itemLength = 100 })
		local renders = 0
		local mounts = 0
		local unmounts = 0
		local counters = {
			poolCreates = 0,
			poolAcquires = 0,
			poolReleases = 0,
			synchronizations = 0,
			reassigned = 0,
			acquired = 0,
			released = 0,
		}
		local function diagnostics(event)
			if event.kind == "poolChanged" then
				if event.action == "create" then
					counters.poolCreates += 1
				elseif event.action == "acquire" then
					counters.poolAcquires += 1
				elseif event.action == "release" then
					counters.poolReleases += 1
				end
			elseif event.kind == "itemViewsSynchronized" then
				counters.synchronizations += 1
				counters.reassigned += event.reassigned
				counters.acquired += event.acquired
				counters.released += event.released
			end
		end
		local ItemView = ViewRecycler.createRecyclableView(function(props)
			renders += 1
			React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return e("TextLabel", {
				Name = "Content",
				Size = UDim2.fromScale(1, 1),
				Text = SignalsReact.useSignalBinding(function(scope)
					local value = props.itemSignal(scope)
					return value.text
				end),
			})
		end, {
			readiness = RecyclableViewReadiness.ReadyOnCommit,
			hideWhilePending = true,
		})
		local viewportRef = { current = nil }
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(200, 100)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(ViewRecycler.RecyclingViewport, {
				axis = ViewRecycler.Axis.Y,
				diagnostics = diagnostics,
				scrollingFrameRef = viewportRef,
				scrollingFrameProps = {
					Name = "Viewport",
					CanvasSize = UDim2.fromOffset(0, 200),
				},
			}, {
				FirstRoot = e("Frame", {
					Name = "FirstRoot",
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(0, 0),
					Size = UDim2.fromOffset(200, 100),
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = firstSource,
						layout = firstLayout,
						axis = ViewRecycler.Axis.X,
						overscan = 0,
						itemType = ItemView,
						diagnostics = diagnostics,
						scrollingFrameProps = { Name = "FirstList" },
					}),
				}),
				SecondRoot = e("Frame", {
					Name = "SecondRoot",
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(0, 100),
					Size = UDim2.fromOffset(200, 100),
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = secondSource,
						layout = secondLayout,
						axis = ViewRecycler.Axis.X,
						overscan = 0,
						itemType = ItemView,
						diagnostics = diagnostics,
						scrollingFrameProps = { Name = "SecondList" },
					}),
				}),
			}))
		end)

		local firstContent = findContent(container) :: TextLabel
		local host = firstContent:FindFirstAncestor("ListItemViewFrame1")
		local firstRoot = container:FindFirstChild("FirstRoot", true)
		local secondRoot = container:FindFirstChild("SecondRoot", true)
		local initialPortalCalls = portalCalls
		local initialRenders = renders
		local initialMounts = mounts
		local initialUnmounts = unmounts
		expect(firstContent.Text).toBe("First")
		expect(firstContent:IsDescendantOf(firstRoot)).toBe(true)
		expect(initialRenders).toBeGreaterThan(0)
		expect(initialMounts).toBeGreaterThan(0)
		expect(initialUnmounts).toBe(0)
		expect(initialPortalCalls).toBeGreaterThan(0)
		expect(counters.poolCreates).toBe(1)
		expect(mountedItemViewHostCount(container)).toBe(1)

		local transitions = {
			{
				offset = 100,
				text = "Second",
				root = secondRoot,
			},
			{
				offset = 0,
				text = "First",
				root = firstRoot,
			},
			{
				offset = 100,
				text = "Second",
				root = secondRoot,
			},
			{
				offset = 0,
				text = "First",
				root = firstRoot,
			},
		}
		for _, transition in transitions do
			local previousCounters = table.clone(counters)
			ReactRoblox.act(function()
				(viewportRef.current :: ScrollingFrame).CanvasPosition = Vector2.new(0, transition.offset)
			end)

			local content = findContent(container) :: TextLabel
			expect(content).toBe(firstContent)
			expect(content.Text).toBe(transition.text)
			expect(content:IsDescendantOf(transition.root)).toBe(true)
			expect(content:FindFirstAncestor("ListItemViewFrame1")).toBe(host)
			expect(mountedItemViewHostCount(container)).toBe(1)
			expect(counters.poolCreates).toBe(previousCounters.poolCreates)
			expect(counters.poolAcquires).toBe(previousCounters.poolAcquires + 1)
			expect(counters.poolReleases).toBe(previousCounters.poolReleases + 1)
			expect(counters.synchronizations).toBe(previousCounters.synchronizations + 1)
			expect(counters.reassigned).toBe(previousCounters.reassigned)
			expect(counters.acquired).toBe(previousCounters.acquired + 1)
			expect(counters.released).toBe(previousCounters.released)
			expect(mounts).toBe(initialMounts)
			expect(unmounts).toBe(initialUnmounts)
		end

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(viewportRef.current).toBeNil()
		expect(unmounts).toBe(initialMounts)

		firstSource.reset({ item("after", "After") })
		expect(portalCalls).toBe(initialPortalCalls)

		firstLayout.destroy()
		secondLayout.destroy()
		container:Destroy()
	end)

	it("uses an ancestor RecyclingScope instead of creating a nested pool", function()
		local ViewRecycler = createReactAdapter({
			createPortal = ReactRoblox.createPortal,
		})
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local poolCreates = 0
		local ItemView = ViewRecycler.createRecyclableView(function(props)
			return e("TextLabel", {
				Name = "Content",
				Text = SignalsReact.useSignalBinding(function(scope)
					local value = props.itemSignal(scope)
					return value.text
				end),
			})
		end, {
			readiness = RecyclableViewReadiness.ReadyOnAssignment,
		})
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(100, 100)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(ViewRecycler.RecyclingScope, {
				diagnostics = function(event)
					if event.kind == "poolChanged" and event.action == "create" then
						poolCreates += 1
					end
				end,
			}, {
				Viewport = e(ViewRecycler.RecyclingViewport, {
					axis = ViewRecycler.Axis.Y,
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = {
							items = { item("shared", "Shared") },
							getItemKey = getItemKey,
						},
						layout = layout,
						axis = ViewRecycler.Axis.Y,
						itemType = ItemView,
					}),
				}),
			}))
		end)

		expect((findContent(container) :: TextLabel).Text).toBe("Shared")
		expect(poolCreates).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("leaves a VirtualList active without a viewport scope", function()
		local ViewRecycler = createReactAdapter({
			createPortal = ReactRoblox.createPortal,
		})
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local ItemView = ViewRecycler.createRecyclableView(function(props)
			return e("TextLabel", {
				Name = "Content",
				Text = SignalsReact.useSignalBinding(function(scope)
					local value = props.itemSignal(scope)
					return value.text
				end),
			})
		end, {
			readiness = RecyclableViewReadiness.ReadyOnAssignment,
		})
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(100, 100)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(ViewRecycler.VirtualList, {
				data = {
					items = { item("ordinary", "Ordinary") },
					getItemKey = getItemKey,
				},
				layout = layout,
				axis = ViewRecycler.Axis.Y,
				itemType = ItemView,
			}))
		end)

		expect((findContent(container) :: TextLabel).Text).toBe("Ordinary")

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)
end)
