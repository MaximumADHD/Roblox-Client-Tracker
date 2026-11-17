local FFlagViewRecyclerReact084 = require(script:FindFirstAncestor("ViewRecyclerReact").Flags).FFlagViewRecyclerReact084
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local DataSource = Core.DataSource
local React = require(Root.Parent.React)

-- `items` is nil while the caller supplies its own DataSource; the sequence then
-- keeps its last snapshot so hook order stays fixed across data modes.
local function useReconciledDataSource<T>(items: { T }?, getItemKey: DataSource.GetItemKey<T>?): DataSource.DataSource<T>
	local dataSource: DataSource.MutableSequence<T> = React.useState(function()
		return DataSource.sequence((if FFlagViewRecyclerReact084 then items or {} else items), getItemKey)
	end)
	local previousItems = React.useRef(nil :: { T }?)
	if previousItems.current == nil then
		previousItems.current = table.clone((if FFlagViewRecyclerReact084 then items or {} else items))
	end

	React.useLayoutEffect(function()
		if FFlagViewRecyclerReact084 then
			if items == nil or getItemKey == nil then
				return
			end
		end
		DataSource.reconcileSnapshot(dataSource, previousItems.current :: { T }, items, getItemKey)
		previousItems.current = table.clone(items)
	end, { dataSource, items, getItemKey } :: { unknown })

	return dataSource
end

return useReconciledDataSource
