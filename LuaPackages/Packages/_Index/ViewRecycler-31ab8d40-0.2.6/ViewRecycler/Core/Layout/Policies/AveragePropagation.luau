-- Average propagation policy for measured layouts.
--
-- The layout stores measured lengths per item. Unmeasured items use the
-- current average as a placeholder. When new measurements arrive the
-- average shifts; applying every sample immediately would be visually
-- jarring (one outlier near the start can reshape the entire canvas,
-- triggering viewport range churn and slot pool growth).
--
-- This module decides when the layout should adopt a new global estimate.
-- Updating that scalar is O(1).
--
-- Policy: every SAMPLE_INTERVAL measurements, if the current average
-- has drifted by more than DRIFT_THRESHOLD pixels since the last
-- estimate update, update the estimates again.
--
-- Both numbers are tunable independently. If you want more responsive
-- canvas-size estimation, lower SAMPLE_INTERVAL. If you want fewer
-- visual lurches, raise DRIFT_THRESHOLD.

local DEFAULT_SAMPLE_INTERVAL = 8
local DEFAULT_DRIFT_THRESHOLD = 8

export type Policy = {
	-- Record a measurement and decide whether unmeasured estimates
	-- should be updated from the current average.
	recordMeasurementAndShouldUpdateEstimates: (currentAverage: number) -> boolean,
}

local AveragePropagation = {}

export type Options = {
	sampleInterval: number?,
	driftThreshold: number?,
	initialAverage: number?,
}

function AveragePropagation.new(options: Options?): Policy
	local opts: Options = options or {}
	local sampleInterval = opts.sampleInterval or DEFAULT_SAMPLE_INTERVAL
	local driftThreshold = opts.driftThreshold or DEFAULT_DRIFT_THRESHOLD

	local samplesSinceLast = 0
	local lastPropagatedAverage = opts.initialAverage or 0

	local function recordMeasurementAndShouldUpdateEstimates(currentAverage: number): boolean
		samplesSinceLast += 1
		if samplesSinceLast < sampleInterval then
			return false
		end
		if math.abs(currentAverage - lastPropagatedAverage) < driftThreshold then
			return false
		end
		lastPropagatedAverage = currentAverage
		samplesSinceLast = 0
		return true
	end

	return {
		recordMeasurementAndShouldUpdateEstimates = recordMeasurementAndShouldUpdateEstimates,
	}
end

return AveragePropagation
