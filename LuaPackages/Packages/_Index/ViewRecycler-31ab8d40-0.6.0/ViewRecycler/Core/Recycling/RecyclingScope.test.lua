local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)

local function createHarness(onPoolChanged)
	local nextId = 0
	local destroyed = {}
	local scope = createRecyclingScope({
		onPoolChanged = onPoolChanged,
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

describe("RecyclingScope submit", function()
	it("directly reuses a compatible released view", function()
		local scope = createHarness()
		local first = scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired[1]

		local submission = scope.bind({
			releases = { first },
			requests = { { viewType = "row" } },
		})
		expect(submission.acquired).toEqual({ first })
		expect(submission.releasedCount).toBe(0)

		local second = scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired[1]
		local paired = scope.bind({
			releases = { first, second },
			requests = {
				{ viewType = "row" },
				{ viewType = "row" },
			},
		})
		expect(paired.acquired).toEqual({ second, first })
		expect(paired.releasedCount).toBe(0)
		scope.dispose()
	end)

	it("keeps incompatible view types in separate pools", function()
		local scope = createHarness()
		local row = scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired[1]
		local cardSubmission = scope.bind({
			releases = { row },
			requests = { { viewType = "card" } },
		})
		expect(cardSubmission.acquired[1]).never.toBe(row)
		expect(cardSubmission.acquired[1].viewType).toBe("card")
		expect(cardSubmission.releasedCount).toBe(1)

		local rowAgain = scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired[1]
		expect(rowAgain).toBe(row)
		scope.dispose()
	end)

	it("validates every release before committing", function()
		local scope = createHarness()
		local views = scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "row" },
			},
		}).acquired

		expect(function()
			scope.bind({
				releases = { views[1], {} },
				requests = {},
			})
		end).toThrow()
		expect(function()
			scope.bind({
				releases = { views[1], views[1] },
				requests = {},
			})
		end).toThrow()

		local released = scope.bind({
			releases = views,
			requests = {},
		})
		expect(released.releasedCount).toBe(2)
		scope.dispose()
	end)

	it("stays consistent after rejecting a release", function()
		local scope = createHarness()
		local views = scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "row" },
			},
		}).acquired

		expect(function()
			scope.bind({
				releases = { views[1], views[1] },
				requests = {},
			})
		end).toThrow()
		expect(scope.bind({
			releases = { views[1] },
			requests = {},
		}).releasedCount).toBe(1)
		expect(function()
			scope.bind({
				releases = { views[1] },
				requests = {},
			})
		end).toThrow()
		expect(scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired).toEqual({ views[1] })
		scope.dispose()
	end)

	it("creates only the requests that vacancies cannot satisfy", function()
		local changes = {}
		local created = {}
		local nextId = 0
		local scope = createRecyclingScope({
			onPoolChanged = function(change)
				table.insert(changes, change.action)
			end,
			adapter = {
				create = function(viewType)
					nextId += 1
					return { id = nextId, viewType = viewType }
				end,
				destroy = function() end,
				onCreated = function(views)
					table.insert(created, views)
				end,
			},
		})
		local views = scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "card" },
			},
		}).acquired
		scope.bind({ releases = views, requests = {} })
		table.clear(changes)
		table.clear(created)

		local acquired = scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "row" },
				{ viewType = "card" },
			},
		}).acquired

		expect(acquired[1]).toBe(views[1])
		expect(acquired[2].viewType).toBe("row")
		expect(acquired[2]).never.toBe(views[1])
		expect(acquired[3]).toBe(views[2])
		expect(changes).toEqual({ "acquire", "create", "acquire" })
		expect(created).toEqual({ { acquired[2] } })

		local reacquired = scope.bind({
			releases = { acquired[1], acquired[2] },
			requests = {},
		})
		expect(reacquired.releasedCount).toBe(2)
		expect(scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "row" },
			},
		}).acquired).toEqual({ acquired[2], acquired[1] })
		scope.dispose()
	end)

	it("evicts the oldest vacancies above per-type capacity", function()
		local scope, destroyed = createHarness()
		local views = scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "row" },
			},
		}).acquired
		local submission = scope.bind({
			releases = views,
			requests = {},
			capacity = 1,
		})

		expect(submission.releasedCount).toBe(2)
		expect(destroyed[views[1]]).toBe(true)
		expect(destroyed[views[2]]).never.toBe(true)
		expect(scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired[1]).toBe(views[2])
		scope.dispose()
	end)

	it("reports committed pool changes before destroying evictions", function()
		local changes = {}
		local destroyed = {}
		local scope = createRecyclingScope({
			onPoolChanged = function(change)
				table.insert(changes, change)
				if change.action == "evict" then
					expect(destroyed[1]).toBeNil()
				end
			end,
			adapter = {
				create = function()
					return { id = 1 }
				end,
				destroy = function(view)
					destroyed[view.id] = true
				end,
			},
		})
		local view = scope.bind({
			releases = {},
			requests = { { viewType = "row" } },
		}).acquired[1]
		scope.bind({
			releases = { view },
			requests = {},
			capacity = 0,
		})

		expect(changes).toEqual({
			{
				action = "create",
				viewType = "row",
				occupiedDelta = 1,
				vacantDelta = 0,
				totalDelta = 1,
			},
			{
				action = "release",
				viewType = "row",
				occupiedDelta = -1,
				vacantDelta = 1,
				totalDelta = 0,
			},
			{
				action = "evict",
				viewType = "row",
				occupiedDelta = 0,
				vacantDelta = -1,
				totalDelta = -1,
			},
		})
		expect(destroyed[1]).toBe(true)
		scope.dispose()
	end)

	it("disposes all active and vacant views exactly once", function()
		local scope, destroyed = createHarness()
		local views = scope.bind({
			releases = {},
			requests = {
				{ viewType = "row" },
				{ viewType = "card" },
			},
		}).acquired
		scope.bind({
			releases = { views[1] },
			requests = {},
		})
		scope.dispose()
		scope.dispose()

		expect(destroyed[views[1]]).toBe(true)
		expect(destroyed[views[2]]).toBe(true)
	end)
end)
