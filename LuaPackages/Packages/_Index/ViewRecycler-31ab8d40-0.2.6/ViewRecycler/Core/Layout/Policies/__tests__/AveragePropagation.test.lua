local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local AveragePropagation = require(Src.Core.Layout.Policies.AveragePropagation)

describe("AveragePropagation", function()
	it("does not update estimates before sampleInterval is reached", function()
		local policy = AveragePropagation.new({
			sampleInterval = 5,
			driftThreshold = 1,
			initialAverage = 40,
		})
		for _ = 1, 4 do
			expect(policy.recordMeasurementAndShouldUpdateEstimates(100)).toBe(false)
		end
	end)

	it("updates estimates once sampleInterval is reached AND drift exceeds threshold", function()
		local policy = AveragePropagation.new({
			sampleInterval = 5,
			driftThreshold = 10,
			initialAverage = 40,
		})
		for _ = 1, 4 do
			policy.recordMeasurementAndShouldUpdateEstimates(100)
		end
		expect(policy.recordMeasurementAndShouldUpdateEstimates(100)).toBe(true)
	end)

	it("does not update estimates when sampleInterval is reached but drift is below threshold", function()
		local policy = AveragePropagation.new({
			sampleInterval = 3,
			driftThreshold = 50,
			initialAverage = 40,
		})
		policy.recordMeasurementAndShouldUpdateEstimates(42)
		policy.recordMeasurementAndShouldUpdateEstimates(43)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(44)).toBe(false)
	end)

	it("resets the counter after updating estimates, so subsequent updates require another interval", function()
		local policy = AveragePropagation.new({
			sampleInterval = 3,
			driftThreshold = 5,
			initialAverage = 40,
		})
		policy.recordMeasurementAndShouldUpdateEstimates(60)
		policy.recordMeasurementAndShouldUpdateEstimates(60)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(60)).toBe(true)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(80)).toBe(false)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(80)).toBe(false)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(80)).toBe(true)
	end)

	it("measures drift from the last propagated average, not the initial average", function()
		local policy = AveragePropagation.new({
			sampleInterval = 2,
			driftThreshold = 10,
			initialAverage = 40,
		})
		policy.recordMeasurementAndShouldUpdateEstimates(60)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(60)).toBe(true)
		-- After the update, baseline is 60. A drift of 5 from 60 should not trigger another update.
		policy.recordMeasurementAndShouldUpdateEstimates(65)
		expect(policy.recordMeasurementAndShouldUpdateEstimates(65)).toBe(false)
	end)

	it("uses default sampleInterval and driftThreshold when not provided", function()
		local policy = AveragePropagation.new()
		-- Defaults are 8 and 8. The eighth measurement of 100 (drift 100) updates estimates.
		for i = 1, 7 do
			expect(policy.recordMeasurementAndShouldUpdateEstimates(100)).toBe(false)
		end
		expect(policy.recordMeasurementAndShouldUpdateEstimates(100)).toBe(true)
	end)
end)
