local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local createRecyclingScope = require(Src.Core.RecyclingScope)

it("continues exactly-once destruction after one adapter failure", function()
	local nextId = 0
	local attempts = {}
	local scope = createRecyclingScope({
		adapter = {
			create = function()
				nextId += 1
				return { id = nextId }
			end,
			destroy = function(record)
				attempts[record.id] = (attempts[record.id] or 0) + 1
				if record.id == 1 then
					error("expected destruction failure")
				end
			end,
		},
	})
	local owner = {}
	scope.exchange(owner, {}, {
		{ viewType = "row" },
		{ viewType = "row" },
		{ viewType = "row" },
	})

	expect(function()
		scope.destroy()
	end).toThrow("expected destruction failure")
	expect(attempts).toEqual({
		[1] = 1,
		[2] = 1,
		[3] = 1,
	})
	scope.destroy()
	expect(attempts).toEqual({
		[1] = 1,
		[2] = 1,
		[3] = 1,
	})
end)

it("continues diagnostics and destruction and rethrows the first failure", function()
	local nextId = 0
	local destroyAttempts = {}
	local diagnosticAttempts = 0
	local failDiagnostics = false
	local scope = createRecyclingScope({
		onPoolChanged = function()
			if failDiagnostics then
				diagnosticAttempts += 1
				error("expected diagnostic failure")
			end
		end,
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
	scope.exchange({}, {}, {
		{ viewType = "row" },
		{ viewType = "row" },
		{ viewType = "row" },
	})
	failDiagnostics = true

	expect(function()
		scope.destroy()
	end).toThrow("expected diagnostic failure")
	expect(diagnosticAttempts).toBe(3)
	expect(destroyAttempts).toEqual({
		[1] = 1,
		[2] = 1,
		[3] = 1,
	})
end)
