local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)

export type Options = {
	startReachedThreshold: number?,
	endReachedThreshold: number?,
}

export type Props = {
	initialScrollAlignment: ScrollAlignment.ScrollAlignment,
	contentAlignment: ScrollAlignment.ScrollAlignment,
	autoScrollOnChange: AutoScrollPolicy.AutoScrollPolicy,
	preserveScrollPositionOnChange: boolean,
	startReachedThreshold: number,
	endReachedThreshold: number,
}

local ChatPreset = {}

function ChatPreset.create(options: Options?): Props
	local startReachedThreshold = if options == nil then 0 else options.startReachedThreshold or 0
	local endReachedThreshold = if options == nil then 1 else options.endReachedThreshold or 1
	assert(
		startReachedThreshold >= 0 and startReachedThreshold < math.huge,
		"ChatPreset: startReachedThreshold must be a finite non-negative number"
	)
	assert(
		endReachedThreshold >= 0 and endReachedThreshold < math.huge,
		"ChatPreset: endReachedThreshold must be a finite non-negative number"
	)
	return table.freeze({
		initialScrollAlignment = ScrollAlignment.End,
		contentAlignment = ScrollAlignment.End,
		autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
		preserveScrollPositionOnChange = true,
		startReachedThreshold = startReachedThreshold,
		endReachedThreshold = endReachedThreshold,
	})
end

return table.freeze(ChatPreset)
