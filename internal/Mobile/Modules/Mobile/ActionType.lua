local ActionTypeNames = {
	"OpenApp",
}

local ActionType = {}
for i = 1, #ActionTypeNames do
	ActionType[ActionTypeNames[i]] = ActionTypeNames[i]
end

setmetatable(ActionType, {
	__index = function(self, key)
		error(("Invalid ActionType %q"):format(tostring(key)))
	end
})

return ActionType
