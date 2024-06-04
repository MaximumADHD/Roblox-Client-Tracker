return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local DataProvider = require(script.Parent.Parent.DataProvider)

	local MainViewLuauHeap = require(script.Parent.MainViewLuauHeap)
	local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

	it("should create and destroy without errors", function()
		local exampleSnapshot: LuauHeapTypes.HeapReport = {
			Version = 1,
			TagBreakdown = {
				{
					Name = "a",
					Size = 1000,
					Count = 10,
				},
				{
					Name = "b",
					Size = 500,
					Count = 20,
				},
			},
			MemcatBreakdown = {
				{
					Name = "c",
					Size = 1000,
					Count = 10,
				},
				{
					Name = "d",
					Size = 500,
					Count = 20,
				},
			},
			UserdataBreakdown = {
				{
					Name = "e",
					Size = 1000,
					Count = 10,
				},
				{
					Name = "f",
					Size = 500,
					Count = 20,
				},
			},
			Graph = {
				Name = "registry",
				Source = nil,
				Size = 12000,
				TotalSize = 30000,
				Children = {
					{
						Name = "child1",
						Source = nil,
						Size = 2000,
						TotalSize = 3000,
						Children = {},
					},
					{
						Name = "child2",
						Source = nil,
						Size = 100,
						TotalSize = 100,
						Children = {},
					},
				},
			},
			Refs = {
				Version = 1,
				Roots = {
					{
						Name = "one",
						Count = 5,
						Instances = 50,
						Paths = { { "a", "b", "c" }, { "d", "e", "f" } },
					},
				},
			},
		}

		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
				},
				LuauHeap = {
					isClientView = true,
					client = {
						snapshots = { exampleSnapshot, exampleSnapshot },
						active = 2,
						compare = 1,
					},
					server = {
						snapshots = { exampleSnapshot, exampleSnapshot },
						active = 1,
						compare = 2,
					},
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				MainViewLuauHeap = Roact.createElement(MainViewLuauHeap, {
					size = UDim2.new(),
					tabList = {},
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
