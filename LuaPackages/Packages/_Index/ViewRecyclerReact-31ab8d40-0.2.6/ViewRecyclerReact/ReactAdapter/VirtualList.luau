-- VirtualList: the one React renderer. It adapts Core's Virtualizer
-- itemViews to mounted React slots inside a ScrollingFrame.
--
-- Recyclable-view component types are opaque ItemView types. `itemType` accepts one
-- for a homogeneous list or a selector for a heterogeneous list. The slot
-- collection lives outside React state; lifecycle callbacks only trigger the
-- renders that add or remove slots.
--
-- Prop stability contract: `layout` swaps the runtime's layout when its
-- identity changes, so memoize it (React.useMemo).
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local Adapter = Core.Adapter
local AutoScroll = Adapter.ScrollPolicy.AutoScroll
local Axis = Core.Axis
local Layout = Core.Layout
local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local RecyclingScopeContext = require(Root.ReactAdapter.Private.RecyclingScopeContext)
local RecyclingScopeFactory = require(Root.ReactAdapter.RecyclingScope)
local createPinnedItem = require(Root.ReactAdapter.createPinnedItem)
local ScrollAlignment = Core.ScrollAlignment
local Signals = require(Root.Parent.Signals)
local DataSource = Core.DataSource
local VirtualListShell = require(Root.ReactAdapter.Private.VirtualListShell)
local useReconciledDataSource = require(Root.ReactAdapter.Private.useReconciledDataSource)
local useVirtualList = require(Root.ReactAdapter.Private.useVirtualList)

local e = React.createElement

type ItemViewType<T> = RecyclableViewRegistry.RecyclableViewType<T>

export type ItemSignal<T> = Signals.getter<T>
export type AutoScrollResult = AutoScroll.Result
export type AutoScrollCallback = AutoScroll.Callback
export type AutoScrollOnChange = AutoScroll.Policy
export type AdapterOptions = {
	createPortal: ((children: React.Node, target: Instance) -> React.Node)?,
}

type SharedVirtualListProps<T> = {
	layout: Layout.Runtime,
	axis: Axis.Axis,

	-- A registered Recyclable view type for homogeneous lists, or a selector
	-- returning one for heterogeneous lists.
	itemType: ItemViewType<T> | ((item: T, itemIndex: number) -> ItemViewType<T>),
	-- Non-negative integer layout units beyond each visible-range end.
	-- Linear layouts use items; grids use rows. nil defaults to 1.
	overscan: number?,
	overscanPolicy: Core.OverscanPolicy?,
	dataPrefetch: Core.DataPrefetchOptions?,
	contentAlignment: ScrollAlignment.ScrollAlignment?,
	isItemStickyHeader: ((item: T, index: number) -> boolean)?,
	pinnedStartItem: createPinnedItem.PinnedItem<any>?,
	pinnedEndItem: createPinnedItem.PinnedItem<any>?,
	maxPoolSize: number?,
	preserveScrollPositionOnChange: boolean?,
	initialScrollAlignment: ScrollAlignment.ScrollAlignment?,
	autoScrollOnChange: AutoScrollOnChange?,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	startReachedThreshold: number?,
	endReachedThreshold: number?,
	diagnostics: Core.DiagnosticCallback?,

	-- Receives a VirtualListHandle for imperative control
	-- (scrollToIndex). Layout.measured lands unmeasured targets from
	-- estimates, then preserves the requested alignment as sizes settle.
	listRef: React.Ref<VirtualListHandle>?,

	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
	onVisibleRangeChanged: ((range: Core.IndexRange) -> ())?,
	onMountedRangeChanged: ((range: Core.IndexRange) -> ())?,
	onDataPrefetchRequested: ((request: Core.DataPrefetchRequest) -> ())?,
	scrollingFrameProps: { [any]: any }?,
	tag: string?,
}

export type DeclarativeData<T> = {
	items: { T },
	getItemKey: DataSource.GetItemKey<T>,
}

