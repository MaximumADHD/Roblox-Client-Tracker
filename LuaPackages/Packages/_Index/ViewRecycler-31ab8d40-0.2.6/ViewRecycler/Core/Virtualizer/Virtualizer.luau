local Src = script:FindFirstAncestor("ViewRecycler")

local DataPrefetch = require(Src.Core.DataPrefetch)
local DataSource = require(Src.Core.DataSource)
local Diagnostics = require(Src.Core.Diagnostics)
local Layout = require(Src.Core.Layout)
local OverscanPolicy = require(Src.Core.OverscanPolicy)
local PinnedItems = require(Src.Core.PinnedItems)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ScrollAlignmentEnum = require(Src.Core.Enums.ScrollAlignment)
local Signals = require(Src.Parent.Signals)
local Types = require(Src.Core.Types)
local VirtualizerCommandTypes = require(Src.Core.Enums.VirtualizerCommandType)
local VirtualizerCommandType = VirtualizerCommandTypes.External
local InternalVirtualizerCommandType = VirtualizerCommandTypes.Internal
local VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType)
local VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType)
local VirtualizerSnapshot = require(Src.Core.Virtualizer.VirtualizerSnapshot)
local createListPresentation = require(Src.Core.Virtualizer.ListPresentation)
local createRecyclingScope = require(Src.Core.RecyclingScope)
local createVirtualizerEngine = require(Src.Core.Virtualizer.VirtualizerEngine)

export type ItemAssignment<T> = createListPresentation.ItemAssignment<T>
export type DesiredAssignment<T> = createListPresentation.DesiredAssignment<T>
export type PlacementIntent<T> = createListPresentation.PlacementIntent<T>
export type ScrollAlignment = ScrollAlignmentEnum.ScrollAlignment
export type ScrollState = Types.ScrollState
export type ScrollStateBeforeChange = Types.ScrollStateBeforeChange
export type ScrollAnchorSnapshot = VirtualizerSnapshot.ScrollAnchorSnapshot
export type ScrollObservation = VirtualizerSnapshot.ScrollObservation
export type Policy<T, ItemViewType> = VirtualizerSnapshot.Policy<T, ItemViewType>
export type ItemPlacement = Placement.ItemPlacement
export type Snapshot<T, ItemViewType> = VirtualizerSnapshot.Snapshot<T, ItemViewType>
export type Command<T, ItemViewType> = VirtualizerSnapshot.Command<T, ItemViewType>
export type PresentationQuery<ItemView> = { type: typeof(VirtualizerQueryType.GetItemViews) } | {
	type: typeof(VirtualizerQueryType.GetPlacementIntent),
	itemView: ItemView,
}
export type Query<ItemView> = PresentationQuery<ItemView> | VirtualizerSnapshot.LogicalQuery
export type Effect = VirtualizerSnapshot.Effect
export type Update<T, ItemViewType> = VirtualizerSnapshot.Update<T, ItemViewType>
export type RecyclingScope<ItemView, T, ItemViewType> = createRecyclingScope.RecyclingScope<ItemView, ItemViewType>

export type Options<ItemView, T, ItemViewType> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	recyclingScope: RecyclingScope<ItemView, T, ItemViewType>,
	prepareDesiredAssignment: ((DesiredAssignment<T>) -> DesiredAssignment<T>)?,
	getItemViewType: (item: T, index: number) -> ItemViewType,
	prepareAssignment: ((itemView: ItemView, assignment: ItemAssignment<T>?) -> ())?,
	postCommitAssignment: ((itemView: ItemView, assignment: ItemAssignment<T>?) -> ())?,
	presentAssignment: ((itemView: ItemView, assignment: ItemAssignment<T>) -> ())?,
	applyPlacementIntent: ((itemView: ItemView, intent: PlacementIntent<T>?) -> ())?,
	overscan: number?,
	overscanPolicy: OverscanPolicy.Policy?,
	dataPrefetch: DataPrefetch.Options?,
	contentAlignment: ScrollAlignment?,
	endThreshold: number?,
	isItemStickyHeader: ((item: T, index: number) -> boolean)?,
	pinnedStartItem: PinnedItems.PinnedItem<T, ItemViewType>?,
	pinnedEndItem: PinnedItems.PinnedItem<T, ItemViewType>?,
	maxPoolSize: number?,
	preserveScrollPositionOnChange: boolean?,
	diagnostics: Diagnostics.Callback?,
	active: Signals.getter<boolean>?,
	onUpdate: ((previousSnapshot: Snapshot<T, ItemViewType>, update: Update<T, ItemViewType>) -> ())?,
}

