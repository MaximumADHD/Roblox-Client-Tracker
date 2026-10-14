local Root = script:FindFirstAncestor("ViewRecyclerReact")
local JestGlobals = require(Root.TestDependencies).JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local createPinnedItem = require(Root.ReactAdapter.createPinnedItem)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)

it("retains the exact ItemView type identity after checking its value pairing", function()
	local ItemView = createRecyclableView(function()
		return nil
	end, { readiness = RecyclableViewReadiness.ReadyOnAssignment })
	local value = { label = "Pinned" }
	local pinned = createPinnedItem({
		key = "$pinned",
		value = value,
		itemType = ItemView,
	})

	expect(pinned.value).toBe(value)
	expect(pinned.itemType).toBe(ItemView)
	expect(table.isfrozen(pinned)).toBe(true)
end)

it("rejects functions not registered as Recyclable view types", function()
	expect(function()
		createPinnedItem({
			key = "$invalid",
			value = "value",
			itemType = function()
				return nil
			end,
		})
	end).toThrow("must be a Recyclable view type")
end)
