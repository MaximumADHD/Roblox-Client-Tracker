export type Layer = "primitive" | "subsystem" | "core" | "robloxHost" | "reactHost"
export type Owner = "core" | "roblox" | "react"
export type TimingClass = "isolated" | "integrated" | "phased" | "hostBoundary"
export type ScaleValue = string | number | boolean

local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)

local VALID_OWNERS = {
	core = true,
	roblox = true,
	react = true,
}

local VALID_TIMING_CLASSES = {
	isolated = true,
	integrated = true,
	phased = true,
	hostBoundary = true,
}

export type Timing = {
	unit: "ms",
	basis: string,
	operationsPerSample: number,
	includesSchedulerWaits: boolean,
}

export type Options = {
	suite: string,
	layer: Layer,
	owner: Owner,
	responsibility: string,
	timingClass: TimingClass,
	workload: string,
	description: string?,
	scale: { [string]: ScaleValue },
	timing: Timing,
	arms: { [string]: { [string]: any } },
	evidence: { [string]: any },
}

export type Record = Options & {
	schemaVersion: number,
}

local function create(options: Options): Record
	assert(options.suite ~= "", "benchmark suite must not be empty")
	assert(options.workload ~= "", "benchmark workload must not be empty")
	assert(VALID_OWNERS[options.owner] == true, "benchmark owner must be explicit")
	assert(ResponsibilityCatalog.isKnown(options.responsibility), "benchmark responsibility must be cataloged")
	assert(
		string.sub(options.responsibility, 1, #options.owner + 1) == options.owner .. ".",
		"benchmark owner must match its responsibility"
	)
	assert(VALID_TIMING_CLASSES[options.timingClass] == true, "benchmark timing class must be explicit")
	assert(options.timing.operationsPerSample >= 1, "operationsPerSample must be positive")
	assert(
		type(options.timing.includesSchedulerWaits) == "boolean",
		"benchmark scheduler-wait ownership must be explicit"
	)
	assert(next(options.arms) ~= nil, "benchmark record must contain at least one arm")
	for armName, summary in options.arms do
		assert(type(summary.medianMs) == "number", `benchmark arm {armName} must contain a median`)
		assert(type(summary.p95Ms) == "number", `benchmark arm {armName} must contain a p95`)
	end
	assert(next(options.evidence) ~= nil, "benchmark record must contain deterministic evidence")
	return {
		schemaVersion = 2,
		suite = options.suite,
		layer = options.layer,
		owner = options.owner,
		responsibility = options.responsibility,
		timingClass = options.timingClass,
		workload = options.workload,
		description = options.description,
		scale = options.scale,
		timing = options.timing,
		arms = options.arms,
		evidence = options.evidence,
	}
end

return {
	create = create,
}
