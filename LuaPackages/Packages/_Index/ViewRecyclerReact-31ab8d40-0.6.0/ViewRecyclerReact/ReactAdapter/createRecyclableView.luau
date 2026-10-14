local Root = script:FindFirstAncestor("ViewRecyclerReact")

local CompositionPlacement = require(Root.ReactAdapter.Private.CompositionPlacement)
local CompositionPlacementSuspended = require(Root.ReactAdapter.Private.CompositionPlacementSuspended)
local React = require(Root.Parent.React)
local RecyclableViewContext = require(Root.ReactAdapter.Private.RecyclableViewContext)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)
local SignalsReact = require(Root.Parent.SignalsReact)

export type Bindable<T> = T | React.Binding<T>
export type Readiness = RecyclableViewRegistry.Readiness
export type SignalProps<T> = RecyclableViewRegistry.SignalProps<T>
export type Props<T> = RecyclableViewRegistry.Props<T>
export type RecyclableViewType<T> = RecyclableViewRegistry.RecyclableViewType<T>
export type Options = {
	readiness: Readiness?,
	hideWhilePending: boolean?,
	contributesToParentMeasurement: boolean?,
}

type RecyclableViewType<T> = RecyclableViewRegistry.RecyclableViewType<T>
type PlacementHandle = CompositionPlacement.PlacementHandle

type InternalProps = {
	active: Signals.getter<boolean>,
	itemSignal: Signals.getter<any>,
	_definitionIdentity: {},
	viewType: RecyclableViewType<any>,
}

local ACTIVE_SIGNAL = Signals.createSignal(true)
local INACTIVE_SIGNAL = Signals.createSignal(false)
local EMPTY_ASSIGNMENT_SIGNAL = Signals.createSignal(nil)
local EMPTY_INDEX_SIGNAL = Signals.createSignal(nil)
local EMPTY_PLACEMENT_SIGNAL = Signals.createSignal(nil)

local function InlineRecyclableView(props: InternalProps): React.Node
	local sourceState = React.useState(function()
		local sourceSignal, setSource = Signals.createSignal({ get = props.itemSignal })
		local function itemSignal(scope: Signals.scope)
			return sourceSignal(scope).get(scope)
		end
		local identity = Signals.createSignal({})
		return {
			context = {
				placement = EMPTY_PLACEMENT_SIGNAL,
				assignmentSignal = EMPTY_ASSIGNMENT_SIGNAL,
				indexSignal = EMPTY_INDEX_SIGNAL,
				itemSignal = itemSignal,
				itemKeySignal = identity,
			},
			set = setSource,
			source = props.itemSignal,
		}
	end)
	if sourceState.source ~= props.itemSignal then
		sourceState.source = props.itemSignal
		sourceState.set({ get = props.itemSignal })
	end
	local pendingState = React.useState(function()
		local pending = React.createBinding(false)
		return { binding = pending }
	end)
	local metadata = RecyclableViewRegistry.getMetadata(props.viewType)
	assert(metadata ~= nil, "createRecyclableView: unknown Recyclable view type")
	return React.createElement(RecyclableViewContext.Provider, {
		value = sourceState.context,
	}, {
		Content = React.createElement(metadata.signalComponent, {
			itemSignal = sourceState.context.itemSignal,
			pending = pendingState.binding,
		}),
	})
end

local function InlineActiveRecyclableView(props: InternalProps): React.Node
	local active = SignalsReact.useSignalState(props.active)
	if not active then
		return nil
	end
	return React.createElement(InlineRecyclableView, props)
end

local MemoizedInlineActiveRecyclableView = React.memo(InlineActiveRecyclableView)

