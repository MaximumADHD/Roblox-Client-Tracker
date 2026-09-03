local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local OrderStatisticTree = require(Src.Core.Layout.SizeTree.OrderStatisticTree)

-- Verifies prefixSum(i+1) - prefixSum(i) == getSize(i) for all i, and totalSum matches.
local function checkInvariants(t)
	local n = t.length()
	local runningSum = 0
	for i = 1, n do
		expect(t.prefixSum(i)).toBe(runningSum)
		runningSum += t.getSize(i)
	end
	expect(t.totalSum()).toBe(runningSum)
end

describe("OrderStatisticTree", function()
	describe("empty tree", function()
		it("has correct defaults", function()
			local t = OrderStatisticTree.new()
			expect(t.length()).toBe(0)
			expect(t.totalSum()).toBe(0)
			expect(t.prefixSum(1)).toBe(0)
			expect(t.getSize(1)).toBe(0)
			expect(t.prefersIncremental(0)).toBe(false)
		end)
	end)

	describe("getSize out-of-bounds", function()
		it("returns 0 for index 0 and index length+1", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			expect(t.getSize(0)).toBe(0)
			expect(t.getSize(2)).toBe(0)
		end)
	end)

	describe("insert", function()
		it("inserts at head and shifts existing items right", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(1, 5)
			expect(t.getSize(1)).toBe(5)
			expect(t.getSize(2)).toBe(10)
			expect(t.totalSum()).toBe(15)
			checkInvariants(t)
		end)

		it("inserts at tail", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 20)
			t.insert(3, 30)
			expect(t.getSize(1)).toBe(10)
			expect(t.getSize(2)).toBe(20)
			expect(t.getSize(3)).toBe(30)
			expect(t.totalSum()).toBe(60)
			checkInvariants(t)
		end)

		it("inserts in the middle", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 30)
			t.insert(2, 20)
			expect(t.length()).toBe(3)
			expect(t.getSize(1)).toBe(10)
			expect(t.getSize(2)).toBe(20)
			expect(t.getSize(3)).toBe(30)
			checkInvariants(t)
		end)

		it("accumulates totalSum correctly after each insert", function()
			local t = OrderStatisticTree.new()
			local sizes = { 4, 7, 2, 9, 1 }
			local sum = 0
			for i, sz in sizes do
				t.insert(i, sz)
				sum += sz
				expect(t.totalSum()).toBe(sum)
			end
		end)

		it("maintains prefix sum invariant after multiple inserts", function()
			local t = OrderStatisticTree.new()
			local sizes = { 5, 3, 8, 1, 7 }
			for i, sz in sizes do
				t.insert(i, sz)
			end
			checkInvariants(t)
		end)
	end)

	describe("remove", function()
		it("removes from head", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 20)
			t.insert(3, 30)
			t.remove(1)
			expect(t.length()).toBe(2)
			expect(t.getSize(1)).toBe(20)
			expect(t.getSize(2)).toBe(30)
			expect(t.totalSum()).toBe(50)
			checkInvariants(t)
		end)

		it("removes from tail", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 20)
			t.insert(3, 30)
			t.remove(3)
			expect(t.length()).toBe(2)
			expect(t.getSize(1)).toBe(10)
			expect(t.getSize(2)).toBe(20)
			expect(t.totalSum()).toBe(30)
			checkInvariants(t)
		end)

		it("removes from middle", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 20)
			t.insert(3, 30)
			t.remove(2)
			expect(t.length()).toBe(2)
			expect(t.getSize(1)).toBe(10)
			expect(t.getSize(2)).toBe(30)
			expect(t.totalSum()).toBe(40)
			checkInvariants(t)
		end)

		it("removes down to empty", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 5)
			t.insert(2, 10)
			t.remove(1)
			expect(t.length()).toBe(1)
			t.remove(1)
			expect(t.length()).toBe(0)
			expect(t.totalSum()).toBe(0)
			expect(t.prefixSum(1)).toBe(0)
		end)
	end)

	describe("update", function()
		it("updates head, middle, and tail correctly", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 20)
			t.insert(3, 30)

			t.update(1, 15)
			expect(t.getSize(1)).toBe(15)
			expect(t.totalSum()).toBe(65)
			checkInvariants(t)

			t.update(2, 25)
			expect(t.getSize(2)).toBe(25)
			expect(t.totalSum()).toBe(70)
			checkInvariants(t)

			t.update(3, 35)
			expect(t.getSize(3)).toBe(35)
			expect(t.totalSum()).toBe(75)
			checkInvariants(t)
		end)

		it("updating to the same value leaves totalSum unchanged", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.update(1, 10)
			expect(t.getSize(1)).toBe(10)
			expect(t.totalSum()).toBe(10)
		end)

		it("updating to 0 works correctly", function()
			local t = OrderStatisticTree.new()
			t.insert(1, 10)
			t.insert(2, 20)
			t.update(1, 0)
			expect(t.getSize(1)).toBe(0)
			expect(t.totalSum()).toBe(20)
			checkInvariants(t)
		end)
	end)

	describe("buildFromArray", function()
		it("handles empty array", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({})
			expect(t.length()).toBe(0)
			expect(t.totalSum()).toBe(0)
		end)

		it("handles single element", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 42 })
			expect(t.length()).toBe(1)
			expect(t.getSize(1)).toBe(42)
			expect(t.totalSum()).toBe(42)
			checkInvariants(t)
		end)

		it("handles 50 elements with correct sizes and prefix sums", function()
			local sizes = {}
			local total = 0
			for i = 1, 50 do
				sizes[i] = i * 3
				total += sizes[i]
			end
			local t = OrderStatisticTree.new()
			t.buildFromArray(sizes)
			expect(t.length()).toBe(50)
			expect(t.totalSum()).toBe(total)
			for i = 1, 50 do
				expect(t.getSize(i)).toBe(sizes[i])
			end
			checkInvariants(t)
		end)

		it("exports sizes in logical order", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 30, 10, 50, 20 })
			expect(t.toArray()).toEqual({ 30, 10, 50, 20 })
		end)
	end)

	describe("global estimate", function()
		it("updates scattered unmeasured geometry without changing measured overrides", function()
			local t = OrderStatisticTree.new(10)
			t.insert(1, nil)
			t.insert(2, 30)
			t.insert(3, nil)

			expect(t.getMeasuredItemCount()).toBe(1)
			expect(t.totalSum()).toBe(50)
			expect(t.setEstimatedItemLength(20)).toBe(true)
			expect(t.toArray()).toEqual({ 20, 30, 20 })
			expect(t.prefixSum(3)).toBe(50)
			expect(t.totalSum()).toBe(70)
			expect(t.indexAtPrefixSum(20)).toBe(2)
			expect(t.indexAtPrefixSum(50)).toBe(3)
		end)

		it("does not report a geometry change when every existing item is measured", function()
			local t = OrderStatisticTree.new(10)
			t.buildFromArray({ 20, 30 })

			expect(t.setEstimatedItemLength(50)).toBe(false)
			expect(t.totalSum()).toBe(50)

			t.insert(3, nil)
			expect(t.getSize(3)).toBe(50)
			expect(t.totalSum()).toBe(100)
		end)

		it("builds sparse measurements and preserves them through structural edits", function()
			local measurements = {
				[2] = 40,
				[5] = 70,
			}
			local t = OrderStatisticTree.new(10)
			t.buildFromMeasurements(5, function(index)
				return measurements[index]
			end)

			expect(t.toArray()).toEqual({ 10, 40, 10, 10, 70 })
			expect(t.getMeasuredItemCount()).toBe(2)

			t.remove(1)
			t.insert(3, nil)
			t.setEstimatedItemLength(20)

			expect(t.toArray()).toEqual({ 40, 20, 20, 20, 70 })
			expect(t.getMeasuredItemCount()).toBe(2)
			expect(t.totalSum()).toBe(170)
		end)

		it("can clear a measured override back to the global estimate", function()
			local t = OrderStatisticTree.new(10)
			t.buildFromArray({ 40 })

			t.update(1, nil)

			expect(t.getMeasuredItemCount()).toBe(0)
			expect(t.getSize(1)).toBe(10)
			expect(t.setEstimatedItemLength(25)).toBe(true)
			expect(t.getSize(1)).toBe(25)
		end)
	end)

	describe("prefersIncremental", function()
		it("returns true for few changes in a large tree", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray(table.create(100, 1))
			expect(t.prefersIncremental(1)).toBe(true)
		end)

		it("returns false for many changes relative to tree size", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray(table.create(100, 1))
			expect(t.prefersIncremental(100)).toBe(false)
		end)

		it("threshold is approximately n/log2(n)", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray(table.create(100, 1))
			expect(t.prefersIncremental(14)).toBe(true)
			expect(t.prefersIncremental(16)).toBe(false)
		end)

		it("returns false for empty tree", function()
			local t = OrderStatisticTree.new()
			expect(t.prefersIncremental(0)).toBe(false)
		end)
	end)

	describe("indexAtPrefixSum", function()
		it("returns 1 for empty tree", function()
			local t = OrderStatisticTree.new()
			expect(t.indexAtPrefixSum(0)).toBe(1)
			expect(t.indexAtPrefixSum(100)).toBe(1)
		end)

		it("returns 1 for offset <= 0", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 10, 20, 30 })
			expect(t.indexAtPrefixSum(0)).toBe(1)
			expect(t.indexAtPrefixSum(-5)).toBe(1)
		end)

		it("returns the containing index for interior offsets", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 10, 20, 30 }) -- spans: [0,10), [10,30), [30,60)
			expect(t.indexAtPrefixSum(0)).toBe(1)
			expect(t.indexAtPrefixSum(5)).toBe(1)
			expect(t.indexAtPrefixSum(9)).toBe(1)
			expect(t.indexAtPrefixSum(10)).toBe(2) -- boundary: next item starts
			expect(t.indexAtPrefixSum(15)).toBe(2)
			expect(t.indexAtPrefixSum(29)).toBe(2)
			expect(t.indexAtPrefixSum(30)).toBe(3) -- boundary
			expect(t.indexAtPrefixSum(45)).toBe(3)
			expect(t.indexAtPrefixSum(59)).toBe(3)
		end)

		it("returns length+1 for offset >= totalSum", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 10, 20, 30 })
			expect(t.indexAtPrefixSum(60)).toBe(4)
			expect(t.indexAtPrefixSum(1000)).toBe(4)
		end)

		it("is inverse of prefixSum at item starts", function()
			local sizes = { 4, 7, 2, 9, 1, 5, 3, 8 }
			local t = OrderStatisticTree.new()
			t.buildFromArray(sizes)
			for i = 1, #sizes do
				expect(t.indexAtPrefixSum(t.prefixSum(i))).toBe(i)
			end
		end)

		it("handles leading zero-sized items", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 0, 0, 10 })
			-- offset 0 hits the `offset <= 0` guard and returns 1.
			expect(t.indexAtPrefixSum(0)).toBe(1)
			-- For any offset inside item 3's span (0 < offset < 10), we land on 3.
			expect(t.indexAtPrefixSum(0.5)).toBe(3)
			expect(t.indexAtPrefixSum(5)).toBe(3)
		end)
	end)

	describe("entryAtPrefixSum", function()
		it("returns index, start offset, and size in one lookup", function()
			local t = OrderStatisticTree.new()
			t.buildFromArray({ 10, 20, 30 })

			expect({ t.entryAtPrefixSum(0) }).toEqual({ 1, 0, 10 })
			expect({ t.entryAtPrefixSum(10) }).toEqual({ 2, 10, 20 })
			expect({ t.entryAtPrefixSum(45) }).toEqual({ 3, 30, 30 })
			expect({ t.entryAtPrefixSum(60) }).toEqual({ 4, 60, 0 })
		end)

		it("returns effective estimated sizes", function()
			local t = OrderStatisticTree.new(12)
			t.buildFromMeasurements(3, function(index)
				return if index == 2 then 20 else nil
			end)

			expect({ t.entryAtPrefixSum(5) }).toEqual({ 1, 0, 12 })
			expect({ t.entryAtPrefixSum(15) }).toEqual({ 2, 12, 20 })
			expect({ t.entryAtPrefixSum(35) }).toEqual({ 3, 32, 12 })
		end)
	end)

	describe("stress: interleaved inserts, removes, updates", function()
		it("maintains invariants throughout", function()
			local t = OrderStatisticTree.new()

			for i = 1, 20 do
				t.insert(i, i * 10)
			end
			checkInvariants(t)

			for i = 20, 2, -2 do
				t.remove(i)
			end
			expect(t.length()).toBe(10)
			checkInvariants(t)

			for i = 1, t.length() do
				t.update(i, 100)
			end
			expect(t.totalSum()).toBe(1000)
			checkInvariants(t)
		end)
	end)
end)
