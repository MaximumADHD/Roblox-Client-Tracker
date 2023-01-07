--!nonstrict
--!nolint LocalShadow

local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local Rodux = dependencies.Rodux

local mockStore = function(state, reducer)
	local reducer = reducer or function(state)
		return state
	end
	return Rodux.Store.new(reducer, state or {}, { Rodux.thunkMiddleware })
end

return mockStore
