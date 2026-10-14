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
		})

		virtualizer.activate()
		local policy: Core.VirtualizerPolicy<string, string> = {
			overscan = 1,
			dataPrefetch = nil,
			contentAlignment = nil,
			endThreshold = nil,
			pinnedItems = {},
			preserveScrollPositionOnChange = true,
		}
		virtualizer.setPolicy(policy)
		local current = virtualizer.setViewportSize(40, 100)
		current = virtualizer.setScrollOffset(0)

		expect(current.contentLength).toBe(60)
		expect(#current.mountedViews).toBe(3)
		local mounted
		for _, mountedView in current.mountedViews do
			if mountedView.state.assignment.key == "a" then
				mounted = mountedView
				break
			end
		end
		assert(mounted ~= nil, "expected an assignment for key a")
		local assignment = mounted.state.assignment
		expect(assignment.key).toBe("a")
		expect((assignment :: any).index).toBeNil()
		expect(assignment.value).toBe("a")
		expect(mounted.state.index).toBe(1)
		expect((assignment :: any).itemRevision).toBeNil()

		virtualizer.destroy()
		recyclingScope.dispose()
	end)

	it("exposes only the deep adapter-author runtime under Adapter", function()
		expect(type(Core.Adapter.createRecyclingScope)).toBe("function")
		expect((Core.Adapter :: any).createItemViewPool).toBeNil()
		expect(type(Core.Adapter.createVirtualizer)).toBe("function")
		expect(type(Core.Adapter.createSlotBinder)).toBe("function")
		expect((Core.Adapter._Private :: any).batch).toBeNil()
		expect((Core.Adapter :: any).Placement).toBeNil()
		expect((Core :: any).StickyPolicy).toBeNil()
		expect((Core :: any).SupplementaryPlacement).toBeNil()
		expect((Core.Adapter :: any).ScrollPolicy).toBeNil()
		expect(type(Core.ChatPreset.create)).toBe("function")
		expect((Core.Adapter :: any).Internal).toBeNil()
		expect((Core.Adapter._Private :: any).reconcileByKey).toBeNil()
		expect((Core.Adapter :: any).createListRuntime).toBeNil()
		expect((Core.Adapter :: any).createRecyclingPool).toBeNil()
		expect((Core :: any).VirtualizerCommandType).toBeNil()
		expect((Core :: any).VirtualizerEffectType).toBeNil()
		expect((Core :: any).VirtualizerQueryType).toBeNil()
		expect((Core :: any).GeometryController).toBeNil()
		expect((Core :: any).RenderWindow).toBeNil()

		expect(Core.PinnedPosition.Start).toBe("start")
		expect(Core.PinnedPosition.Finish).toBe("finish")
		expect(Core.IdentityKind.Data).toBe("data")
		expect(Core.IdentityKind.Pinned).toBe("pinned")

		local publicApi = Core :: any
		expect(publicApi.DataSource).never.toBeNil()
		expect(publicApi.OverscanPolicy).toBeNil()
		expect(publicApi.ScrollDirection).toBeNil()
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
