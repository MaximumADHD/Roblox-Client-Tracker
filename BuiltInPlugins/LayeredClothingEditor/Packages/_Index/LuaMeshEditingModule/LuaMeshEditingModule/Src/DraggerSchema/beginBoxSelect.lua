
--[[
	A box select is starting. Return a list of selectables which are currently
	candidates for inclusion during that box select, and the locations of their
	respective centers.
]]
return function(draggerContext)
	return draggerContext.VertexToolBase:getSelectables()
end