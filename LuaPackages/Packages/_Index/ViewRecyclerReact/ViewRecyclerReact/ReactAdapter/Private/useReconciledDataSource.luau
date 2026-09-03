local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local DataSource = Core.DataSource
local React = require(Root.Parent.React)

local function useReconciledDataSource<T>(items: { T }, getItemKey: DataSource.GetItemKey<T>): DataSource.DataSource<T>
	local dataSource: DataSource.MutableSequence<T> = React.useState(function()
		return DataSource.sequence(items, getItemKey)
	end)
	local previousItems = React.useRef(table.clone(items))

	React.useLayoutEffect(function()
		DataSource.reconcileSnapshot(dataSource, previousItems.current, items, getItemKey)
		previousItems.current = table.clone(items)
	end, { dataSource, items, getItemKey } :: { unknown })

	return dataSource
end

return useReconciledDataSource
