local Core = table.freeze({
	Initialization = "core.initialization",
	DataMutation = "core.dataMutation",
	LayoutGeometry = "core.layoutGeometry",
	ViewportRange = "core.viewportRange",
	OverscanHysteresis = "core.overscanHysteresis",
	Prefetch = "core.prefetch",
	ListPresentation = "core.itemViewPresentation",
	RecyclingScope = "core.recyclingScope",
	Measurement = "core.measurement",
	DataAnchoring = "core.dataAnchoring",
	MeasurementAnchoring = "core.measurementAnchoring",
	ProgrammaticScroll = "core.programmaticScroll",
	ScrollPolicy = "core.scrollPolicy",
	PinnedSticky = "core.pinnedSticky",
	Diagnostics = "core.diagnostics",
	Teardown = "core.teardown",
})

local Roblox = table.freeze({
	GeometryPlacement = "roblox.geometryPlacement",
	ReparentSelection = "roblox.reparentSelection",
	LeaseLifecycle = "roblox.leaseLifecycle",
	ScrollViewportSync = "roblox.scrollViewportSync",
	CanvasPublication = "roblox.canvasPublication",
	MeasurementScheduling = "roblox.measurementScheduling",
	ViewportActivation = "roblox.viewportActivation",
	Teardown = "roblox.teardown",
})

local React = table.freeze({
	DataReconciliation = "react.dataReconciliation",
	PropSynchronization = "react.propSynchronization",
	MountScroll = "react.mountScroll",
	AssignmentBinding = "react.assignmentBinding",
	Presentation = "react.presentation",
	StatefulTransfer = "react.statefulTransfer",
	AutomaticSizeTransfer = "react.automaticSizeTransfer",
	MeasurementWiring = "react.measurementWiring",
	SignalsPublication = "react.signalsPublication",
	ViewportActiveGating = "react.viewportActiveGating",
	ScopeOwnership = "react.scopeOwnership",
	Composition = "react.composition",
	Teardown = "react.teardown",
})

local function values(group): { string }
	local result = {}
	for _, responsibility in group do
		table.insert(result, responsibility)
	end
	table.sort(result)
	return result
end

local byOwner = table.freeze({
	core = table.freeze(values(Core)),
	roblox = table.freeze(values(Roblox)),
	react = table.freeze(values(React)),
})

local known = {}
for _, responsibilities in byOwner do
	for _, responsibility in responsibilities do
		known[responsibility] = true
	end
end

local function isKnown(responsibility: string): boolean
	return known[responsibility] == true
end

local function getMissing(records: { any }, owner: "core" | "roblox" | "react"): { string }
	local covered = {}
	for _, record in records do
		if record.owner == owner then
			covered[record.responsibility] = true
		end
	end

	local missing = {}
	for _, responsibility in byOwner[owner] do
		if not covered[responsibility] then
			table.insert(missing, responsibility)
		end
	end
	return missing
end

return table.freeze({
	Core = Core,
	Roblox = Roblox,
	React = React,
	byOwner = byOwner,
	isKnown = isKnown,
	getMissing = getMissing,
})
