local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local BenchmarkStats = require(script.Parent.BenchmarkStats)

describe("BenchmarkStats", function()
	it("reports per-operation timing for explicit sample iterations", function()
		local now = 0
		local operationCount = 0
		local summary = BenchmarkStats.measure(function()
			operationCount += 1
			now += 0.125
		end, {
			clock = function()
				return now
			end,
			sampleCount = 3,
			warmupCount = 2,
			iterationsPerSample = 4,
		})

		expect(operationCount).toBe(20)
		expect(summary).toEqual({
			sampleCount = 3,
			warmupCount = 2,
			iterationsPerSample = 4,
			medianMs = 125,
			medianCiLowMs = 125,
			medianCiHighMs = 125,
			p95Ms = 125,
			p99Ms = 125,
			minMs = 125,
			maxMs = 125,
			meanMs = 125,
			stddevMs = 0,
			cvPercent = 0,
			outlierCount = 0,
			stopReason = "fixedSampleCount",
			elapsedSeconds = 1.5,
		})
	end)

	it("calibrates iterations toward the target sample duration", function()
		local now = 0
		local operationCount = 0
		local summary = BenchmarkStats.measure(function()
			operationCount += 1
			now += 0.125
		end, {
			clock = function()
				return now
			end,
			sampleCount = 2,
			warmupCount = 0,
			targetSampleMs = 500,
			maxIterationsPerSample = 10,
		})

		expect(operationCount).toBe(9)
		expect(summary.iterationsPerSample).toBe(4)
		expect(summary.medianMs).toBe(125)
	end)

	it("stops adaptive sampling when the median interval converges", function()
		local now = 0
		local sampleCount = 0
		local summary = BenchmarkStats.run(function()
			sampleCount += 1
			now += 0.001
			return 10
		end, {
			clock = function()
				return now
			end,
			warmupCount = 0,
			minSampleCount = 20,
			maxSampleCount = 50,
			convergenceCheckInterval = 10,
			targetRelativeHalfWidth = 0.01,
			bootstrapResamples = 10,
		})

		expect(sampleCount).toBe(20)
		expect(summary.sampleCount).toBe(20)
		expect(summary.stopReason).toBe("converged")
		expect(summary.medianCiLowMs).toBe(10)
		expect(summary.medianCiHighMs).toBe(10)
	end)
end)
