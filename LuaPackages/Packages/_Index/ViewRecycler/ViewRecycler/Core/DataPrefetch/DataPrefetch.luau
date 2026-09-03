local Src = script:FindFirstAncestor("ViewRecycler")

local Types = require(Src.Core.Types)

local Edge = table.freeze({
	Start = "start" :: "start",
	End = "end" :: "end",
})

export type Edge = typeof(Edge.Start) | typeof(Edge.End)

export type Options = {
	startItems: number?,
	endItems: number?,
}

export type ResolvedOptions = {
	startItems: number,
	endItems: number,
}

export type Request = {
	edge: Edge,
	range: Types.IndexRange,
	isCurrent: () -> boolean,
}

local DataPrefetch = {
	Edge = Edge,
}

function DataPrefetch.resolve(options: Options?): ResolvedOptions
	local startItems = if options == nil then 0 else options.startItems or 0
	local endItems = if options == nil then 0 else options.endItems or 0
	assert(startItems >= 0 and startItems % 1 == 0, "DataPrefetch: startItems must be a non-negative integer")
	assert(endItems >= 0 and endItems % 1 == 0, "DataPrefetch: endItems must be a non-negative integer")
	return {
		startItems = startItems,
		endItems = endItems,
	}
end

return table.freeze(DataPrefetch)
