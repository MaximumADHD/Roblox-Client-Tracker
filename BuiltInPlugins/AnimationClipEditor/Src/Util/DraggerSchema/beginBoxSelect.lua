--[[
	A box select is starting. Return a list of selectables which are currently
	candidates for inclusion during that box select, and the locations of their
	respective centers.
]]
return function(draggerContext)
	local dragCandidates = {}

	--[[
	... Find the candidates somehow and then add them to the table in this
		format, with a Center and Selectable field.
	table.insert(dragCandidates, {
		Center = ...,
		Selectable = ...,
	})
	]]

	return dragCandidates
end
