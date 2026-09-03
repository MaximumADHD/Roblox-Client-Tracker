local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local CollapsedEstimatedTree = require(Src.Core.Layout.SizeTree.CollapsedEstimatedTree)

local function expectSizes(tree, expected)
	expect(tree.toArray()).toEqual(expected)
	local total = 0
	for index, size in expected do
		expect(tree.prefixSum(index)).toBe(total)
		expect(tree.getSize(index)).toBe(size)
		total += size
	end
	expect(tree.totalSum()).toBe(total)
end

describe("CollapsedEstimatedTree", function()
	it("stores a wholly unmeasured list in one node", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(100000, function()
			return nil
		end)

		expect(tree.length()).toBe(100000)
		expect(tree.totalSum()).toBe(1000000)
		expect(tree.getMeasuredItemCount()).toBe(0)
		expect(tree.getNodeCount()).toBe(1)
		expect(tree.prefixSum(75001)).toBe(750000)
		expect(tree.indexAtPrefixSum(750005)).toBe(75001)
	end)

	it("splits around a measurement and merges when it is cleared", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(5, function()
			return nil
		end)

		tree.update(3, 40)
		expectSizes(tree, { 10, 10, 40, 10, 10 })
		expect(tree.getNodeCount()).toBe(3)

		tree.update(3, nil)
		expectSizes(tree, { 10, 10, 10, 10, 10 })
		expect(tree.getNodeCount()).toBe(1)
	end)

	it("keeps scattered measurements separate and collapses intervening runs", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(9, function(index)
			return if index == 2 then 20 elseif index == 5 then 50 elseif index == 8 then 80 else nil
		end)

		expectSizes(tree, { 10, 20, 10, 10, 50, 10, 10, 80, 10 })
		expect(tree.getMeasuredItemCount()).toBe(3)
		expect(tree.getNodeCount()).toBe(7)
	end)

	it("inserts and removes inside unmeasured runs", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(4, function()
			return nil
		end)

		tree.insert(1, nil)
		tree.insert(3, nil)
		tree.insert(tree.length() + 1, nil)
		expect(tree.getNodeCount()).toBe(1)
		expectSizes(tree, { 10, 10, 10, 10, 10, 10, 10 })

		tree.update(4, 40)
		tree.remove(1)
		tree.remove(3)
		tree.remove(tree.length())
		expectSizes(tree, { 10, 10, 10, 10 })
		expect(tree.getNodeCount()).toBe(1)
	end)

	it("inserts a measured item by splitting an unmeasured run", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(4, function()
			return nil
		end)

		tree.insert(3, 30)

		expectSizes(tree, { 10, 10, 30, 10, 10 })
		expect(tree.getNodeCount()).toBe(3)
	end)

	it("fills a range across run and measured-node boundaries", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(8, function(index)
			return if index == 4 then 25 else nil
		end)
		local output = {}

		tree.fillRange(2, 7, output)

		expect(output).toEqual({
			{ startOffset = 10, length = 10 },
			{ startOffset = 20, length = 10 },
			{ startOffset = 30, length = 25 },
			{ startOffset = 55, length = 10 },
			{ startOffset = 65, length = 10 },
			{ startOffset = 75, length = 10 },
		})
	end)

	it("uses physical node count for its incremental threshold", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(100000, function()
			return nil
		end)

		expect(tree.prefersIncremental(1)).toBe(true)
		expect(tree.prefersIncremental(50000)).toBe(true)
		expect(tree.prefersIncremental(100000)).toBe(false)
	end)

	it("preserves geometry through interleaved split and merge operations", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(20, function()
			return nil
		end)
		local expected = table.create(20, 10)

		for index = 2, 18, 4 do
			local size = index * 3
			tree.update(index, size)
			expected[index] = size
		end
		tree.insert(7, nil)
		table.insert(expected, 7, 10)
		tree.insert(15, 45)
		table.insert(expected, 15, 45)
		tree.remove(3)
		table.remove(expected, 3)
		tree.update(5, nil)
		expected[5] = 10

		expectSizes(tree, expected)
	end)

	it("grows and shrinks an unmeasured run without allocating extra nodes", function()
		local tree = CollapsedEstimatedTree.new(10)
		for _ = 1, 50 do
			tree.insert(1, nil)
		end
		expect(tree.getNodeCount()).toBe(1)
		expect(tree.length()).toBe(50)

		tree.update(25, 40)
		expect(tree.getNodeCount()).toBe(3)

		tree.insert(1, nil)
		tree.insert(27, nil)
		tree.insert(tree.length() + 1, nil)
		expect(tree.getNodeCount()).toBe(3)
		expect(tree.length()).toBe(53)

		tree.remove(1)
		tree.remove(tree.length())
		tree.remove(26)
		expect(tree.getNodeCount()).toBe(3)

		tree.update(25, nil)
		expect(tree.getNodeCount()).toBe(1)
		expect(tree.length()).toBe(50)
	end)

	it("keeps a new unmeasured gap between measured items as one run", function()
		local tree = CollapsedEstimatedTree.new(10)
		tree.buildFromMeasurements(2, function(index)
			return 20 * index
		end)

		tree.insert(2, nil)
		tree.insert(2, nil)
		expect(tree.getNodeCount()).toBe(3)
		expectSizes(tree, { 20, 10, 10, 40 })
	end)
end)
