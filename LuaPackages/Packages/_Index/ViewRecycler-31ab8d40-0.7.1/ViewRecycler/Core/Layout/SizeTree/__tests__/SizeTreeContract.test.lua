local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local CollapsedEstimatedTree = require(Src.Core.Layout.SizeTree.CollapsedEstimatedTree)
local OrderStatisticTree = require(Src.Core.Layout.SizeTree.OrderStatisticTree)

local implementations = {
	{ name = "OrderStatisticTree", new = OrderStatisticTree.new },
	{ name = "CollapsedEstimatedTree", new = CollapsedEstimatedTree.new },
}

local function expectGeometry(tree, expected)
	expect(tree.length()).toBe(#expected)
	local runningSum = 0
	for index, size in expected do
		expect(tree.prefixSum(index)).toBe(runningSum)
		expect(tree.getSize(index)).toBe(size)
		if size > 0 then
			expect(tree.indexAtPrefixSum(runningSum)).toBe(index)
			expect({ tree.entryAtPrefixSum(runningSum) }).toEqual({ index, runningSum, size })
		end
		runningSum += size
	end
	expect(tree.totalSum()).toBe(runningSum)
	expect(tree.indexAtPrefixSum(runningSum)).toBe(#expected + 1)
end

for _, implementation in implementations do
	describe(`ISizeTree contract: {implementation.name}`, function()
		it("supports sparse measurements and effective estimates", function()
			local tree = implementation.new(10)
			tree.buildFromMeasurements(5, function(index)
				return if index == 2 then 40 elseif index == 5 then 70 else nil
			end)

			expectGeometry(tree, { 10, 40, 10, 10, 70 })
			expect(tree.getMeasuredItemCount()).toBe(2)
			expect(tree.setEstimatedItemLength(20)).toBe(true)
			expectGeometry(tree, { 20, 40, 20, 20, 70 })
		end)

		it("supports measured and unmeasured structural edits", function()
			local tree = implementation.new(10)
			tree.buildFromMeasurements(4, function(index)
				return if index == 2 then 30 else nil
			end)

			tree.insert(1, nil)
			tree.insert(4, 50)
			tree.remove(3)
			tree.update(2, 25)
			tree.update(4, nil)

			expectGeometry(tree, { 10, 25, 50, 10, 10 })
			expect(tree.getMeasuredItemCount()).toBe(2)
		end)

		it("materializes a contiguous range into a reused output", function()
			local tree = implementation.new(10)
			tree.buildFromMeasurements(6, function(index)
				return if index == 3 then 25 else nil
			end)
			local output = {
				{ startOffset = -1, length = -1 },
				{ startOffset = -1, length = -1 },
				{ startOffset = -1, length = -1 },
				{ startOffset = -1, length = -1 },
				{ startOffset = -1, length = -1 },
			}

			tree.fillRange(2, 5, output)

			expect(output).toEqual({
				{ startOffset = 10, length = 10 },
				{ startOffset = 20, length = 25 },
				{ startOffset = 45, length = 10 },
				{ startOffset = 55, length = 10 },
			})
		end)

		it("returns stable empty and out-of-bounds values", function()
			local tree = implementation.new(10)
			expect(tree.length()).toBe(0)
			expect(tree.prefixSum(1)).toBe(0)
			expect(tree.getSize(0)).toBe(0)
			expect(tree.getSize(1)).toBe(0)
			expect(tree.indexAtPrefixSum(100)).toBe(1)
			expect({ tree.entryAtPrefixSum(100) }).toEqual({ 1, 0, 0 })
		end)
	end)
end
