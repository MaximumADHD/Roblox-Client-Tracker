local Src = script:FindFirstAncestor("ViewRecycler")

local DataSource = require(Src.Core.DataSource)
local Types = require(Src.Core.Types)

export type Predicate<T> = (item: T, index: number) -> boolean

export type StickyIndexResolver<T> = {
	setPredicate: (predicate: Predicate<T>?) -> boolean,
	setDataSource: (dataSource: DataSource.DataSource<T>) -> (),
	applyDataSourceChange: (changeBatch: Types.DataSourceChangeBatch) -> (),
	resolve: () -> { number },
}

local function createStickyIndexResolver<T>(
	initialDataSource: DataSource.DataSource<T>,
	initialPredicate: Predicate<T>?
): StickyIndexResolver<T>
	local dataSource = initialDataSource
	local predicate = initialPredicate
	local indices: { number } = {}
	local dirty = true

	local function resolve(): { number }
		if dirty then
			table.clear(indices)
			if predicate ~= nil then
				for index = 1, dataSource.getItemCount() do
					if predicate(dataSource.getItem(index), index) then
						table.insert(indices, index)
					end
				end
			end
			dirty = false
		end
		return indices
	end

	return {
		setPredicate = function(nextPredicate)
			if predicate ~= nextPredicate then
				predicate = nextPredicate
				dirty = true
				return true
			end
			return false
		end,
		setDataSource = function(nextDataSource)
			if dataSource ~= nextDataSource then
				dataSource = nextDataSource
				dirty = true
			end
		end,
		applyDataSourceChange = function(_changeBatch)
			-- Virtualizer delivers completed batches in source order. Rebuilding
			-- lazily observes the final source state without a second subscription.
			dirty = true
		end,
		resolve = resolve,
	}
end

return createStickyIndexResolver
