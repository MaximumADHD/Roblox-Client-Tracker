local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)

it("rolls back precreated views and remains usable after create fails", function()
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
			destroy = function(view)
				destroyed[view.id] = true
			end,
		},
	})

	expect(function()
		scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "card" },
			},
		})
	end).toThrow("expected create failure")
	expect(destroyed).toEqual({
		[1] = true,
	})

	shouldFail = false
	local view = scope.bind({
		releases = {},
		requests = { { viewType = "row" } },
	}).acquired[1]
	expect(view.id).toBe(3)
	scope.dispose()
end)

it("rejects synchronous reentry and recovers the submit guard", function()
	local scope
	local shouldReenter = true
	scope = createRecyclingScope({
		adapter = {
			create = function()
				if shouldReenter then
					expect(function()
						scope.bind({
							releases = {},
							requests = {},
						})
					end).toThrow("reentrantly")
				end
				return {}
			end,
			destroy = function() end,
		},
	})

	scope.bind({
		releases = {},
		requests = { { viewType = "row" } },
	})
	shouldReenter = false
	expect(scope.bind({
		releases = {},
		requests = { { viewType = "row" } },
	}).acquired).toHaveLength(1)
	scope.dispose()
end)

it("commits before callbacks fail and remains usable", function()
	local failDiagnostics = false
	local scope = createRecyclingScope({
		onPoolChanged = function()
			if failDiagnostics then
				error("expected diagnostic failure")
			end
		end,
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	})
	local view = scope.bind({
		releases = {},
		requests = { { viewType = "row" } },
	}).acquired[1]
	failDiagnostics = true
	expect(function()
		scope.bind({
			releases = { view },
			requests = {},
		})
	end).toThrow("expected diagnostic failure")

	failDiagnostics = false
	expect(function()
		scope.bind({
			releases = { view },
			requests = {},
		})
	end).toThrow("active view")
	expect(scope.bind({
		releases = {},
		requests = { { viewType = "row" } },
	}).acquired[1]).toBe(view)
	scope.dispose()
end)

it("continues exactly-once disposal after one adapter failure", function()
	local nextId = 0
	local destroyAttempts = {}
	local scope = createRecyclingScope({
		adapter = {
			create = function()
				nextId += 1
				return { id = nextId }
			end,
			destroy = function(record)
				destroyAttempts[record.id] = (destroyAttempts[record.id] or 0) + 1
				if record.id == 1 then
					error("later adapter failure")
				end
			end,
		},
	})
	scope.bind({
		releases = {},
		requests = {
			{ viewType = "row" },
			{ viewType = "row" },
			{ viewType = "row" },
		},
	})

	expect(function()
		scope.dispose()
	end).toThrow("later adapter failure")
	expect(destroyAttempts).toEqual({
		[1] = 1,
		[2] = 1,
		[3] = 1,
	})
	scope.dispose()
	expect(destroyAttempts).toEqual({
		[1] = 1,
		[2] = 1,
		[3] = 1,
	})
end)
