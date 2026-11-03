local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local ReachedThreshold = require(Src.Core.ViewportBehavior.ReachedThreshold)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)

export type Options = {
	startReachedThreshold: ReachedThreshold.ReachedThreshold?,
	endReachedThreshold: ReachedThreshold.ReachedThreshold?,
	autoScrollThreshold: ReachedThreshold.ReachedThreshold?,
}

export type Props = {
	initialScrollAlignment: ScrollAlignment.ScrollAlignment,
	contentAlignment: ScrollAlignment.ScrollAlignment,
	autoScrollOnChange: AutoScrollPolicy.AutoScrollPolicy,
	autoScrollThreshold: ReachedThreshold.ReachedThreshold,
	preserveScrollPositionOnChange: boolean,
	startReachedThreshold: ReachedThreshold.ReachedThreshold,
	endReachedThreshold: ReachedThreshold.ReachedThreshold,
}

local ChatPreset = {}

function ChatPreset.create(options: Options?): Props
	local startReachedThreshold = if options == nil then 0 else options.startReachedThreshold or 0
	local endReachedThreshold = if options == nil then 1 else options.endReachedThreshold or 1
	ReachedThreshold.validate(startReachedThreshold, "ChatPreset: startReachedThreshold")
	local autoScrollThreshold = if options == nil then 1 else options.autoScrollThreshold or 1
	ReachedThreshold.validate(endReachedThreshold, "ChatPreset: endReachedThreshold")
	ReachedThreshold.validate(autoScrollThreshold, "ChatPreset: autoScrollThreshold")
	return table.freeze({
		initialScrollAlignment = ScrollAlignment.End,
		contentAlignment = ScrollAlignment.End,
		autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
		autoScrollThreshold = autoScrollThreshold,
		preserveScrollPositionOnChange = true,
		startReachedThreshold = startReachedThreshold,
		endReachedThreshold = endReachedThreshold,
	})
end

return table.freeze(ChatPreset)
