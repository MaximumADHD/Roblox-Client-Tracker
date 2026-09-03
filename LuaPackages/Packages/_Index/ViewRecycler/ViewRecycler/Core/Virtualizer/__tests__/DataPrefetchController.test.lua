local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local createDataPrefetchController = require(script.Parent.Parent.DataPrefetchController)

local function createSource(count: number)
	local items = {}
	for index = 1, count do
		items[index] = `item-{index}`
	end
	return DataSource.sequence(items, function(_value, index)
		return tostring(index)
	end)
end

describe("DataPrefetchController", function()
	it("returns independently current edge requests on initial reconciliation", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()

		local requests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 3 },
		})

		expect(requests).toHaveLength(2)
		expect(requests[1].edge).toBe("start")
		expect(requests[1].range).toEqual({ firstIndex = 3, lastIndex = 4 })
		expect(requests[1].isCurrent()).toBe(true)
		expect(requests[2].edge).toBe("end")
		expect(requests[2].range).toEqual({ firstIndex = 8, lastIndex = 10 })
		expect(requests[2].isCurrent()).toBe(true)
	end)

	it("deduplicates each edge and supersedes only changed edge tokens", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()
		local requests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})
		local startRequest = requests[1]
		local endRequest = requests[2]

		expect(controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})).toEqual({})

		local changed = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 8 },
			options = { startItems = 2, endItems = 2 },
		})
		expect(changed).toHaveLength(1)
		expect(changed[1].edge).toBe("end")
		expect(startRequest.isCurrent()).toBe(true)
		expect(endRequest.isCurrent()).toBe(false)
		expect(changed[1].isCurrent()).toBe(true)
	end)

	it("cancels an edge token when its range reaches the data boundary", function()
		local source = createSource(10)
		local controller = createDataPrefetchController()
		local requests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { endItems = 2 },
		})
		local request = requests[1]

		local nextRequests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 9, lastIndex = 10 },
			options = { endItems = 2 },
		})

		expect(request.isCurrent()).toBe(false)
		expect(nextRequests).toEqual({})
	end)

	it("shares the disabled steady-state result and invalidates prior demand", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()
		local request = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { endItems = 2 },
		})[1]

		local disabled = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = nil,
		})
		local unchanged = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 6, lastIndex = 8 },
			options = { startItems = 0, endItems = 0 },
		})

		expect(request.isCurrent()).toBe(false)
		expect(disabled).toEqual({})
		expect(unchanged).toBe(disabled)
		expect(table.isfrozen(unchanged)).toBe(true)
	end)

	it("preserves requests across equivalent policy and in-place data changes", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()
		local requests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})

		source.setItem(1, "updated")
		local nextRequests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})

		expect(nextRequests).toEqual({})
		expect(requests[1].isCurrent()).toBe(true)
		expect(requests[2].isCurrent()).toBe(true)
	end)

	it("supersedes both edges when resolved options change", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()
		local requests = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})

		local replacements = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 3, endItems = 2 },
		})

		expect(replacements).toHaveLength(2)
		expect(requests[1].isCurrent()).toBe(false)
		expect(requests[2].isCurrent()).toBe(false)
		expect(replacements[1].range).toEqual({ firstIndex = 2, lastIndex = 4 })
		expect(replacements[2].range).toEqual({ firstIndex = 8, lastIndex = 9 })
	end)

	it("supersedes both edges when the DataSource is replaced", function()
		local controller = createDataPrefetchController()
		local requests = controller.reconcile({
			dataSource = createSource(20),
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})

		local replacements = controller.reconcile({
			dataSource = createSource(20),
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { startItems = 2, endItems = 2 },
		})

		expect(replacements).toHaveLength(2)
		expect(requests[1].isCurrent()).toBe(false)
		expect(requests[2].isCurrent()).toBe(false)
		expect(replacements[1].isCurrent()).toBe(true)
		expect(replacements[2].isCurrent()).toBe(true)
	end)

	it("preserves current requests when reconciliation rejects invalid policy", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()
		local request = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { endItems = 2 },
		})[1]

		expect(function()
			controller.reconcile({
				dataSource = source,
				mountedRange = { firstIndex = 5, lastIndex = 7 },
				options = { endItems = -1 },
			})
		end).toThrow()
		expect(request.isCurrent()).toBe(true)
	end)

	it("invalidates requests on idempotent destruction", function()
		local source = createSource(20)
		local controller = createDataPrefetchController()
		local request = controller.reconcile({
			dataSource = source,
			mountedRange = { firstIndex = 5, lastIndex = 7 },
			options = { endItems = 2 },
		})[1]

		controller.destroy()
		controller.destroy()

		expect(request.isCurrent()).toBe(false)
		expect(function()
			controller.reconcile({
				dataSource = source,
				mountedRange = { firstIndex = 5, lastIndex = 7 },
				options = { endItems = 2 },
			})
		end).toThrow("cannot reconcile after destroy")
	end)
end)
