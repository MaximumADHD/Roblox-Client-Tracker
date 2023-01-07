--!nolint LocalShadow
local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local Rodux = dependencies.Rodux

local mockStore = function(state, reducer: any?)
	local reducer = reducer or function(state)
		return state
	end
	return Rodux.Store.new(reducer, state or {}, { Rodux.thunkMiddleware })
end

return mockStore