export type Virtualizer<ItemView, T, ItemViewType> = {
	dispatch: (command: Command<T, ItemViewType>) -> Update<T, ItemViewType>,
	getSnapshot: () -> Snapshot<T, ItemViewType>,
	query: (query: Query<ItemView>) -> any,
}

local function createVirtualizer<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): Virtualizer<ItemView, T, ItemViewType>
	local recyclingScope = options.recyclingScope
	local engine = createVirtualizerEngine({
		dataSource = options.dataSource,
		layout = options.layout,
		getRecyclableViewType = options.getItemViewType,
		overscan = options.overscan,
		overscanPolicy = options.overscanPolicy,
		dataPrefetch = options.dataPrefetch,
		contentAlignment = options.contentAlignment,
		endThreshold = options.endThreshold,
		preserveScrollPositionOnChange = options.preserveScrollPositionOnChange,
		diagnostics = options.diagnostics,
		isItemStickyHeader = options.isItemStickyHeader,
		pinnedStartItem = options.pinnedStartItem,
		pinnedEndItem = options.pinnedEndItem,
	})
	local presentation = createListPresentation({
		recyclingScope = recyclingScope,
		prepareDesiredAssignment = options.prepareDesiredAssignment,
		prepareAssignment = options.prepareAssignment,
		postCommitAssignment = options.postCommitAssignment,
		presentAssignment = options.presentAssignment,
		applyPlacementIntent = options.applyPlacementIntent,
	})

	local currentDataSource = options.dataSource
	local disconnectDataSource: (() -> ())? = nil
	local activated = false
	local presentationActive = options.active == nil
	local presentationSynchronized = false
	local destroyed = false
	local mutating = false
	local logicalMeasurementCommand = {
		type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
		measurements = {},
		boundaryDropped = 0,
		trusted = true,
	}
	local dispatch: (
		command: Command<T, ItemViewType>?,
		engineCommand: VirtualizerSnapshot.EngineCommand<T, ItemViewType>?
	) -> Update<T, ItemViewType>
	local disconnectActivation: (() -> ())? = nil

	local function subscribe()
		if disconnectDataSource ~= nil or not activated or destroyed then
			return
		end
		disconnectDataSource = currentDataSource.subscribe(function(changeBatch)
			dispatch(nil, {
				type = InternalVirtualizerCommandType.ApplyDataSourceChange,
				changeBatch = changeBatch,
			})
		end)
	end

	local function unsubscribe()
		if disconnectDataSource ~= nil then
			disconnectDataSource()
			disconnectDataSource = nil
		end
	end

	local function executeDispatch(
		command: Command<T, ItemViewType>?,
		previousSnapshot: Snapshot<T, ItemViewType>,
		engineCommand: VirtualizerSnapshot.EngineCommand<T, ItemViewType>?
	): Update<T, ItemViewType>
		if
			command ~= nil
			and (
				command.type == VirtualizerCommandType.SetDataSource
				or command.type == VirtualizerCommandType.SetDataSourceAndLayout
			)
		then
			local nextDataSource = command.dataSource
			if nextDataSource ~= currentDataSource then
				unsubscribe()
				currentDataSource = nextDataSource
			end
		end
		local nextUpdate = if engineCommand == nil
			then {
				snapshot = previousSnapshot,
				presentation = {
					assignmentsChanged = false,
					placementChanged = false,
				},
				result = nil,
				effects = {},
			}
			else engine.dispatch(engineCommand)
		if command ~= nil and command.type == VirtualizerCommandType.Activate then
			activated = true
			subscribe()
		elseif command ~= nil and command.type == VirtualizerCommandType.SetActive then
			presentationActive = command.active
		elseif command ~= nil and command.type == VirtualizerCommandType.Destroy then
			unsubscribe()
			presentation.destroy()
			destroyed = true
			return nextUpdate
		end
		local presentationDiagnostics
		if presentationActive then
			local presentationChange = nextUpdate.presentation
			local nextSnapshot = nextUpdate.snapshot
			if
				not presentationSynchronized
				or presentationChange.assignmentsChanged
				or presentationChange.placementChanged
				or previousSnapshot.entries ~= nextSnapshot.entries
				or previousSnapshot.contentStartOffset ~= nextSnapshot.contentStartOffset
			then
				presentationDiagnostics = presentation.apply(previousSnapshot, nextSnapshot, presentationChange)
				presentationSynchronized = true
			end
		else
			presentationDiagnostics = presentation.apply(previousSnapshot, nil, {
				assignmentsChanged = true,
				placementChanged = true,
			})
			presentationSynchronized = false
		end
		if presentationDiagnostics ~= nil then
			for _, event in presentationDiagnostics do
				table.insert(nextUpdate.effects, { type = VirtualizerEffectType.Diagnostic, event = event })
			end
		end
		if disconnectDataSource == nil then
			subscribe()
		end
		return nextUpdate
	end

	dispatch = function(command, engineCommand)
		if engineCommand == nil and command ~= nil then
			if command.type == VirtualizerCommandType.SubmitMeasurements then
				local measurements, dropped = presentation.validateMeasurements(command.measurements)
				logicalMeasurementCommand.measurements = measurements
				logicalMeasurementCommand.boundaryDropped = dropped
				engineCommand = logicalMeasurementCommand
			elseif command.type ~= VirtualizerCommandType.SetActive then
				engineCommand = command :: any
			end
		end
		if command ~= nil and command.type == VirtualizerCommandType.Destroy and disconnectActivation ~= nil then
			disconnectActivation()
			disconnectActivation = nil
		end
		assert(not mutating, "Virtualizer: cannot mutate during a transaction")
		if destroyed then
			assert(
				command ~= nil and command.type == VirtualizerCommandType.Destroy,
				"Virtualizer: cannot dispatch after destruction"
			)
		end
		mutating = true
		local previousSnapshot = engine.getSnapshot()
		local ok, update = pcall(executeDispatch, command, previousSnapshot, engineCommand)
		mutating = false
		if not ok then
			error(update, 0)
		end
		local committedUpdate = update :: Update<T, ItemViewType>
		if options.diagnostics ~= nil then
			for _, effect in committedUpdate.effects do
				if effect.type == VirtualizerEffectType.Diagnostic then
					options.diagnostics(effect.event)
				end
			end
		end
		if options.onUpdate ~= nil then
			options.onUpdate(previousSnapshot, committedUpdate)
		end
		return committedUpdate
	end

	if options.active ~= nil then
		disconnectActivation = Signals.createEffect(function(scope)
			dispatch({
				type = VirtualizerCommandType.SetActive,
				active = (options.active :: Signals.getter<boolean>)(scope),
			})
		end)
	end

	local function query(queryValue: Query<ItemView>): any
		if queryValue.type == VirtualizerQueryType.GetItemViews then
			return presentation.getItemViews()
		elseif queryValue.type == VirtualizerQueryType.GetPlacementIntent then
			return presentation.resolvePlacementIntent(queryValue.itemView)
		end
		return engine.query(queryValue :: VirtualizerSnapshot.LogicalQuery)
	end

	return {
		dispatch = dispatch :: any,
		getSnapshot = engine.getSnapshot,
		query = query,
	}
end

return createVirtualizer
