local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local BenchmarkContract = require(script.Parent.BenchmarkContract)
local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)

describe("BenchmarkContract", function()
	it("labels the measured layer and timing basis explicitly", function()
		local record = BenchmarkContract.create({
			suite = "view-recycler-core",
			layer = "subsystem",
			owner = "core",
			responsibility = ResponsibilityCatalog.Core.Measurement,
			timingClass = "isolated",
			workload = "measurement-batch",
			description = "Applies one batch of item sizes.",
			scale = {
				items = 1000,
				measurements = 20,
			},
			timing = {
				unit = "ms",
				basis = "measurementBatch",
				operationsPerSample = 20,
				includesSchedulerWaits = false,
			},
			arms = {
				viewRecycler = {
					medianMs = 0.1,
					p95Ms = 0.2,
				},
			},
			evidence = {
				acceptedMeasurements = 20,
			},
		})

		expect(record.schemaVersion).toBe(2)
		expect(record.layer).toBe("subsystem")
		expect(record.owner).toBe("core")
		expect(record.responsibility).toBe("core.measurement")
		expect(record.timingClass).toBe("isolated")
		expect(record.timing).toEqual({
			unit = "ms",
			basis = "measurementBatch",
			operationsPerSample = 20,
			includesSchedulerWaits = false,
		})
		expect(record.evidence).toEqual({
			acceptedMeasurements = 20,
		})
	end)
end)
