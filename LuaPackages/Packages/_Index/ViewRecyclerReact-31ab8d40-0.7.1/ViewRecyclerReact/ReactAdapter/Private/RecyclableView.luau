local Root = script:FindFirstAncestor("ViewRecyclerReact")

local Core = require(Root.Parent.ViewRecycler)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)
local HostPresentationPhase = Roblox.HostPresentationPhase
local PlacementKind = require(script.Parent.PlacementKind)
local React = require(Root.Parent.React)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local ReparentableHost = Roblox.ReparentableHost
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local SignalsScheduler = require(Root.Parent.SignalsScheduler)

export type Assignment<T> = {
	key: string,
	value: T,
}
export type HostCallbacks = {
	clearSelection: () -> (),
	detachFromPlaceholder: (placeholder: Frame) -> (),
}
export type ListSink<T> = {
	apply: (Roblox.HostPlacementState<T>?) -> (),
}
export type ListDestination<T> = {
	kind: typeof(PlacementKind.List),
	state: Core.ViewState<T>,
	sink: ListSink<T>,
	compositionPlacement: any?,
}
export type CompositionDestination = {
	kind: typeof(PlacementKind.Composition),
	placementId: number,
	placeholder: Frame,
	automaticSize: Enum.AutomaticSize,
	compositionPlacement: any,
}
export type CompleteState<T> = {
	assignment: Assignment<T>,
	index: number?,
	destination: ListDestination<T> | CompositionDestination,
}
export type RecyclableView<T, ViewType> = {
	id: number,
	viewType: ViewType,
	itemViewType: ViewType,
	signal: Signals.getter<Assignment<T>?>,
	indexSignal: Signals.getter<number?>,
	itemSignal: Signals.getter<any>,
	itemKeySignal: Signals.getter<string>,
	hasItem: Signals.getter<boolean>,
	transition: (CompleteState<T>?) -> (),
	contentRevision: Signals.getter<number>,
	commitContent: (contentRevision: number) -> boolean,
	-- Called by the host once its item content has mounted, and with false
	-- when that content unmounts. Until then the view is pending.
	setContentMounted: (mounted: boolean) -> (),
	readiness: RecyclableViewRegistry.Readiness,
	hideWhilePending: boolean,
	pending: React.Binding<boolean>,
	compositionPlacement: Signals.getter<any?>,
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
	local indexSignal, setIndexSignal = Signals.createSignal(nil :: number?)
	local retainedAssignment, setRetainedAssignment = Signals.createSignal(initialAssignment)
	-- Retained content never returns to nil, so hasItem is set at most once.
	local hasItem, setHasItem = Signals.createSignal(initialAssignment ~= nil)
	local compositionPlacement, setCompositionPlacement = Signals.createSignal(nil :: any?)
	local pending, setPending = React.createBinding(false)
	local currentRevision = if initialAssignment == nil then 0 else 1
	local contentRevision: Signals.getter<number>
	local setContentRevision: (number) -> ()
	if readiness == RecyclableViewReadiness.ReadyOnCommit then
		contentRevision, setContentRevision = Signals.createSignal(currentRevision)
	else
		contentRevision = function(_scope)
			return currentRevision
		end
		setContentRevision = function(_revision) end
	end

	local portalFrame = Instance.new("Frame")
	portalFrame.Name = `ListItemViewFrame{id}`
	portalFrame.BackgroundTransparency = 1
	portalFrame.BorderSizePixel = 0
	portalFrame.Position = UDim2.new()
	portalFrame.Size = UDim2.new()

	local hostCallbacks: HostCallbacks? = nil
	local currentState: CompleteState<T>? = nil
	local retainedKind: PlacementKind.PlacementKind? = nil
	local currentContentReady = true
	local contentMounted = false
	local publishedState: CompleteState<T>? = nil
	local publishedPhase: Roblox.HostPresentationPhase? = nil
	local destroyed = false
	local publicationScheduled = false
	local applyCurrent: () -> ()

	local function resetCompositionHost()
		ReparentableHost.detach(portalFrame)
		portalFrame.AnchorPoint = Vector2.zero
		portalFrame.Position = UDim2.new()
		portalFrame.Size = UDim2.new()
		portalFrame.AutomaticSize = Enum.AutomaticSize.None
	end

	local function detachState(state: CompleteState<T>?)
		if state == nil then
			return
		end
		local destination = state.destination
		if destination.kind == PlacementKind.List then
			(destination :: ListDestination<T>).sink.apply(nil)
		else
			resetCompositionHost()
		end
	end

	local function resolvePhase(): Roblox.HostPresentationPhase
		if currentState == nil then
			return HostPresentationPhase.Hidden
		end
		if not contentMounted then
			return HostPresentationPhase.Hidden
		end
		if readiness == RecyclableViewReadiness.ReadyOnAssignment or currentContentReady then
			return HostPresentationPhase.Presented
		end
		return if hideWhilePending then HostPresentationPhase.Hidden else HostPresentationPhase.Pending
	end

	local function publish(state: CompleteState<T>, phase: Roblox.HostPresentationPhase)
		local destination = state.destination
		if destination.kind == PlacementKind.List then
			local list = destination :: ListDestination<T>
			list.sink.apply({
				host = portalFrame,
				phase = phase,
				state = list.state,
			})
		else
			local composition = destination :: CompositionDestination
			if
				portalFrame.Parent ~= composition.placeholder
				or portalFrame.AutomaticSize ~= composition.automaticSize
			then
				ReparentableHost.place(portalFrame, composition)
			end
			portalFrame.Visible = phase ~= HostPresentationPhase.Hidden
		end
		publishedState = state
		publishedPhase = phase
	end

	applyCurrent = function()
		publicationScheduled = false
		local state = currentState
		if state == nil or destroyed then
			return
		end
		local phase = resolvePhase()
		if publishedState == state and publishedPhase == phase then
			return
		end
		publish(state, phase)
	end

	local function requestPublication()
		if not publicationScheduled then
			publicationScheduled = true
			SignalsScheduler.schedule(applyCurrent)
		end
	end

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
		return if retainedKind == PlacementKind.Composition then (assignment.value :: any)(scope) else assignment.value
	end

	local function itemKeySignal(scope: Signals.scope): string
		local assignment = retainedAssignment(scope)
		assert(assignment ~= nil, "RecyclableView: item key read before first Assignment")
		return assignment.key
	end

	local function transition(nextState: CompleteState<T>?)
		if destroyed then
			assert(nextState == nil, "RecyclableView: cannot transition an occupied state after destroy")
			return
		end
		local previousState = currentState
		local previousAssignment = if previousState == nil then nil else previousState.assignment
		local nextAssignment = if nextState == nil then nil else nextState.assignment
		local previousDestination = if previousState == nil then nil else previousState.destination
		local nextDestination = if nextState == nil then nil else nextState.destination
		local destinationOwnerChanged = previousDestination ~= nil
			and (
				nextDestination == nil
				or previousDestination.kind ~= nextDestination.kind
				or (previousDestination.kind == PlacementKind.List and (previousDestination :: ListDestination<T>).sink ~= (
					nextDestination :: ListDestination<T>
				).sink)
				or (
					previousDestination.kind == PlacementKind.Composition
					and (previousDestination :: CompositionDestination).placementId
						~= (nextDestination :: CompositionDestination).placementId
				)
			)
		if destinationOwnerChanged then
			detachState(previousState)
			publishedState = nil
			publishedPhase = nil
		end
		if previousAssignment ~= nil and previousAssignment ~= nextAssignment then
			local callbacks = hostCallbacks
			if callbacks ~= nil then
				callbacks.clearSelection()
			end
		end
		currentState = nextState
		-- Delivery can write bound properties or commit React content before
		-- the continuation places the Host, so a Host without a placement is
		-- attached, Hidden, before delivery.
		if nextState ~= nil and publishedState == nil then
			publish(nextState, HostPresentationPhase.Hidden)
		end
		local nextKind = if nextState == nil then nil else nextState.destination.kind
		local contentChanged = nextAssignment ~= nil
			and (previousAssignment ~= nextAssignment or retainedKind ~= nextKind)
		local startsCommit = readiness == RecyclableViewReadiness.ReadyOnCommit
			and nextAssignment ~= nil
			and (previousAssignment ~= nextAssignment or not currentContentReady)
		if startsCommit then
			currentRevision += 1
		end
		currentContentReady = if nextAssignment == nil
			then false
			elseif readiness == RecyclableViewReadiness.ReadyOnAssignment then true
			elseif startsCommit then false
			else currentContentReady
		SignalsExperimental.batch(function()
			if contentChanged then
				retainedKind = nextKind
				setRetainedAssignment(nextAssignment)
				if not hasItem(false) then
					setHasItem(true)
				end
			end
			if startsCommit then
				setContentRevision(currentRevision)
			end
			setIndexSignal(if nextState == nil then nil else nextState.index)
			setAssignmentSignal(nextAssignment)
			setCompositionPlacement(
				if nextState == nil then nil else (nextState.destination :: any).compositionPlacement
			)
			if readiness == RecyclableViewReadiness.ReadyOnCommit and (nextAssignment == nil or startsCommit) then
				setPending(nextAssignment ~= nil)
			end
			if nextState ~= nil then
				requestPublication()
			end
		end)
	end

	local function commitContent(revision: number): boolean
		if
			not destroyed
			and readiness == RecyclableViewReadiness.ReadyOnCommit
			and currentState ~= nil
			and revision == currentRevision
		then
			currentContentReady = true
			SignalsExperimental.batch(function()
				setPending(false)
				requestPublication()
			end)
			return true
		end
		return false
	end

	local function setContentMounted(mounted: boolean)
		if destroyed or contentMounted == mounted then
			return
		end
		contentMounted = mounted
		if mounted and currentState ~= nil then
			SignalsExperimental.batch(requestPublication)
		end
	end

	return {
		id = id,
		viewType = viewType,
		itemViewType = viewType,
		signal = assignmentSignal,
		indexSignal = indexSignal,
		itemSignal = itemSignal,
		itemKeySignal = itemKeySignal,
		hasItem = hasItem,
		transition = transition,
		pending = pending,
		contentRevision = contentRevision,
		commitContent = commitContent,
		setContentMounted = setContentMounted,
		readiness = readiness,
		hideWhilePending = hideWhilePending,
		compositionPlacement = compositionPlacement,
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
			destroyed = true
			detachState(currentState)
			currentState = nil
			hostCallbacks = nil
			setPending(false)
			portalFrame.Parent = nil
			portalFrame:Destroy()
		end,
	}
end

return RecyclableView
