local Root = script:FindFirstAncestor("ViewRecyclerReact")

local Core = require(Root.Parent.ViewRecycler)
local Axis = Core.Axis
local Layout = Core.Layout
local ItemHooks = require(Root.ReactAdapter.ItemHooks)
local React = require(Root.Parent.React)
local SignalsReact = require(Root.Parent.SignalsReact)
local VirtualList = require(Root.ReactAdapter.VirtualList)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)

local e = React.createElement

export type ItemComponentProps<T> = {
	item: T,
	index: number,
	pending: React.Binding<boolean>,
}

export type ItemComponent<T> = (props: ItemComponentProps<T>) -> React.Node

export type ItemComponentDefinition<T> = {
	component: ItemComponent<T>,
	readiness: createRecyclableView.Readiness?,
	hideWhilePending: boolean?,
}

export type SingleDefinition<T> = {
	itemComponent: ItemComponent<T>,
	readiness: createRecyclableView.Readiness?,
	hideWhilePending: boolean?,
}

export type MultipleDefinition<T> = {
	itemComponents: { ItemComponentDefinition<T> },
	getItemComponent: (item: T, index: number) -> ItemComponent<T>,
}

export type Definition<T> = SingleDefinition<T> | MultipleDefinition<T>

type SharedProps<T> = VirtualList.BaseVirtualListProps<T> & {
	layout: Layout.Runtime,
	axis: Core.Axis?,
}

export type DeclarativeProps<T> = SharedProps<T> & {
	data: VirtualList.DeclarativeData<T>,
}

export type DataSourceProps<T> = SharedProps<T> & {
	data: Core.DataSource<T>,
}

export type Props<T> = DeclarativeProps<T> | DataSourceProps<T>
export type Component<T> = (props: Props<T>) -> React.Node

local function createItemViewType<T>(definition: ItemComponentDefinition<T>)
	local component = definition.component
	return createRecyclableView(function(props)
		local assignmentSignal = ItemHooks.useRecyclingAssignment()
		local assignment = SignalsReact.useSignalState(assignmentSignal)
		local index = SignalsReact.useSignalState(ItemHooks.useRecyclingIndex())
		local retainedAssignment = React.useRef(nil)
		local retainedIndex = React.useRef(nil)
		if assignment ~= nil then
			retainedAssignment.current = assignment
		end
		if index ~= nil then
			retainedIndex.current = index
		end
		local current = retainedAssignment.current
		local currentIndex = retainedIndex.current
		if current == nil or currentIndex == nil then
			return nil
		end
		return e(component, {
			item = current.value,
			index = currentIndex,
			pending = props.pending,
		})
	end, {
		readiness = definition.readiness,
		hideWhilePending = definition.hideWhilePending,
	})
end

local function create(configuredVirtualList)
	return function<T>(definition: Definition<T>)
		assert(type(definition) == "table", "createVirtualList: definition must be a table")
		local itemType
		if definition.itemComponent ~= nil then
			assert(
				type(definition.itemComponent) == "function",
				"createVirtualList: itemComponent must be a React component"
			)
			assert(definition.itemComponents == nil, "createVirtualList: choose one definition form")
			itemType = createItemViewType({
				component = definition.itemComponent,
				readiness = definition.readiness,
				hideWhilePending = definition.hideWhilePending,
			})
		else
			local itemComponents = definition.itemComponents
			local getItemComponent = definition.getItemComponent
			assert(
				type(itemComponents) == "table" and #itemComponents > 0,
				"createVirtualList: itemComponents must be a non-empty array"
			)
			assert(type(getItemComponent) == "function", "createVirtualList: getItemComponent must be a function")
			local itemTypesByComponent = {}
			for _, itemComponentDefinition in itemComponents do
				local component = itemComponentDefinition.component
				assert(type(component) == "function", "createVirtualList: component must be a React component")
				assert(
					itemTypesByComponent[component] == nil,
					"createVirtualList: each component may be declared only once"
				)
				itemTypesByComponent[component] = createItemViewType(itemComponentDefinition)
			end
			itemType = function(item, index)
				local component = getItemComponent(item, index)
				local resolved = itemTypesByComponent[component]
				assert(resolved ~= nil, "createVirtualList: getItemComponent returned an undeclared component")
				return resolved
			end
		end

		local function SpecializedVirtualList(props)
			assert(
				props.pinnedStartItem == nil and props.pinnedEndItem == nil,
				"createVirtualList: pinned Items require VirtualList"
			)
			local resolvedProps = table.clone(props)
			resolvedProps.axis = props.axis or Axis.Y
			resolvedProps.itemType = itemType
			return e(configuredVirtualList, resolvedProps)
		end

		return SpecializedVirtualList :: Component<T>
	end
end

return {
	create = create,
}
