local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)

type Item = {
	id: string,
	version: number?,
}

local function item(id: string, version: number?): Item
	return {
		id = id,
		version = version,
	}
end

local function getItemKey(value: Item): string
	return value.id
end

local function getIds(source: DataSource.DataSource<Item>): { string }
	local result = {}
	for index = 1, source.getItemCount() do
		table.insert(result, source.getItem(index).id)
	end
	return result
end

describe("DataSource.reconcileSnapshot", function()
	it("applies contiguous insertions and removals incrementally", function()
		local a = item("a")
		local b = item("b")
		local c = item("c")
		local cases = {
			{
				previous = { b, c },
				next = { a, b, c },
				change = { type = DataSourceChangeType.Insert, index = 1, keys = { "a" } },
			},
			{
				previous = { a, b },
				next = { a, b, c },
				change = { type = DataSourceChangeType.Insert, index = 3, keys = { "c" } },
			},
			{
				previous = { a, c },
				next = { a, b, c },
				change = { type = DataSourceChangeType.Insert, index = 2, keys = { "b" } },
			},
			{
				previous = { a, b, c },
				next = { b, c },
				change = { type = DataSourceChangeType.Remove, index = 1, keys = { "a" } },
			},
			{
				previous = { a, b, c },
				next = { a, b },
				change = { type = DataSourceChangeType.Remove, index = 3, keys = { "c" } },
			},
			{
				previous = { a, b, c },
				next = { a, c },
				change = { type = DataSourceChangeType.Remove, index = 2, keys = { "b" } },
			},
		}

		for _, case in cases do
			local source = DataSource.sequence(case.previous, getItemKey)
			local received = {}
			source.subscribe(function(changeBatch)
				table.insert(received, changeBatch)
			end)

			DataSource.reconcileSnapshot(source, case.previous, case.next, getItemKey)

			local nextIds = {}
			for _, value in case.next do
				table.insert(nextIds, value.id)
			end
			expect(getIds(source)).toEqual(nextIds)
			expect(#received).toBe(1)
			expect(received[1].changes).toEqual({ case.change } :: any)
		end
	end)

	it("uses ordinary Luau equality for same-key updates", function()
		local previous = { item("a", 1), item("b", 1) }
		local nextItems = { previous[1], item("b", 2) }
		local source = DataSource.sequence(previous, getItemKey)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		DataSource.reconcileSnapshot(source, previous, nextItems, getItemKey)

		expect(source.getItem(1)).toBe(previous[1])
		expect(source.getItem(2)).toBe(nextItems[2])
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Update, keys = { "b" } },
		} :: any)
	end)

	it("publishes structural and value changes as one atomic notification", function()
		local previous = { item("a", 1), item("b", 1) }
		local nextItems = { item("a", 2), previous[2], item("c", 1) }
		local source = DataSource.sequence(previous, getItemKey)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		DataSource.reconcileSnapshot(source, previous, nextItems, getItemKey)

		expect(#received).toBe(1)
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Insert, index = 3, keys = { "c" } },
			{ type = DataSourceChangeType.Update, keys = { "a" } },
		} :: any)
		expect(getIds(source)).toEqual({ "a", "b", "c" })
	end)

	it("uses one move when retained keys have an isolated move", function()
		local previous = { item("a"), item("b"), item("c") }
		local nextItems = { previous[2], previous[1], previous[3] }
		local source = DataSource.sequence(previous, getItemKey)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		DataSource.reconcileSnapshot(source, previous, nextItems, getItemKey)

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Move, fromIndex = 2, toIndex = 1, key = "b" },
		})
		expect(getIds(source)).toEqual({ "b", "a", "c" })
	end)

	it("uses one reorder for an arbitrary key-set-preserving sort", function()
		local previous = { item("a"), item("b"), item("c") }
		local nextItems = { previous[3], previous[2], previous[1] }
		local source = DataSource.sequence(previous, getItemKey)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		DataSource.reconcileSnapshot(source, previous, nextItems, getItemKey)

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Reorder, keys = { "c", "b", "a" } },
		})
		expect(getIds(source)).toEqual({ "c", "b", "a" })
	end)

	it("uses reset for arbitrary replacement", function()
		local previous = { item("a"), item("b"), item("c") }
		local nextItems = { item("x"), item("b"), item("y") }
		local source = DataSource.sequence(previous, getItemKey)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		DataSource.reconcileSnapshot(source, previous, nextItems, getItemKey)

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Reset, keys = { "x", "b", "y" } },
		})
	end)

	it("rejects duplicate keys before mutating the sequence", function()
		local previous = { item("a") }
		local source = DataSource.sequence(previous, getItemKey)
		local notificationCount = 0
		source.subscribe(function()
			notificationCount += 1
		end)

		expect(function()
			DataSource.reconcileSnapshot(source, previous, { item("b"), item("b") }, getItemKey)
		end).toThrow('duplicate key "b"')
		expect(getIds(source)).toEqual({ "a" })
		expect(notificationCount).toBe(0)
	end)
end)
