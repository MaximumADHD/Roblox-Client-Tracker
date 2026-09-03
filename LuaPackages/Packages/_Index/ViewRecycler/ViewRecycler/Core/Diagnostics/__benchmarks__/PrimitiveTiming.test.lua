local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local BenchmarkContract = require(script.Parent.BenchmarkContract)
local BenchmarkStats = require(script.Parent.BenchmarkStats)
local PrimitiveTiming = require(script.Parent.PrimitiveTiming)
local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)

describe("PrimitiveTiming", function()
	it("emits observable primitive timing evidence with contract metadata", function()
		local records = PrimitiveTiming.run(
			{
				CollapsedEstimatedTree = require(Src.Core.Layout.SizeTree.CollapsedEstimatedTree),
				Layout = require(Src.Core.Layout),
				OrderStatisticTree = require(Src.Core.Layout.SizeTree.OrderStatisticTree),
			},
			BenchmarkStats,
			BenchmarkContract,
			{
				itemCounts = { 50 },
				queryCount = 5,
				measurementBatchSize = 3,
				sampleCount = 1,
				warmupCount = 0,
				iterationsPerSample = 1,
				bootstrapResamples = 0,
			}
		)

		expect(#records).toBe(4)
		expect(records[1].workload).toBe("size-tree-offset-queries")
		expect(records[1].owner).toBe("core")
		expect(records[1].responsibility).toBe(ResponsibilityCatalog.Core.ViewportRange)
		expect(records[1].timingClass).toBe("isolated")
		expect(records[1].timing.operationsPerSample).toBe(10)
		expect(records[1].evidence.treeItems).toBe(50)
		expect(records[2].workload).toBe("collapsed-estimate-offset-queries")
		expect(records[2].responsibility).toBe(ResponsibilityCatalog.Core.ViewportRange)
		expect(records[2].timingClass).toBe("isolated")
		expect(records[2].timing.operationsPerSample).toBe(10)
		expect(records[2].evidence.treeItems).toBe(50)
		expect(records[2].evidence.treeNodes).toBe(1)
		expect(records[3].workload).toBe("size-tree-measured-updates")
		expect(records[3].responsibility).toBe(ResponsibilityCatalog.Core.Measurement)
		expect(records[3].timingClass).toBe("isolated")
		expect(records[3].timing.operationsPerSample).toBe(3)
		expect(records[3].evidence.treeItems).toBe(50)
		expect(records[4].workload).toBe("measured-layout-batch")
		expect(records[4].owner).toBe("core")
		expect(records[4].responsibility).toBe(ResponsibilityCatalog.Core.Measurement)
		expect(records[4].timingClass).toBe("integrated")
		expect(records[4].timing.operationsPerSample).toBe(3)
		expect(records[4].evidence.measurementsPerBatch).toBe(3)
		expect(records[4].arms.viewRecycler.sampleCount).toBe(1)
	end)
end)
