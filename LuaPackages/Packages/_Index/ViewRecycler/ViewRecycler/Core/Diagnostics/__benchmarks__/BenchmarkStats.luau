export type Options = {
	sampleCount: number?,
	minSampleCount: number?,
	maxSampleCount: number?,
	warmupCount: number?,
	iterationsPerSample: number?,
	targetSampleMs: number?,
	maxIterationsPerSample: number?,
	targetRelativeHalfWidth: number?,
	convergenceCheckInterval: number?,
	timeBudgetSeconds: number?,
	bootstrapResamples: number?,
	randomSeed: number?,
	clock: (() -> number)?,
}

export type Summary = {
	sampleCount: number,
	warmupCount: number,
	iterationsPerSample: number,
	medianMs: number,
	medianCiLowMs: number,
	medianCiHighMs: number,
	p95Ms: number,
	p99Ms: number,
	minMs: number,
	maxMs: number,
	meanMs: number,
	stddevMs: number,
	cvPercent: number,
	outlierCount: number,
	stopReason: string,
	elapsedSeconds: number,
}

local DEFAULT_MIN_SAMPLE_COUNT = 30
local DEFAULT_MAX_SAMPLE_COUNT = 200
local DEFAULT_WARMUP_COUNT = 5
local DEFAULT_TARGET_SAMPLE_MS = 10
local DEFAULT_MAX_ITERATIONS_PER_SAMPLE = 100
local DEFAULT_TARGET_RELATIVE_HALF_WIDTH = 0.05
local DEFAULT_CONVERGENCE_CHECK_INTERVAL = 10
local DEFAULT_TIME_BUDGET_SECONDS = 5
local DEFAULT_BOOTSTRAP_RESAMPLES = 500
local DEFAULT_RANDOM_SEED = 20260802
local MIN_CALIBRATION_MS = 0.001
local Z95 = 1.959963984540054

local function positiveInteger(value: number?, fallback: number, name: string): number
	local result = value or fallback
	assert(result >= 1 and result % 1 == 0, `{name} must be a positive integer`)
	return result
end

local function nonNegativeInteger(value: number?, fallback: number, name: string): number
	local result = value or fallback
	assert(result >= 0 and result % 1 == 0, `{name} must be a non-negative integer`)
	return result
end

local function median(sorted: { number }): number
	local count = #sorted
	local middle = math.floor(count / 2)
	if count % 2 == 1 then
		return sorted[middle + 1]
	end
	return (sorted[middle] + sorted[middle + 1]) / 2
end

