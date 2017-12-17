-- enum style table for referencing actions

local ActionType = {
	SetUnder13Status = "SetUnder13Status",
}

setmetatable(ActionType, {
	__index = function(self, key)
		error(("Invalid ActionType %q"):format(tostring(key)))
	end
})

return ActionType
