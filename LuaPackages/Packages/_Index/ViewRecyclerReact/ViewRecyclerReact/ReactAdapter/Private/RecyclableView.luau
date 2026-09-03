local Root = script:FindFirstAncestor("ViewRecyclerReact")

local Core = require(Root.Parent.ViewRecycler)
local HostPresentationPhase = require(script.Parent.HostPresentationPhase)
local PlacementKind = require(script.Parent.PlacementKind)
local React = require(Root.Parent.React)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)

export type Assignment<T> = {
	key: string,
	index: number?,
	value: T,
	generation: number,
}
export type PlacementKind = PlacementKind.PlacementKind
export type StructuralPlacement = {
	axis: Core.Axis,
	selfSizing: boolean,
}
export type HostState<T> = {
	assignment: Assignment<T>?,
	host: GuiObject?,
	phase: HostPresentationPhase.HostPresentationPhase,
	visible: boolean,
}
export type HostCallbacks = {
	clearSelection: () -> (),
	detachFromPlaceholder: (placeholder: Frame) -> (),
}
export type PlacementPort = {
	apply: (HostState<any>?) -> (),
}
export type RecyclableView<T, ViewType> = {
	id: number,
	viewType: ViewType,
	itemViewType: ViewType,
	signal: Signals.getter<Assignment<T>?>,
	itemSignal: Signals.getter<any>,
	itemKeySignal: Signals.getter<string>,
	set: (Assignment<T>?) -> (),
	contentRevision: Signals.getter<number>,
	commitContent: (assignmentGeneration: number, contentRevision: number) -> boolean,
	bindPlacement: (kind: PlacementKind?, port: PlacementPort?) -> (),
	readiness: RecyclableViewRegistry.Readiness,
	hideWhilePending: boolean,
	pending: React.Binding<boolean>,
	structuralPlacement: Signals.getter<StructuralPlacement>,
	compositionPlacement: Signals.getter<any?>,
	setStructuralPlacement: (axis: Core.Axis, selfSizing: boolean) -> (),
	setCompositionPlacement: (any?) -> (),
	portalFrame: Signals.getter<Frame?>,
	bindHost: (callbacks: HostCallbacks) -> () -> (),
	clearSelection: () -> (),
	detachFromPlaceholder: (placeholder: Frame) -> (),
	destroy: () -> (),
}

