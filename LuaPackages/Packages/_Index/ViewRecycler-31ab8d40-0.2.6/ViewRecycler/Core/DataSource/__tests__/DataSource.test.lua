local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)

local function key(value)
	return value.id
end

local function ids(source)
	local result = {}
	for index = 1, source.getItemCount() do
		table.insert(result, source.getItem(index).id)
	end
	return result
end

describe("DataSource", function()
	it("owns array snapshots and validates duplicate keys", function()
		local input = { { id = "a" }, { id = "b" } }
		local source = DataSource.snapshot(input, key)
		input[1] = { id = "changed" }
		expect(ids(source)).toEqual({ "a", "b" })
		expect(function()
			DataSource.snapshot({ { id = "a" }, { id = "a" } }, key)
		end).toThrow("duplicate key")
	end)

	it("supports sequence edits with stable generated keys", function()
		local source = DataSource.sequence({ "a", "b" })
		local firstKey = source.getItemKey(1)
		source.prepend("head")
		source.setItem(2, "updated")
		source.moveItem(2, 3)
		expect(source.getItems(1, 3)).toEqual({ "head", "b", "updated" })
		expect(source.getItemKey(3)).toBe(firstKey)
	end)

	it("emits one atomic transaction for explicit batches", function()
		local source = DataSource.sequence({ { id = "a" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)
		source.transaction(function()
			source.append({ id = "b" })
			source.prepend({ id = "z" })
			source.setItem(2, { id = "a" })
		end)
		expect(#received).toBe(1)
		local expected: any = {
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } } :: any,
			{ type = DataSourceChangeType.Insert, index = 1, keys = { "z" } } :: any,
			{ type = DataSourceChangeType.Update, keys = { "a" } } :: any,
		}
		expect(received[1].changes).toEqual(expected)
	end)

	it("supports replacement and reset", function()
		local source = DataSource.sequence({ { id = "a" }, { id = "b" }, { id = "c" } }, key)
		source.replaceItems(2, 3, { { id = "x" } })
		expect(ids(source)).toEqual({ "a", "x" })
		source.reset({ { id = "n" } })
		expect(ids(source)).toEqual({ "n" })
	end)

	it("publishes replacement as one remove followed by one multi-key insert", function()
		local source = DataSource.sequence({ { id = "a" }, { id = "b" }, { id = "c" }, { id = "d" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		source.replaceItems(2, 3, { { id = "x" }, { id = "y" }, { id = "z" } })

		expect(#received).toBe(1)
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Remove, index = 2, keys = { "b", "c" } },
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "x", "y", "z" } },
		} :: any)
		expect(ids(source)).toEqual({ "a", "x", "y", "z", "d" })
	end)

	it("rolls back replacement when replacement keys are duplicated", function()
		local source = DataSource.sequence({ { id = "a" }, { id = "b" }, { id = "c" } }, key)
		local publications = 0
		source.subscribe(function()
			publications += 1
		end)

		expect(function()
			source.replaceItems(2, 3, { { id = "x" }, { id = "x" } })
		end).toThrow("duplicate key")

		expect(ids(source)).toEqual({ "a", "b", "c" })
		expect(publications).toBe(0)
		source.replaceItems(2, 3, { { id = "x" } })
		expect(ids(source)).toEqual({ "a", "x" })
	end)

	it("preserves sequence state when reset key validation fails", function()
		local source = DataSource.sequence({ { id = "a" }, { id = "b" } }, key)

		expect(function()
			source.reset({ { id = "c" }, { id = "c" } })
		end).toThrow("duplicate key")

		expect(ids(source)).toEqual({ "a", "b" })
		source.append({ id = "c" })
		expect(ids(source)).toEqual({ "a", "b", "c" })
	end)

	it("keeps reset transactions as sequential self-contained deltas", function()
		local source = DataSource.sequence({ { id = "a" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		source.transaction(function()
			source.reset({ { id = "b" } })
			source.append({ id = "c" })
		end)

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Reset, keys = { "b" } },
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "c" } },
		})
		expect(received[1].previousItemCount).toBe(1)
		expect(received[1].itemCount).toBe(2)
		expect(ids(source)).toEqual({ "b", "c" })
	end)

	it("provides focused deque operations", function()
		local source = DataSource.deque({ { id = "b" } }, key)
		source.pushFront({ id = "a" })
		source.pushBack({ id = "c" })
		expect(ids(source)).toEqual({ "a", "b", "c" })
		local front = source.popFront()
		local back = source.popBack()
		assert(front ~= nil and back ~= nil, "expected both deque values")
		expect(front.id).toBe("a")
		expect(back.id).toBe("c")
		expect(ids(source)).toEqual({ "b" })
	end)

	it("preserves logical order while deque storage wraps and grows", function()
		local source = DataSource.deque({}, key)
		for index = 1, 10 do
			source.pushBack({ id = tostring(index) })
		end
		for _ = 1, 5 do
			source.popFront()
		end
		for index = 11, 15 do
			source.pushBack({ id = tostring(index) })
		end
		expect(ids(source)).toEqual({ "6", "7", "8", "9", "10", "11", "12", "13", "14", "15" })
		local back = source.popBack()
		assert(back ~= nil, "expected wrapped back value")
		expect(back.id).toBe("15")
		expect(ids(source)).toEqual({ "6", "7", "8", "9", "10", "11", "12", "13", "14" })
	end)

	it("evicts the oldest ring entry in the same transaction", function()
		local source = DataSource.ringBuffer(2, { { id = "a" }, { id = "b" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)
		source.push({ id = "c" })
		expect(ids(source)).toEqual({ "b", "c" })
		expect(#received).toBe(1)
		local expected: any = {
			{ type = DataSourceChangeType.Remove, index = 1, keys = { "a" } } :: any,
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "c" } } :: any,
		}
		expect(received[1].changes).toEqual(expected)
	end)

	it("wraps ring storage and permits reusing the evicted key", function()
		local source = DataSource.ringBuffer(3, { { id = "a" }, { id = "b" }, { id = "c" } }, key)
		source.push({ id = "d" })
		source.push({ id = "e" })
		source.push({ id = "c" })

		expect(ids(source)).toEqual({ "d", "e", "c" })
	end)

	it("maps values while preserving child keys", function()
		local child = DataSource.sequence({ { id = "a", value = 1 } }, key)
		local mapped = DataSource.map(child, function(value)
			return value.value * 2
		end)
		local childKey = child.getItemKey(1)
		expect(mapped.getItemKey(1)).toBe(childKey)
		expect(mapped.getItem(1)).toBe(2)
		child.setItem(1, { id = "a", value = 3 })
		expect(mapped.getItem(1)).toBe(6)
		expect(mapped.getItemKey(1)).toBe(childKey)
	end)

	it("keeps mapped output identity stable until its input or index changes", function()
		local child = DataSource.sequence({ { id = "a", value = 1 } }, key)
		local calls = 0
		local mapped = DataSource.map(child, function(value, index)
			calls += 1
			return { value = value.value, index = index }
		end)
		local disconnect = mapped.subscribe(function() end)

		local first = mapped.getItem(1)
		expect(mapped.getItem(1)).toBe(first)
		expect(calls).toBe(1)

		child.append({ id = "b", value = 2 })
		expect(mapped.getItem(1)).toBe(first)
		expect(calls).toBe(1)

		child.prepend({ id = "z", value = 0 })
		expect(mapped.getItem(2)).never.toBe(first)
		expect(calls).toBe(2)

		disconnect()
	end)

	it("concatenates and reverses sources", function()
		local first = DataSource.sequence({ { id = "a" } }, key)
		local second = DataSource.sequence({ { id = "b" }, { id = "c" } }, key)
		local combined = DataSource.concat(first, second)
		expect(ids(combined)).toEqual({ "a", "b", "c" })
		expect(ids(DataSource.reverse(combined))).toEqual({ "c", "b", "a" })
	end)

	it("requires globally unique concat keys", function()
		expect(function()
			DataSource.concat(DataSource.snapshot({ { id = "a" } }, key), DataSource.snapshot({ { id = "a" } }, key))
		end).toThrow("duplicate key")
	end)

	it("reports transaction lengths without exposing internal versions", function()
		local source = DataSource.sequence({ { id = "a" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		source.append({ id = "b" })
		source.transaction(function()
			source.prepend({ id = "z" })
			source.remove(2)
		end)

		expect(received[1].previousItemCount).toBe(1)
		expect(received[1].itemCount).toBe(2)
		expect(received[2].previousItemCount).toBe(2)
		expect(received[2].itemCount).toBe(2)
	end)

	it("rolls back failed transactions and preserves the callback error", function()
		local source = DataSource.sequence({ { id = "a" } }, key)
		local transactionCount = 0
		source.subscribe(function()
			transactionCount += 1
		end)

		expect(function()
			source.transaction(function()
				source.append({ id = "b" })
				error("original failure")
			end)
		end).toThrow("original failure")
		expect(ids(source)).toEqual({ "a" })
		expect(transactionCount).toBe(0)
		source.append({ id = "b" })
		expect(ids(source)).toEqual({ "a", "b" })
	end)

	it("releases deque key membership when values are removed", function()
		local source = DataSource.deque({ { id = "a" }, { id = "b" } }, key)

		source.popFront()
		source.pushBack({ id = "a" })
		source.popBack()
		source.pushFront({ id = "a" })

		expect(ids(source)).toEqual({ "a", "b" })
	end)

	it("restores deque key membership when a transaction rolls back", function()
		local source = DataSource.deque({ { id = "a" } }, key)

		expect(function()
			source.transaction(function()
				source.popFront()
				source.pushBack({ id = "b" })
				error("rollback")
			end)
		end).toThrow("rollback")

		expect(ids(source)).toEqual({ "a" })
		source.pushBack({ id = "b" })
		expect(ids(source)).toEqual({ "a", "b" })
	end)

	it("restores ring key membership when a transaction rolls back", function()
		local source = DataSource.ringBuffer(2, { { id = "a" }, { id = "b" } }, key)

		expect(function()
			source.transaction(function()
				source.push({ id = "c" })
				error("rollback")
			end)
		end).toThrow("rollback")
		expect(ids(source)).toEqual({ "a", "b" })
		source.push({ id = "c" })
		expect(ids(source)).toEqual({ "b", "c" })
	end)

	it("preserves ring eviction state when replacement validation fails", function()
		local source = DataSource.ringBuffer(2, { { id = "a" }, { id = "b" } }, key)

		expect(function()
			source.push({ id = "b" })
		end).toThrow("duplicate key")

		expect(ids(source)).toEqual({ "a", "b" })
		source.push({ id = "a" })
		expect(ids(source)).toEqual({ "b", "a" })
	end)

	it("preserves ring state when the key callback errors", function()
		local source = DataSource.ringBuffer(2, { { id = "a" }, { id = "b" } }, function(value)
			if value.id == "error" then
				error("key callback failure")
			end
			return value.id
		end)

		expect(function()
			source.push({ id = "error" })
		end).toThrow("key callback failure")

		expect(ids(source)).toEqual({ "a", "b" })
		source.push({ id = "c" })
		expect(ids(source)).toEqual({ "b", "c" })
	end)

	it("generates unique keys across mutable DataSource containers", function()
		local sequence = DataSource.sequence({ "sequence-a" })
		local deque = DataSource.deque({ "deque-a" })
		local ring = DataSource.ringBuffer(2, { "ring-a" })

		sequence.append("sequence-b")
		deque.pushBack("deque-b")
		ring.push("ring-b")

		local generatedKeys = {
			sequence.getItemKey(1),
			sequence.getItemKey(2),
			deque.getItemKey(1),
			deque.getItemKey(2),
			ring.getItemKey(1),
			ring.getItemKey(2),
		}
		for index, generatedKey in generatedKeys do
			expect(type(generatedKey)).toBe("string")
			expect(table.find(generatedKeys, generatedKey)).toBe(index)
		end
	end)

	it("restores queued changes when a nested transaction rolls back", function()
		local source = DataSource.sequence({ { id = "a" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		source.transaction(function()
			source.append({ id = "b" })
			local succeeded = pcall(function()
				source.transaction(function()
					source.append({ id = "discarded" })
					error("nested failure")
				end)
			end)
			expect(succeeded).toBe(false)
			source.append({ id = "c" })
		end)

		expect(ids(source)).toEqual({ "a", "b", "c" })
		expect(#received).toBe(1)
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } } :: any,
			{ type = DataSourceChangeType.Insert, index = 3, keys = { "c" } } :: any,
		} :: any)
	end)

	it("emits a self-contained move when a sequence moves an existing value", function()
		local source = DataSource.sequence({ { id = "a" }, { id = "b" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		source.moveItem(1, 2)

		expect(ids(source)).toEqual({ "b", "a" })
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Move, fromIndex = 1, toIndex = 2, key = "a" },
		})
	end)

	it("emits an exact reorder and rejects incomplete key sets before publication", function()
		local source = DataSource.sequence({ { id = "a" }, { id = "b" }, { id = "c" } }, key)
		local received = {}
		source.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		source.reorder({ "c", "a", "b" })

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Reorder, keys = { "c", "a", "b" } },
		})
		expect(function()
			source.reorder({ "a", "a", "c" })
		end).toThrow("every key once")
		expect(#received).toBe(1)
		expect(ids(source)).toEqual({ "c", "a", "b" })
	end)

	it("validates keys when setting an item", function()
		local source = DataSource.sequence({ { id = "a", value = 1 } }, key)
		expect(function()
			source.setItem(1, { id = "b", value = 2 })
		end).toThrow("preserve the existing key")
		expect(source.getItem(1).value).toBe(1)
	end)

	it("maps child transaction shapes without resetting", function()
		local child = DataSource.sequence({ { id = "a", value = 1 } }, key)
		local mapped = DataSource.map(child, function(value)
			return value.value
		end)
		local received = {}
		mapped.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		child.transaction(function()
			child.append({ id = "b", value = 2 })
			child.setItem(1, { id = "a", value = 3 })
		end)

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } } :: any,
			{ type = DataSourceChangeType.Update, keys = { "a" } } :: any,
		} :: any)
		expect(received[1].previousItemCount).toBe(1)
		expect(received[1].itemCount).toBe(2)
	end)

	it("invalidates a mapped value after its child key is updated", function()
		local child = DataSource.sequence({ { id = "a", value = 1 } }, key)
		local mapped = DataSource.map(child, function(value)
			return { value = value.value }
		end)
		local disconnect = mapped.subscribe(function() end)
		local first = mapped.getItem(1)

		child.setItem(1, { id = "a", value = 2 })

		local updated = mapped.getItem(1)
		expect(updated).never.toBe(first)
		expect(updated.value).toBe(2)
		disconnect()
	end)

	it("prunes a mapped value after its child key is removed", function()
		local value = { id = "a", value = 1 }
		local child = DataSource.sequence({ value }, key)
		local calls = 0
		local mapped = DataSource.map(child, function(input)
			calls += 1
			return { value = input.value }
		end)
		local disconnect = mapped.subscribe(function() end)
		mapped.getItem(1)
		expect(calls).toBe(1)

		child.remove(1)
		child.insert(1, value)
		mapped.getItem(1)

		expect(calls).toBe(2)
		disconnect()
	end)

	it("offsets concat child transaction shapes and owns subscription lifetime", function()
		local first = DataSource.sequence({ { id = "a" } }, key)
		local second = DataSource.sequence({ { id = "b" } }, key)
		local combined = DataSource.concat(first, second)
		local received = {}
		local disconnect = combined.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		second.prepend({ id = "c" })
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Insert, index = 2, keys = { "c" } },
		} :: any)
		expect(received[1].previousItemCount).toBe(2)
		expect(received[1].itemCount).toBe(3)

		disconnect()
		second.append({ id = "d" })
		expect(#received).toBe(1)
	end)

	it("translates a concat child reset into an exact combined reset", function()
		local first = DataSource.sequence({ { id = "a" } }, key)
		local second = DataSource.sequence({ { id = "b" }, { id = "c" } }, key)
		local combined = DataSource.concat(first, second)
		local received = {}
		combined.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		second.reset({ { id = "d" } })

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Reset, keys = { "a", "d" } } :: any,
		} :: any)
		expect(received[1].previousItemCount).toBe(3)
		expect(received[1].itemCount).toBe(2)
		expect(ids(combined)).toEqual({ "a", "d" })
	end)

	it("offsets concat child moves and expands child reorders", function()
		local first = DataSource.sequence({ { id = "a" }, { id = "b" } }, key)
		local second = DataSource.sequence({ { id = "c" }, { id = "d" } }, key)
		local combined = DataSource.concat(first, second)
		local received = {}
		combined.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		second.moveItem(1, 2)
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Move, fromIndex = 3, toIndex = 4, key = "c" },
		})
		expect(ids(combined)).toEqual({ "a", "b", "d", "c" })

		second.reorder({ "c", "d" })
		expect(received[2].changes).toEqual({
			{ type = DataSourceChangeType.Reorder, keys = { "a", "b", "c", "d" } },
		})
		expect(ids(combined)).toEqual({ "a", "b", "c", "d" })
	end)

	it("mirrors reverse child transaction shapes", function()
		local child = DataSource.sequence({ { id = "a" }, { id = "b" }, { id = "c" } }, key)
		local reversed = DataSource.reverse(child)
		local received = {}
		reversed.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		child.transaction(function()
			child.insert(2, { id = "x" })
			child.remove(4)
			child.setItem(1, { id = "a" })
		end)

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Insert, index = 3, keys = { "x" } } :: any,
			{ type = DataSourceChangeType.Remove, index = 1, keys = { "c" } } :: any,
			{ type = DataSourceChangeType.Update, keys = { "a" } } :: any,
		} :: any)
		expect(ids(reversed)).toEqual({ "b", "x", "a" })
	end)

	it("forwards a reverse child reset", function()
		local child = DataSource.sequence({ { id = "a" }, { id = "b" } }, key)
		local reversed = DataSource.reverse(child)
		local received = {}
		reversed.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		child.reset({ { id = "c" } })

		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Reset, keys = { "c" } },
		})
		expect(ids(reversed)).toEqual({ "c" })
	end)

	it("mirrors reverse child moves and reorders", function()
		local child = DataSource.sequence({ { id = "a" }, { id = "b" }, { id = "c" }, { id = "d" } }, key)
		local reversed = DataSource.reverse(child)
		local received = {}
		reversed.subscribe(function(changeBatch)
			table.insert(received, changeBatch)
		end)

		child.moveItem(1, 3)
		expect(received[1].changes).toEqual({
			{ type = DataSourceChangeType.Move, fromIndex = 4, toIndex = 2, key = "a" },
		})
		expect(ids(reversed)).toEqual({ "d", "a", "c", "b" })

		child.reorder({ "d", "c", "b", "a" })
		expect(received[2].changes).toEqual({
			{ type = DataSourceChangeType.Reorder, keys = { "a", "b", "c", "d" } },
		})
		expect(ids(reversed)).toEqual({ "a", "b", "c", "d" })
	end)

	it("subscribes adapter children only while observed", function()
		local child: any = DataSource.sequence({ { id = "a" } }, key)
		local originalSubscribe = child.subscribe
		local activeSubscriptions = 0
		child.subscribe = function(callback)
			activeSubscriptions += 1
			local disconnectChild = originalSubscribe(callback)
			return function()
				activeSubscriptions -= 1
				disconnectChild()
			end
		end

		local mapped = DataSource.map(child, function(value)
			return value
		end)
		local reversed = DataSource.reverse(child)
		local combined = DataSource.concat(child)
		expect(activeSubscriptions).toBe(0)

		local disconnectMapped = mapped.subscribe(function() end)
		local disconnectReversed = reversed.subscribe(function() end)
		local disconnectCombined = combined.subscribe(function() end)
		expect(activeSubscriptions).toBe(3)

		disconnectMapped()
		disconnectReversed()
		disconnectCombined()
		expect(activeSubscriptions).toBe(0)
	end)
end)
