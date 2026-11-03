local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local ItemKeyRegistry = require(script.Parent.Parent.ItemKeyRegistry)

local function itemKey(value)
	return value.id
end

describe("ItemKeyRegistry", function()
	it("validates string keys before changing membership", function()
		local registry = ItemKeyRegistry.create(function(value)
			return value.id
		end, "TestRegistry")

		expect(function()
			registry.claim({ id = 1 }, 1)
		end).toThrow("keys must be strings")
		expect(registry.claim({ id = "1" }, 1)).toBe("1")
	end)

	it("rejects duplicate claims and releases keys for reuse", function()
		local registry = ItemKeyRegistry.create(itemKey, "TestRegistry")
		registry.claim({ id = "a" }, 1)

		expect(function()
			registry.claim({ id = "a" }, 2)
		end).toThrow('duplicate key "a"')
		registry.release("a")
		expect(registry.claim({ id = "a" }, 1)).toBe("a")
	end)

	it("rebuilds membership atomically", function()
		local registry = ItemKeyRegistry.create(itemKey, "TestRegistry")
		registry.rebuild({ { id = "a" } })

		expect(function()
			registry.rebuild({ { id = "b" }, { id = "b" } })
		end).toThrow('duplicate key "b"')
		expect(function()
			registry.claim({ id = "a" }, 2)
		end).toThrow('duplicate key "a"')

		expect(registry.rebuild({ { id = "b" } })).toEqual({ "b" })
		expect(registry.claim({ id = "a" }, 2)).toBe("a")
	end)

	it("restores an independent membership snapshot", function()
		local registry = ItemKeyRegistry.create(itemKey, "TestRegistry")
		registry.claim({ id = "a" }, 1)
		local snapshot = registry.snapshot()
		registry.claim({ id = "b" }, 2)

		registry.restore(snapshot)

		expect(registry.claim({ id = "b" }, 2)).toBe("b")
		expect(function()
			registry.claim({ id = "a" }, 1)
		end).toThrow('duplicate key "a"')
	end)

	it("clears all live membership", function()
		local registry = ItemKeyRegistry.create(itemKey, "TestRegistry")
		registry.rebuild({ { id = "a" }, { id = "b" } })

		registry.clear()

		expect(registry.claim({ id = "a" }, 1)).toBe("a")
		expect(registry.claim({ id = "b" }, 2)).toBe("b")
	end)

	it("atomically replaces an evicted key and permits same-key reuse", function()
		local registry = ItemKeyRegistry.create(itemKey, "TestRegistry")
		registry.rebuild({ { id = "a" }, { id = "b" } })

		expect(function()
			registry.replace("a", { id = "b" }, 2)
		end).toThrow('duplicate key "b"')
		expect(registry.replace("a", { id = "a" }, 2)).toBe("a")
		registry.release("a")
		expect(registry.claim({ id = "a" }, 2)).toBe("a")
	end)

	it("generates unique string keys", function()
		local registry = ItemKeyRegistry.create(nil, "TestRegistry")
		local first = registry.claim("a", 1)
		local second = registry.claim("b", 2)

		expect(type(first)).toBe("string")
		expect(type(second)).toBe("string")
		expect(second).never.toBe(first)
	end)

	it("leaves membership unchanged when key resolution errors", function()
		local registry = ItemKeyRegistry.create(function(value)
			if value.id == "error" then
				error("resolver failure")
			end
			return value.id
		end, "TestRegistry")

		expect(function()
			registry.claim({ id = "error" }, 1)
		end).toThrow("resolver failure")
		expect(registry.claim({ id = "error-free" }, 1)).toBe("error-free")
	end)
end)