export type DeclarativeVirtualListProps<T> = SharedVirtualListProps<T> & {
	data: DeclarativeData<T>,
}

export type DataSourceVirtualListProps<T> = SharedVirtualListProps<T> & {
	data: DataSource.DataSource<T>,
}

export type VirtualListProps<T> = DeclarativeVirtualListProps<T> | DataSourceVirtualListProps<T>

type ResolvedVirtualListProps<T> = SharedVirtualListProps<T> & {
	dataSource: DataSource.DataSource<T>,
}

export type VirtualListHandle = {
	scrollToIndex: (itemIndex: number, options: { alignment: ScrollAlignment.ScrollAlignment? }?) -> (),
	scrollToOffset: (offset: number) -> number,
	scrollBy: (delta: number) -> number,
	getScrollState: () -> Core.ScrollState,
	captureScrollAnchorSnapshot: () -> Core.ScrollAnchorSnapshot,
	restoreScrollAnchorSnapshot: (snapshot: Core.ScrollAnchorSnapshot) -> number,
}
export type VirtualListComponent = <T>(props: VirtualListProps<T>) -> React.Node

local function createVirtualList(adapterOptions: AdapterOptions?): VirtualListComponent
	local RecyclingScope = RecyclingScopeFactory.create(adapterOptions)

	local function VirtualListRenderer<T>(props: ResolvedVirtualListProps<T>)
		return e(VirtualListShell, useVirtualList(props))
	end

	local function DeclarativeVirtualList<T>(props: DeclarativeVirtualListProps<T>)
		local dataSource = useReconciledDataSource(props.data.items, props.data.getItemKey)
		local resolvedProps = table.clone(props) :: any
		resolvedProps.data = nil
		resolvedProps.dataSource = dataSource
		return e(VirtualListRenderer, resolvedProps)
	end

	local function DataSourceVirtualList<T>(props: DataSourceVirtualListProps<T>)
		local resolvedProps = table.clone(props) :: any
		resolvedProps.dataSource = props.data
		resolvedProps.data = nil
		return e(VirtualListRenderer, resolvedProps)
	end

	local function VirtualList<T>(props: VirtualListProps<T>)
		local recyclingScope = React.useContext(RecyclingScopeContext)
		local publicProps = props :: any
		local data = publicProps.data
		assert(data ~= nil, "VirtualList: `data` is required")
		assert(publicProps.itemType ~= nil, "VirtualList: `itemType` is required")
		if not RecyclableViewRegistry.isRegistered(publicProps.itemType) then
			assert(
				type(publicProps.itemType) == "function",
				"VirtualList: `itemType` must be a Recyclable view type or selector"
			)
			local firstItem = if type(data.getItemCount) == "function" and data.getItemCount() > 0
				then data.getItem(1)
				elseif type(data.items) == "table" then data.items[1]
				else nil
			if firstItem ~= nil then
				assert(
					RecyclableViewRegistry.isRegistered(publicProps.itemType(firstItem, 1)),
					"VirtualList: `itemType` selector must return a Recyclable view type"
				)
			end
		end

		local content
		if
			type(data) == "table"
			and type(data.getItemCount) == "function"
			and type(data.getItem) == "function"
			and type(data.getItemKey) == "function"
			and type(data.subscribe) == "function"
		then
			content = e(DataSourceVirtualList, publicProps)
		else
			assert(
				type(data) == "table" and type(data.items) == "table" and type(data.getItemKey) == "function",
				"VirtualList: `data` must be a DataSource or { items, getItemKey }"
			)
			content = e(DeclarativeVirtualList, publicProps)
		end

		if recyclingScope ~= nil then
			assert(publicProps.maxPoolSize == nil, "VirtualList: configure maxPoolSize on RecyclingScope")
			return content
		end
		return e(RecyclingScope, {
			maxPoolSize = publicProps.maxPoolSize,
			diagnostics = publicProps.diagnostics,
		}, {
			List = content,
		})
	end

	return VirtualList :: VirtualListComponent
end

return {
	create = createVirtualList,
}