local function RecyclableView<T, ViewType>(
	id: number,
	viewType: ViewType,
	initialAssignment: Assignment<T>?,
	readinessOverride: RecyclableViewRegistry.Readiness?,
	hideWhilePendingOverride: boolean?
): RecyclableView<T, ViewType>
	local metadata = RecyclableViewRegistry.getMetadata(viewType :: any)
	assert(metadata ~= nil, "RecyclableView: unknown Recyclable view type")
	local readiness = readinessOverride or metadata.readiness
	local hideWhilePending = if hideWhilePendingOverride == nil
		then metadata.hideWhilePending
		else hideWhilePendingOverride
	local assignmentSignal, setAssignmentSignal = Signals.createSignal(initialAssignment)
	local retainedAssignment, setRetainedAssignment = Signals.createSignal(initialAssignment)
	local pending, setPending = React.createBinding(false)
	local contentRevision, setContentRevision = Signals.createSignal(if initialAssignment == nil then 0 else 1)
	local structuralPlacement, setStructuralPlacementSignal = Signals.createSignal({
		axis = Core.Axis.Y,
		selfSizing = false,
	})
	local compositionPlacement, setCompositionPlacement = Signals.createSignal(nil :: any?)
	local portalFrame = Instance.new("Frame")
	portalFrame.Name = `ListItemViewFrame{id}`
	portalFrame.BackgroundTransparency = 1
	portalFrame.BorderSizePixel = 0
	portalFrame.Position = UDim2.new()
	portalFrame.Size = UDim2.new()
	local hostCallbacks: HostCallbacks? = nil
	local placementPort: PlacementPort? = nil
	local placementKind: PlacementKind? = nil
	local retainedPlacementKind: PlacementKind? = nil
	local detachedPlacementBeforePublication = false
	local hostState: HostState<T> = {} :: any
	local currentAssignment = initialAssignment
	local currentStructuralPlacement = structuralPlacement(false)
	local currentRevision = if initialAssignment == nil then 0 else 1
	local currentContentReady = true
	local destroyed = false

	local function bindHost(callbacks: HostCallbacks): () -> ()
		assert(not destroyed, "RecyclableView: cannot bind a destroyed host")
		assert(hostCallbacks == nil, "RecyclableView: host is already bound")
		hostCallbacks = callbacks
		local bound = true
		return function()
			if bound and hostCallbacks == callbacks then
				bound = false
				hostCallbacks = nil
			end
		end
	end

	local function itemSignal(scope: Signals.scope): any
		local assignment = retainedAssignment(scope)
		assert(assignment ~= nil, "RecyclableView: item read before first Assignment")
		return if retainedPlacementKind == PlacementKind.Composition
			then ((assignment :: any).value :: any).props
			else assignment.value
	end

	local function itemKeySignal(scope: Signals.scope): string
		local assignment = retainedAssignment(scope)
		assert(assignment ~= nil, "RecyclableView: item key read before first Assignment")
		return assignment.key
	end

	local function writeHostState(state: HostState<T>): HostState<T>
		local assignment = currentAssignment
		local phase: HostPresentationPhase.HostPresentationPhase = HostPresentationPhase.Hidden
		if assignment ~= nil then
			if readiness == RecyclableViewReadiness.ReadyOnAssignment or currentContentReady then
				phase = HostPresentationPhase.Presented
			elseif not hideWhilePending then
				phase = HostPresentationPhase.Pending
			end
		end
		state.assignment = assignment
		state.host = if destroyed then nil else portalFrame
		state.phase = phase
		state.visible = assignment ~= nil and phase ~= HostPresentationPhase.Hidden
		return state
	end

	local function bindPlacement(kind: PlacementKind?, port: PlacementPort?)
		assert(not destroyed, "RecyclableView: cannot bind placement after destroy")
		assert((kind == nil) == (port == nil), "RecyclableView: placement kind and port must be bound together")
		if placementPort == port then
			assert(placementKind == kind, "RecyclableView: one placement port cannot change kind")
			return
		end
		if placementPort ~= nil then
			placementPort.apply(nil)
			detachedPlacementBeforePublication = currentAssignment ~= nil
		end
		placementPort = port
		placementKind = kind
	end

	local function preparePlacement(assignment: Assignment<T>?): Assignment<T>?
		assert(not destroyed, "RecyclableView: cannot publish after destroy")
		local previous = currentAssignment
		if (assignment == nil and previous ~= nil) or (previous ~= nil and previous.key ~= assignment.key) then
			local callbacks = hostCallbacks
			if callbacks ~= nil and placementPort == nil and not detachedPlacementBeforePublication then
				callbacks.clearSelection()
			end
		end
		detachedPlacementBeforePublication = false
		return previous
	end

	local function publishHostState()
		local port = placementPort
		if port == nil then
			return
		end
		local state = writeHostState(hostState)
		port.apply(state)
	end

	local function setImmediate(assignment: Assignment<T>?)
		preparePlacement(assignment)
		if assignment == nil then
			currentAssignment = nil
			setAssignmentSignal(nil)
			return
		end
		currentAssignment = assignment
		currentContentReady = true
		retainedPlacementKind = placementKind
		setRetainedAssignment(assignment)
		setAssignmentSignal(assignment)
		publishHostState()
	end

	local function setCommitGated(assignment: Assignment<T>?)
		local previous = preparePlacement(assignment)
		local startsCommit = assignment ~= nil
			and (previous == nil or previous.generation ~= assignment.generation or not currentContentReady)
		if startsCommit then
			currentRevision += 1
		end
		currentAssignment = assignment
		if assignment == nil or startsCommit then
			currentContentReady = false
		end
		SignalsExperimental.batch(function()
			if assignment ~= nil then
				retainedPlacementKind = placementKind
				setRetainedAssignment(assignment)
			end
			if startsCommit then
				setContentRevision(currentRevision)
			end
			setAssignmentSignal(assignment)
			if assignment == nil or startsCommit then
				setPending(assignment ~= nil)
			end
		end)
		if assignment ~= nil then
			publishHostState()
		end
	end

	local set = if readiness == RecyclableViewReadiness.ReadyOnAssignment then setImmediate else setCommitGated
	local function commitContent(generation: number, revision: number): boolean
		local assignment = currentAssignment
		if
			not destroyed
			and readiness == RecyclableViewReadiness.ReadyOnCommit
			and assignment ~= nil
			and assignment.generation == generation
			and revision == currentRevision
		then
			currentContentReady = true
			setPending(false)
			publishHostState()
			return true
		end
		return false
	end

	return {
		id = id,
		viewType = viewType,
		itemViewType = viewType,
		signal = assignmentSignal,
		itemSignal = itemSignal,
		itemKeySignal = itemKeySignal,
		set = set,
		pending = pending,
		contentRevision = contentRevision,
		commitContent = commitContent,
		bindPlacement = bindPlacement,
		readiness = readiness,
		hideWhilePending = hideWhilePending,
		structuralPlacement = structuralPlacement,
		compositionPlacement = compositionPlacement,
		setStructuralPlacement = function(axis, selfSizing)
			if currentStructuralPlacement.axis == axis and currentStructuralPlacement.selfSizing == selfSizing then
				return
			end
			currentStructuralPlacement = {
				axis = axis,
				selfSizing = selfSizing,
			}
			setStructuralPlacementSignal(currentStructuralPlacement)
		end,
		setCompositionPlacement = setCompositionPlacement,
		portalFrame = function(_scope)
			return if destroyed then nil else portalFrame
		end,
		bindHost = bindHost,
		clearSelection = function()
			local callbacks = hostCallbacks
			if callbacks ~= nil then
				callbacks.clearSelection()
			end
		end,
		detachFromPlaceholder = function(placeholder)
			local callbacks = hostCallbacks
			if callbacks ~= nil then
				callbacks.detachFromPlaceholder(placeholder)
			end
		end,
		destroy = function()
			if destroyed then
				return
			end
			if placementPort ~= nil then
				placementPort.apply(nil)
				placementPort = nil
				placementKind = nil
			end
			destroyed = true
			hostCallbacks = nil
			setPending(false)
			portalFrame.Parent = nil
			portalFrame:Destroy()
		end,
	}
end

return RecyclableView
