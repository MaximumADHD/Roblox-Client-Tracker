--!strict
export type UsageGraph = { [MemberKey]: { MemberReference } }
type MemberKey = string
type MemberReference = {
	dmPath: string,
	lineNumber: number,
}

local UsageGraphSentinel = newproxy(true)
getmetatable(UsageGraphSentinel).__tostring = function()
	return "UsageGraphSentinel"
end

local function getUsageGraph(library)
	return table.clone(library[UsageGraphSentinel])
end

return {
	UsageGraphKey = UsageGraphSentinel,
	getUsageGraph = getUsageGraph,
}
