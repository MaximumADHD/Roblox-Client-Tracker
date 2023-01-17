local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Rodux = require(Packages.Rodux)

local mockStore = function(state, reducer: any?)
	local configuredReducer = reducer or function(state)
		return state
	end

	return Rodux.Store.new(configuredReducer, state or {}, { Rodux.thunkMiddleware })
end

return mockStore
