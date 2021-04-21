-- TODO mlangen: Remove with FFlag::PivotExclusiveSelection

--[[
	Always return true, the Pivot Editor can only select one object at a time.
]]
return function()
	return true
end