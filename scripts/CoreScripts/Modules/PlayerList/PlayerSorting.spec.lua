--!nonstrict
return function()
	local PlayerSorting = require(script.Parent.PlayerSorting)

	local function toDebugStr(value)
		local ty = typeof(value)
		if ty == 'string' then
			return string.format('%q', value)
		end
		return tostring(value)
	end

	-- In case there are holes in the array.
	local function trueLen(array)
		local max = 0
		for index in pairs(array) do
			max = math.max(max, index)
		end
		return max
	end

	local function assertTableEq(left, right, msg)
		assert(type(left) == 'table', 'argument #1 to assertTableEq must be a table')
		assert(type(right) == 'table', 'argument #2 to assertTableEq must be a table')
		local lenL = trueLen(left)
		local lenR = trueLen(right)
		local isSame = lenL == lenR
		local lines = {
			("| idx |  % 3d items |  % 3d items |"):format(lenL, lenR),
			"| --- | ---------- | ---------- |",
		}
		for i = 1, math.max(lenL, lenR) do
			local l = left[i]
			local r = right[i]
			if l ~= r then
				isSame = false
			end
			table.insert(lines, string.format("| % 3d | % 10s | % 10s |", i, toDebugStr(l), toDebugStr(r)))
		end
		assert(isSame, (msg or 'tables are not equal') .. "\n" .. table.concat(lines, '\n'))
	end

	describe("joinSorted", function()
		local join = PlayerSorting.joinSorted
		assert(join, "joinSorted missing?")

		it("should merge two interleaved arrays", function()
			assertTableEq(join({1, 3, 5, 7}, {2, 4, 6, 8}), {1, 2, 3, 4, 5, 6, 7, 8})
			assertTableEq(join({3, 5, 7, 9}, {2, 4, 6, 8}), {2, 3, 4, 5, 6, 7, 8, 9})
		end)

		it("should merge with empty arrays", function()
			assertTableEq(join({1, 2, 3}, {}), {1, 2, 3})
			assertTableEq(join({}, {1, 2, 3}), {1, 2, 3})
		end)

		it("should merge arrays with long tails", function()
			assertTableEq(join({1, 2, 4}, {3, 5, 6, 7, 8}), {1, 2, 3, 4, 5, 6, 7, 8})
			assertTableEq(join({3, 5, 6, 7, 8}, {1, 2, 4}), {1, 2, 3, 4, 5, 6, 7, 8})
		end)
	end)

	describe("keyCmp", function()
		local cmp = PlayerSorting.keyCmp
		assert(cmp, "keyCmp missing?")

		it("should sort with no stats", function()
			expect(cmp({ name = "APPLE" }, { name = "BANANA"})).equal(true)
			expect(cmp({ name = "BANANA" }, { name = "APPLE"})).equal(false)
			expect(cmp({ name = "APPLE" }, { name = "APPLE"})).equal(false)
		end)

		it("should sort with numeric stats", function()
			expect(cmp({ name = "BANANA", stat = 13 }, { name = "APPLE", stat = 12 })).equal(true)
			expect(cmp({ name = "APPLE", stat = 12 }, { name = "BANANA", stat = 13 })).equal(false)
			expect(cmp({ name = "APPLE", stat = 12 }, { name = "APPLE", stat = 12 })).equal(false)
			expect(cmp({ name = "APPLE", stat = 12 }, { name = "BANANA", stat = 12 })).equal(true)
			expect(cmp({ name = "APPLE", stat = 120 }, { name = "BANANA", stat = 13 })).equal(true)
		end)

		it("should sort with string stats", function()
			expect(cmp({ name = "BANANA", stat = "13" }, { name = "APPLE", stat = "12" })).equal(true)
			expect(cmp({ name = "APPLE", stat = "12" }, { name = "BANANA", stat = "13" })).equal(false)
			expect(cmp({ name = "APPLE", stat = "12" }, { name = "APPLE", stat = "12" })).equal(false)
			expect(cmp({ name = "APPLE", stat = "12" }, { name = "BANANA", stat = "12" })).equal(true)
			expect(cmp({ name = "APPLE", stat = "130" }, { name = "BANANA", stat = "12" })).equal(true)
		end)

		it("should sort with mixed stats", function()
			expect(cmp({ name = "BANANA", stat = 13 }, { name = "APPLE", stat = "12" })).equal(true)
			expect(cmp({ name = "APPLE", stat = "12" }, { name = "BANANA", stat = 13 })).equal(false)
			expect(cmp({ name = "APPLE", stat = "12" }, { name = "APPLE", stat = 12 })).equal(false)
			expect(cmp({ name = "APPLE", stat = "130" }, { name = "BANANA", stat = 12 })).equal(true)

			-- This check failed in the old sort function
			expect(cmp({ name = "APPLE", stat = 12 }, { name = "BANANA", stat = "12" })).equal(true)
		end)
	end)
end
