local Src = script:FindFirstAncestor("ViewRecycler")

local DataPrefetch = require(Src.Core.DataPrefetch)
local DataSource = require(Src.Core.DataSource)
local Types = require(Src.Core.Types)

export type Input<T> = {
	dataSource: DataSource.DataSource<T>,
	mountedRange: Types.IndexRange,
	options: DataPrefetch.Options?,
}

export type DataPrefetchController<T> = {
	reconcile: (input: Input<T>) -> { DataPrefetch.Request },
	destroy: () -> (),
}

type CurrentRequest = {
	range: Types.IndexRange,
}

local EMPTY_REQUESTS = table.freeze({})
local ZERO_OPTIONS = table.freeze({
	startItems = 0,
	endItems = 0,
})

local function sameRange(left: Types.IndexRange, right: Types.IndexRange): boolean
	return left.firstIndex == right.firstIndex and left.lastIndex == right.lastIndex
end

local function sameOptions(left: DataPrefetch.ResolvedOptions, right: DataPrefetch.ResolvedOptions): boolean
	return left.startItems == right.startItems and left.endItems == right.endItems
end

local function createDataPrefetchController<T>(initialOptions: DataPrefetch.Options?): DataPrefetchController<T>
	local destroyed = false
	local dataSource: DataSource.DataSource<T>? = nil
	local resolved = DataPrefetch.resolve(initialOptions)
	local currentByEdge: { [DataPrefetch.Edge]: CurrentRequest? } = {}

	local function createRequest(edge: DataPrefetch.Edge, range: Types.IndexRange): DataPrefetch.Request
		local current: CurrentRequest = {
			range = table.freeze(range),
		}
		currentByEdge[edge] = current
		return table.freeze({
			edge = edge,
			range = current.range,
			isCurrent = function()
				return not destroyed and currentByEdge[edge] == current
			end,
		})
	end

	local function desiredRange(
		edge: DataPrefetch.Edge,
		itemCount: number,
		mountedRange: Types.IndexRange,
		nextResolved: DataPrefetch.ResolvedOptions
	): Types.IndexRange?
		local limit = if edge == DataPrefetch.Edge.Start then nextResolved.startItems else nextResolved.endItems
		if limit == 0 then
			return nil
		end
		local range = if edge == DataPrefetch.Edge.Start
			then {
				firstIndex = math.max(1, mountedRange.firstIndex - limit),
				lastIndex = mountedRange.firstIndex - 1,
			}
			else {
				firstIndex = mountedRange.lastIndex + 1,
				lastIndex = math.min(itemCount, mountedRange.lastIndex + limit),
			}
		return if Types.isIndexRangeEmpty(range) then nil else range
	end

	local function reconcileEdge(
		edge: DataPrefetch.Edge,
		desired: Types.IndexRange?,
		requests: { DataPrefetch.Request }?
	): { DataPrefetch.Request }?
		local current = currentByEdge[edge]
		if desired == nil then
			currentByEdge[edge] = nil
		elseif current == nil or not sameRange(current.range, desired) then
			requests = requests or {}
			table.insert(requests, createRequest(edge, desired))
		end
		return requests
	end

	local function reconcile(input: Input<T>): { DataPrefetch.Request }
		assert(not destroyed, "DataPrefetchController: cannot reconcile after destroy")
		local options = input.options
		local startItems = if options == nil then 0 else options.startItems or 0
		local endItems = if options == nil then 0 else options.endItems or 0
		if startItems == 0 and endItems == 0 then
			if dataSource ~= input.dataSource or not sameOptions(resolved, ZERO_OPTIONS) then
				table.clear(currentByEdge)
			end
			dataSource = input.dataSource
			resolved = ZERO_OPTIONS
			return EMPTY_REQUESTS
		end

		local nextResolved = DataPrefetch.resolve(input.options)
		local mountedRange = input.mountedRange
		local itemCount = if Types.isIndexRangeEmpty(mountedRange) then 0 else input.dataSource.getItemCount()
		local desiredStart: Types.IndexRange? = nil
		local desiredEnd: Types.IndexRange? = nil
		if not Types.isIndexRangeEmpty(mountedRange) then
			desiredStart = desiredRange(DataPrefetch.Edge.Start, itemCount, mountedRange, nextResolved)
			desiredEnd = desiredRange(DataPrefetch.Edge.End, itemCount, mountedRange, nextResolved)
		end

		if dataSource ~= input.dataSource or not sameOptions(resolved, nextResolved) then
			table.clear(currentByEdge)
		end
		dataSource = input.dataSource
		resolved = nextResolved

		local requests = reconcileEdge(DataPrefetch.Edge.Start, desiredStart, nil)
		requests = reconcileEdge(DataPrefetch.Edge.End, desiredEnd, requests)
		return requests or EMPTY_REQUESTS
	end

	return {
		reconcile = reconcile,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			table.clear(currentByEdge)
		end,
	}
end

return createDataPrefetchController