local function percentile(sorted: { number }, proportion: number): number
	local index = math.clamp(math.ceil(#sorted * proportion), 1, #sorted)
	return sorted[index]
end

local function medianConfidenceInterval(sorted: { number }): (number, number)
	local count = #sorted
	if count < 2 then
		return sorted[1], sorted[1]
	end
	local center = (count + 1) / 2
	local delta = Z95 * math.sqrt(count) / 2
	local lowIndex = math.clamp(math.floor(center - delta), 1, count)
	local highIndex = math.clamp(math.ceil(center + delta), 1, count)
	return sorted[lowIndex], sorted[highIndex]
end

local function bootstrapMedianConfidenceInterval(
	samples: { number },
	resampleCount: number,
	randomSeed: number
): (number, number)
	if #samples < 2 or resampleCount == 0 then
		local value = samples[1] or 0
		return value, value
	end
	local random = Random.new(randomSeed)
	local medians = table.create(resampleCount)
	local buffer = table.create(#samples)
	for resampleIndex = 1, resampleCount do
		for sampleIndex = 1, #samples do
			buffer[sampleIndex] = samples[random:NextInteger(1, #samples)]
		end
		table.sort(buffer)
		medians[resampleIndex] = median(buffer)
	end
	table.sort(medians)
	return percentile(medians, 0.025), percentile(medians, 0.975)
end

local function distribution(samples: { number })
	local sorted = table.clone(samples)
	table.sort(sorted)
	local sum = 0
	for _, value in sorted do
		sum += value
	end
	local mean = sum / #sorted
	local variance = 0
	for _, value in sorted do
		local difference = value - mean
		variance += difference * difference
	end
	local stddev = if #sorted > 1 then math.sqrt(variance / (#sorted - 1)) else 0
	local firstQuartile = percentile(sorted, 0.25)
	local thirdQuartile = percentile(sorted, 0.75)
	local outlierThreshold = thirdQuartile + 1.5 * (thirdQuartile - firstQuartile)
	local outlierCount = 0
	for _, value in sorted do
		if value > outlierThreshold then
			outlierCount += 1
		end
	end
	return sorted, mean, stddev, outlierCount
end

local function run(sample: () -> number, options: Options?): Summary
	local resolved: Options = options or {}
	local fixedSampleCount = resolved.sampleCount
	if fixedSampleCount ~= nil then
		fixedSampleCount = positiveInteger(fixedSampleCount, 1, "sampleCount")
	end
	local minSampleCount = positiveInteger(resolved.minSampleCount, DEFAULT_MIN_SAMPLE_COUNT, "minSampleCount")
	local maxSampleCount = positiveInteger(resolved.maxSampleCount, DEFAULT_MAX_SAMPLE_COUNT, "maxSampleCount")
	local warmupCount = nonNegativeInteger(resolved.warmupCount, DEFAULT_WARMUP_COUNT, "warmupCount")
	local targetRelativeHalfWidth = resolved.targetRelativeHalfWidth or DEFAULT_TARGET_RELATIVE_HALF_WIDTH
	local convergenceCheckInterval = positiveInteger(
		resolved.convergenceCheckInterval,
		DEFAULT_CONVERGENCE_CHECK_INTERVAL,
		"convergenceCheckInterval"
	)
	local timeBudgetSeconds = resolved.timeBudgetSeconds or DEFAULT_TIME_BUDGET_SECONDS
	local bootstrapResamples =
		nonNegativeInteger(resolved.bootstrapResamples, DEFAULT_BOOTSTRAP_RESAMPLES, "bootstrapResamples")
	local randomSeed = resolved.randomSeed or DEFAULT_RANDOM_SEED
	local clock = resolved.clock or os.clock

	assert(minSampleCount <= maxSampleCount, "minSampleCount must not exceed maxSampleCount")
	assert(targetRelativeHalfWidth > 0, "targetRelativeHalfWidth must be positive")
	assert(timeBudgetSeconds > 0, "timeBudgetSeconds must be positive")

	for _ = 1, warmupCount do
		sample()
	end

	local samples = {}
	local started = clock()
	local stopReason = if fixedSampleCount ~= nil then "fixedSampleCount" else "maxSampleCount"
	while #samples < (fixedSampleCount or maxSampleCount) do
		table.insert(samples, sample())
		if fixedSampleCount == nil and #samples >= minSampleCount then
			if #samples % convergenceCheckInterval == 0 then
				local sorted = table.clone(samples)
				table.sort(sorted)
				local currentMedian = median(sorted)
				local low, high = medianConfidenceInterval(sorted)
				local relativeHalfWidth = if currentMedian > 0 then ((high - low) / 2) / currentMedian else math.huge
				if relativeHalfWidth <= targetRelativeHalfWidth then
					stopReason = "converged"
					break
				end
			end
			if clock() - started >= timeBudgetSeconds then
				stopReason = "timeBudget"
				break
			end
		end
	end
	local elapsedSeconds = clock() - started

	local sorted, mean, stddev, outlierCount = distribution(samples)
	local medianCiLowMs, medianCiHighMs = bootstrapMedianConfidenceInterval(samples, bootstrapResamples, randomSeed)

	return {
		sampleCount = #samples,
		warmupCount = warmupCount,
		iterationsPerSample = 1,
		medianMs = median(sorted),
		medianCiLowMs = medianCiLowMs,
		medianCiHighMs = medianCiHighMs,
		p95Ms = percentile(sorted, 0.95),
		p99Ms = percentile(sorted, 0.99),
		minMs = sorted[1],
		maxMs = sorted[#sorted],
		meanMs = mean,
		stddevMs = stddev,
		cvPercent = if mean > 0 then stddev / mean * 100 else 0,
		outlierCount = outlierCount,
		stopReason = stopReason,
		elapsedSeconds = elapsedSeconds,
	}
end

local function measure(operation: () -> (), options: Options?): Summary
	local resolved: Options = options or {}
	local targetSampleMs = resolved.targetSampleMs or DEFAULT_TARGET_SAMPLE_MS
	local maxIterationsPerSample =
		positiveInteger(resolved.maxIterationsPerSample, DEFAULT_MAX_ITERATIONS_PER_SAMPLE, "maxIterationsPerSample")
	local clock = resolved.clock or os.clock
	assert(targetSampleMs > 0, "targetSampleMs must be positive")

	local iterationsPerSample = resolved.iterationsPerSample
	if iterationsPerSample == nil then
		local started = clock()
		operation()
		local calibrationMs = math.max((clock() - started) * 1000, MIN_CALIBRATION_MS)
		iterationsPerSample = math.clamp(math.ceil(targetSampleMs / calibrationMs), 1, maxIterationsPerSample)
	else
		iterationsPerSample = positiveInteger(iterationsPerSample, 1, "iterationsPerSample")
	end

	local summary = run(function()
		local started = clock()
		for _ = 1, iterationsPerSample :: number do
			operation()
		end
		return (clock() - started) * 1000 / (iterationsPerSample :: number)
	end, resolved)
	summary.iterationsPerSample = iterationsPerSample :: number
	return summary
end

return {
	run = run,
	measure = measure,
}
