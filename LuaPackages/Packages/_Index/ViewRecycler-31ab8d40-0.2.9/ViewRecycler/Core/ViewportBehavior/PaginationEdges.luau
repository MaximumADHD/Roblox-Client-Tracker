local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)

export type Input = {
	scrollOffset: number,
	viewportLength: number,
	contentLength: number,
	startThreshold: number,
	atEnd: boolean,
	canReachStart: boolean,
	canReachEnd: boolean,
	rearmAfterStructureChange: boolean?,
}

export type Result = {
	startReached: boolean,
	endReached: boolean,
}

export type PaginationEdges = {
	check: (input: Input) -> Result,
}

local PaginationEdges = {}

function PaginationEdges.hasStructuralChange(changeBatch: Types.DataSourceChangeBatch): boolean
	for _, change in changeBatch.changes do
		if change.type ~= DataSourceChangeType.Update then
			return true
		end
	end
	return false
end

function PaginationEdges.create(): PaginationEdges
	local startArmed = true
	local endArmed = true

	return {
		check = function(input)
			if input.rearmAfterStructureChange then
				startArmed = true
				endArmed = true
			end

			local atStart = input.scrollOffset <= input.startThreshold
			local atEnd = input.atEnd
			local startReached = atStart and startArmed and input.canReachStart
			local endReached = atEnd and endArmed and input.canReachEnd

			if startReached then
				startArmed = false
			elseif not atStart then
				startArmed = true
			end
			if endReached then
				endArmed = false
			elseif not atEnd then
				endArmed = true
			end

			return {
				startReached = startReached,
				endReached = endReached,
			}
		end,
	}
end

return PaginationEdges