local function RecyclableViewComponent(props: InternalProps): React.Node
	local contextValue = React.useContext(RecyclableViewContext)
	local rendersInline = contextValue == false
	local context = if rendersInline or contextValue == CompositionPlacementSuspended then nil else contextValue
	local placementSignal = if context == nil then EMPTY_PLACEMENT_SIGNAL else context.placement
	local placementToken = React.useState(function()
		return {}
	end)
	local placeholderRef = React.useRef(nil :: Frame?)
	local handleRef = React.useRef(nil :: PlacementHandle?)
	local itemSignalRef = React.useRef(props.itemSignal)
	itemSignalRef.current = props.itemSignal
	local activeRef = React.useRef(props.active)
	activeRef.current = props.active
	local viewType = props.viewType

	React.useLayoutEffect(function()
		local currentPlacement = nil
		local disposePlacementEffect = Signals.createEffect(function(scope)
			local placement = placementSignal(scope)
			if placement == currentPlacement then
				return
			end
			currentPlacement = placement
			local previousHandle = handleRef.current
			if previousHandle ~= nil then
				handleRef.current = nil
				previousHandle.unregister()
			end
			if context ~= nil and placement ~= nil then
				handleRef.current = placement.register(
					viewType,
					placementToken,
					context.assignmentSignal,
					itemSignalRef.current,
					placeholderRef.current,
					activeRef.current
				)
			end
		end)
		return function()
			disposePlacementEffect()
			local handle = handleRef.current
			if handle ~= nil then
				handleRef.current = nil
				handle.unregister()
			end
		end
	end, { context, placementSignal, placementToken, viewType } :: { unknown })

	local itemSignal = props.itemSignal
	React.useLayoutEffect(function()
		local handle = handleRef.current
		if handle ~= nil then
			handle.setItemSignal(itemSignal)
		end
	end, { itemSignal } :: { unknown })

	local active = props.active
	React.useLayoutEffect(function()
		local handle = handleRef.current
		if handle ~= nil then
			handle.setActive(active)
		end
	end, { active } :: { unknown })

	local setPlaceholderRef = React.useCallback(function(instance: Frame?)
		placeholderRef.current = instance
		local handle = handleRef.current
		if handle ~= nil then
			handle.setPlaceholder(instance)
		end
	end, {})

	if rendersInline then
		return React.createElement(MemoizedInlineActiveRecyclableView, {
			active = active,
			itemSignal = itemSignal,
			viewType = viewType,
		})
	end

	return React.createElement("Frame", {
		Name = "RecyclableView",
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(),
		ref = setPlaceholderRef,
	})
end

local function createRecyclableView<T>(
	signalComponent: (props: SignalProps<T>) -> React.Node,
	options: Options?
): RecyclableViewType<T>
	local resolvedOptions = options or {}
	local readiness = resolvedOptions.readiness or RecyclableViewReadiness.ReadyOnAssignment
	assert(
		readiness == RecyclableViewReadiness.ReadyOnAssignment or readiness == RecyclableViewReadiness.ReadyOnCommit,
		"createRecyclableView: readiness must be ReadyOnAssignment or ReadyOnCommit"
	)
	-- Keep the facade closure unique per factory call. Native Luau may reuse an
	-- upvalue-free nested closure, which would collapse distinct view types.
	local definitionIdentity = {}

	-- A factory-created component is intentional here: its closure is the
	-- immutable Recyclable-view facade and the factory is called at module scope.
	-- lute-lint-ignore(noNestedReactDefinitions)
	local function RecyclableViewFacade(props: Props<T>): React.Node
		local active = props.active
		local activeSignal = if type(active) == "function"
			then active
			elseif active == false then INACTIVE_SIGNAL
			else ACTIVE_SIGNAL
		return React.createElement(RecyclableViewComponent, {
			active = activeSignal,
			itemSignal = props.itemSignal,
			_definitionIdentity = definitionIdentity,
			viewType = RecyclableViewFacade,
		})
	end

	RecyclableViewRegistry.register(RecyclableViewFacade, {
		readiness = readiness,
		hideWhilePending = resolvedOptions.hideWhilePending == true,
		contributesToParentMeasurement = resolvedOptions.contributesToParentMeasurement ~= false,
		signalComponent = signalComponent,
	})
	return RecyclableViewFacade
end

return createRecyclableView
