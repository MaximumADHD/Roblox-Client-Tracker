local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)
local createSlotBinder = require(Src.Core.Recycling.SlotBinder)

local function createHarness(options: { prepareDesiredAssignment: any? }?)
	local created = 0
	local destroyed = {}
	local scope = createRecyclingScope({
		adapter = {
			create = function(viewType)
				created += 1
				return { id = created, viewType = viewType }
			end,
			destroy = function(view)
				destroyed[view] = true
			end,
		},
	})
	local binder = createSlotBinder({
		recyclingScope = scope,
		prepareDesiredAssignment = if options == nil then nil else options.prepareDesiredAssignment,
	})
	return binder, function()
		return created
	end, destroyed
end

local function slot(key: string, value: any, viewType: string?)
	return { key = key, value = value, viewType = viewType or "row" }
end

describe("SlotBinder", function()
	it("enters new keys with frozen assignments", function()
		local binder = createHarness()
		local changes = binder.apply({}, { slot("a", 1), slot("b", 2) })

		expect(#changes.entered).toBe(2)
		expect(#changes.updated).toBe(0)
		expect(#changes.departed).toBe(0)
		local a = changes.entered[1]
		expect(a.key).toBe("a")
		expect(a.assignment).toEqual({ key = "a", value = 1 })
		expect(table.isfrozen(a.assignment)).toBe(true)
		expect(binder.get("a")).toBe(a)
		expect(a.view).never.toBe(changes.entered[2].view)
	end)

	it("reports no changes when every slot is retained unchanged", function()
		local binder = createHarness()
		binder.apply({}, { slot("a", 1) })
		local changes = binder.apply({}, { slot("a", 1) })

		expect(#changes.entered + #changes.updated + #changes.departed).toBe(0)
	end)

	it("updates a retained key whose value or revision changed", function()
		local binder = createHarness()
		local first = binder.apply({}, { slot("a", 1) }).entered[1]
		local previousAssignment = first.assignment

		local changed = binder.apply({}, { slot("a", 2) })
		expect(changed.updated).toEqual({ first })
		expect(first.assignment).toEqual({ key = "a", value = 2 })
		expect(first.assignment).never.toBe(previousAssignment)

		local revised = slot("a", 2)
		revised.changed = true
		expect(binder.apply({}, { revised }).updated).toEqual({ first })
	end)

	it("hands a departing view to an entering key in the same exchange", function()
		local binder, createdCount = createHarness()
		local a = binder.apply({}, { slot("a", 1) }).entered[1]
		local view = a.view

		local changes = binder.apply({ "a" }, { slot("b", 2) })
		expect(createdCount()).toBe(1)
		expect(changes.entered[1].view).toBe(view)
		expect(#changes.departed).toBe(0)
		expect(binder.get("a")).toBeNil()
	end)

	it("departs unreused views", function()
		local binder = createHarness()
		local a = binder.apply({}, { slot("a", 1) }).entered[1]

		local changes = binder.apply({ "a" }, {})
		expect(changes.departed).toEqual({ a.view })
	end)

	it("rebinds a retained key whose view type changed", function()
		local binder = createHarness()
		local a = binder.apply({}, { slot("a", 1, "row") }).entered[1]

		local changes = binder.apply({}, { slot("a", 1, "header") })
		expect(#changes.entered).toBe(1)
		expect(changes.entered[1].view.viewType).toBe("header")
		expect(changes.departed).toEqual({ a.view })
	end)

	it("lets another key reuse the view a type change released", function()
		local binder, getCreated = createHarness()
		local original = binder.apply({}, { slot("a", 1, "row") }).entered[1].view

		local changes = binder.apply({}, { slot("a", 1, "card"), slot("b", 2, "row") })

		expect(getCreated()).toBe(2)
		expect(#changes.departed).toBe(0)
		expect(#changes.entered).toBe(2)
		expect(binder.get("b").view).toBe(original)
		expect(binder.get("a").view.viewType).toBe("card")
		expect(binder.get("a").view).never.toBe(original)
	end)

	it("syncs to an exact set of slots", function()
		local binder = createHarness()
		local initial = binder.sync({ slot("a", 1), slot("b", 2) })
		local b = initial.entered[2]

		local changes = binder.sync({ slot("b", 2), slot("c", 3) })
		expect(#changes.entered).toBe(1)
		expect(changes.entered[1].key).toBe("c")
		expect(binder.get("a")).toBeNil()
		expect(binder.get("b")).toBe(b)
	end)

	it("rejects duplicate keys and stays usable", function()
		local binder = createHarness()
		expect(function()
			binder.apply({}, { slot("a", 1), slot("a", 2) })
		end).toThrow('duplicate key "a"')

		expect(#binder.apply({}, { slot("a", 1) }).entered).toBe(1)
	end)

	it("prepares desired assignments", function()
		local binder = createHarness({
			prepareDesiredAssignment = function(desired)
				return { key = desired.key, value = desired.value * 10 }
			end,
		})
		local a = binder.apply({}, { slot("a", 1) }).entered[1]
		expect(a.assignment.value).toBe(10)
	end)

	it("releases every bound view", function()
		local binder = createHarness()
		local changes = binder.apply({}, { slot("a", 1), slot("b", 2) })

		local released = binder.releaseAll()
		expect(#released).toBe(2)
		expect(table.find(released, changes.entered[1].view)).never.toBeNil()
		expect(binder.get("a")).toBeNil()
	end)

	it("rejects use after destruction", function()
		local binder = createHarness()
		binder.destroy()
		binder.destroy()
		expect(function()
			binder.apply({}, {})
		end).toThrow("cannot apply after destruction")
	end)
end)
