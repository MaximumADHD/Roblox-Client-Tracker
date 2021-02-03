--[[
	function isExclusiveSelectable

	Return whether a given selectable should force the selection to contain only
	itself when it becomes selected.
]]
return function(draggerContext, selectable, item)
	-- Returning false always will allow the default multi-select behavior.
	return false
end