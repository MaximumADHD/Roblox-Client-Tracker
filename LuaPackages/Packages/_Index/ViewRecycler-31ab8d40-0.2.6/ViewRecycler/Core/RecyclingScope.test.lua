local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local createRecyclingScope = require(Src.Core.RecyclingScope)

local function createHarness(maxPoolSize: number?)
	local nextId = 0
	local destroyed = {}
	local scope = createRecyclingScope({
		maxPoolSize = maxPoolSize,
		adapter = {
			create = function(viewType)
				nextId += 1
				return { id = nextId, viewType = viewType }
			end,
			destroy = function(record)
				destroyed[record] = true
			end,
		},
	})
	return scope, destroyed
end

describe("RecyclingScope exchange", function()
	it("acquires, releases, and reuses compatible records", function()
		local scope = createHarness()
		local owner = {}
		local first = scope.exchange(owner, {}, { { viewType = "row" } }).acquired[1]
		expect(scope.isLeaseCurrent(owner, first.view, first.leaseToken)).toBe(true)

		local exchange = scope.exchange(owner, { first }, { { viewType = "row" } })
		local second = exchange.acquired[1]
		expect(second.view).toBe(first.view)
		expect(second.leaseToken).never.toBe(first.leaseToken)
		expect(exchange.releasedCount).toBe(0)
		expect(scope.isLeaseCurrent(owner, first.view, first.leaseToken)).toBe(false)
		scope.destroy()
	end)

	it("keeps owners and Recyclable view types isolated", function()
		local scope = createHarness()
		local firstOwner = {}
		local secondOwner = {}
		local row = scope.exchange(firstOwner, {}, { { viewType = "row" } }).acquired[1]
		local card = scope.exchange(secondOwner, {}, { { viewType = "card" } }).acquired[1]

		expect(function()
			scope.exchange(secondOwner, { row }, {})
		end).toThrow()
		expect(scope.isLeaseCurrent(firstOwner, row.view, row.leaseToken)).toBe(true)
		expect(card.view.viewType).toBe("card")
		scope.destroy()
	end)

	it("validates every release before committing", function()
		local scope = createHarness()
		local owner = {}
		local leases = scope.exchange(owner, {}, {
			{ viewType = "row" },
			{ viewType = "row" },
		}).acquired

		expect(function()
			scope.exchange(owner, {
				leases[1],
				{ view = leases[2].view, leaseToken = -1 },
			}, {})
		end).toThrow()
		expect(scope.isLeaseCurrent(owner, leases[1].view, leases[1].leaseToken)).toBe(true)
		expect(scope.isLeaseCurrent(owner, leases[2].view, leases[2].leaseToken)).toBe(true)
		expect(function()
			scope.exchange(owner, { leases[1], leases[1] }, {})
		end).toThrow()
		expect(scope.isLeaseCurrent(owner, leases[1].view, leases[1].leaseToken)).toBe(true)
		scope.destroy()
	end)

	it("rolls back created records and recovers after acquisition fails", function()
		local nextId = 0
		local destroyed = {}
		local shouldFail = true
		local scope = createRecyclingScope({
			adapter = {
				create = function(viewType)
					nextId += 1
					if shouldFail and nextId == 2 then
						error("expected create failure")
					end
					return { id = nextId, viewType = viewType }
				end,
				destroy = function(record)
					destroyed[record] = true
				end,
			},
		})
		local owner = {}

		expect(function()
			scope.exchange(owner, {}, {
				{ viewType = "row" },
				{ viewType = "card" },
			})
		end).toThrow("expected create failure")
		expect(scope.getScopeInventory()).toEqual({})
		local rolledBack = nil
		for record in destroyed do
			rolledBack = record
		end
		expect(rolledBack).never.toBeNil()
		expect(rolledBack.viewType).toBe("row")

		shouldFail = false
		local acquired = scope.exchange(owner, {}, { { viewType = "row" } }).acquired
		expect(acquired).toHaveLength(1)
		expect(scope.isLeaseCurrent(owner, acquired[1].view, acquired[1].leaseToken)).toBe(true)
		scope.destroy()
	end)

	it("evicts the oldest vacancies above the retention limit", function()
		local scope, destroyed = createHarness(1)
		local owner = {}
		local leases = scope.exchange(owner, {}, {
			{ viewType = "row" },
			{ viewType = "row" },
		}).acquired
		local exchange = scope.exchange(owner, leases, {})

		expect(exchange.releasedCount).toBe(2)
		expect(#scope.getVacantViews()).toBe(1)
		expect(destroyed[leases[1].view]).toBe(true)
		scope.destroy()
	end)

	it("destroys all retained and occupied records", function()
		local scope, destroyed = createHarness()
		local owner = {}
		local leases = scope.exchange(owner, {}, {
			{ viewType = "row" },
			{ viewType = "card" },
		}).acquired
		scope.exchange(owner, { leases[1] }, {})
		scope.destroy()

		expect(destroyed[leases[1].view]).toBe(true)
		expect(destroyed[leases[2].view]).toBe(true)
	end)
end)
