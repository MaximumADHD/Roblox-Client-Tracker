local Modules = script.Parent.Parent

local ActionType = require(Modules.ActionType)

return function(visible)
	return function(store)
		spawn(function()
			store:Dispatch({
				type = ActionType.SetTabBarVisible,
				value = visible,
			})
		end)
	end
end