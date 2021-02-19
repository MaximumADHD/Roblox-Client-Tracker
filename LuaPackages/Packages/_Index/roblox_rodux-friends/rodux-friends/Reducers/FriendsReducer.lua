local byUserId = require(script.Parent.Friends.byUserId)
local count = require(script.Parent.Friends.count)

local DEFAULT_STATE = {}

return function(options)
	return function(state, action)
		local newState = state or DEFAULT_STATE

		local byUserIdReducer = byUserId(options)
		local countReducer = count(options)

		return {
			byUserId = byUserIdReducer(newState.byUserId, action),
			-- count needs both byUserId and previous count data
			count = countReducer(state, action)
		}
	end
end
