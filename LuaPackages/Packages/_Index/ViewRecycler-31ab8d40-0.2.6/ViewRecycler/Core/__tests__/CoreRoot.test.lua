local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Core = require(Src)

describe("Core package root", function()
	it("runs data, layout, and itemView lifecycle behavior without loading React", function()
		expect(Src.Parent:FindFirstChild("React")).toBeNil()

		local dataSource = Core.DataSource.snapshot({ "a", "b", "c" }, function(value)
			return value
		end)
		local layout = Core.Layout.uniform({ itemLength = 20 })
		local assignments = {}
		local recyclingScope = Core.Adapter.createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local virtualizer = Core.Adapter.createVirtualizer({
			dataSource = dataSource,
			layout = layout,
			recyclingScope = recyclingScope,
			getItemViewType = function()
				return "row"
			end,
			postCommitAssignment = function(itemView, assignment)
				assignments[itemView] = assignment
			end,
		})

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
		local policy: Core.VirtualizerPolicy<string, string> = {
			overscan = 1,
			overscanPolicy = nil,
			dataPrefetch = nil,
			contentAlignment = nil,
			endThreshold = nil,
			pinnedItems = {},
			preserveScrollPositionOnChange = true,
		}
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetPolicy, policy = policy })
		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 40,
			crossAxisLength = 100,
		})
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = 0 })

		expect(virtualizer.getSnapshot().contentLength).toBe(60)
		expect(#virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews })).toBe(3)
		local assignment
		for _, currentAssignment in assignments do
			if currentAssignment ~= nil and currentAssignment.key == "a" then
				assignment = currentAssignment
				break
			end
		end
		assert(assignment ~= nil, "expected an assignment for key a")
		expect(assignment.key).toBe("a")
		expect(assignment.index).toBe(1)
		expect(assignment.value).toBe("a")
		expect(type(assignment.generation)).toBe("number")
		expect((assignment :: any).itemRevision).toBeNil()

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
		recyclingScope.destroy()
	end)

	it("exposes only cohesive ItemView lifecycle and scroll policies under Adapter", function()
		expect(type(Core.Adapter.createRecyclingScope)).toBe("function")
		expect((Core.Adapter :: any).createItemViewPool).toBeNil()
		expect(type(Core.Adapter.createVirtualizer)).toBe("function")
		expect((Core.Adapter :: any).Placement).toBeNil()
		expect((Core :: any).StickyPolicy).toBeNil()
		expect((Core :: any).SupplementaryPlacement).toBeNil()
		expect(type(Core.Adapter.ScrollPolicy.AutoScroll.create)).toBe("function")
		expect(type(Core.Adapter.ScrollPolicy.ChatPreset.create)).toBe("function")
		expect(type(Core.Adapter.ScrollPolicy.createCoordinator)).toBe("function")
		expect((Core.Adapter :: any).Internal).toBeNil()
		expect((Core.Adapter._Private :: any).reconcileByKey).toBeNil()
		expect((Core.Adapter :: any).createListRuntime).toBeNil()
		expect((Core.Adapter :: any).createRecyclingPool).toBeNil()
		expect((Core.VirtualizerCommandType :: any).ApplyDataSourceChange).toBeNil()
		expect((Core.VirtualizerCommandType :: any).SubmitLogicalMeasurements).toBeNil()
		expect((Core :: any).VirtualizerEngine).toBeNil()
		expect((Core :: any).RenderWindow).toBeNil()

		expect(Core.ScrollDirection.Forward).toBe("forward")
		expect(Core.ScrollDirection.Backward).toBe("backward")
		expect(Core.ScrollDirection.None).toBe("none")
		expect(Core.PinnedPosition.Start).toBe("start")
		expect(Core.PinnedPosition.Finish).toBe("finish")
		expect(Core.IdentityKind.Data).toBe("data")
		expect(Core.IdentityKind.Pinned).toBe("pinned")

		local publicApi = Core :: any
		expect(publicApi.DataSource).never.toBeNil()
		expect(type(publicApi.OverscanPolicy.fixed)).toBe("function")
		expect(publicApi.Source).toBeNil()
		expect(publicApi.SourceChangeType).toBeNil()
		expect((Core.Adapter :: any).RecyclingRegion).toBeNil()
		expect((Core.Adapter :: any).PoolRegistry).toBeNil()
		expect((Core.Adapter :: any).Recycler).toBeNil()
		expect(publicApi.Recycler).toBe(nil)
		expect(publicApi.RecyclingRegion).toBe(nil)
		expect(publicApi.PoolRegistry).toBe(nil)
		expect(publicApi.ViewportBehavior).toBe(nil)
		expect(publicApi.AdapterPrimitives).toBe(nil)
		expect(publicApi.DebugFlags).toBe(nil)
	end)
end)
