local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local Mocks = Plugin.Src.Mocks
local MockBreakpointManager = require(Mocks.MockBreakpointManager)

local ToggleAllBreakpoints = require(script.Parent.ToggleAllBreakpoints)

return function()
	it("should set all BP to same state", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local currentBreakpointManager = MockBreakpointManager.new()

		store:dispatch(ToggleAllBreakpoints(currentBreakpointManager))
		state = store:getState()
		
		local previousValue = nil
		for id, info in pairs(state.Breakpoint.BreakpointInfo) do
			if previousValue ~= nil then
				expect(previousValue).to.equal(info.isEnabled)
			end
			previousValue = info.isEnabled
		end
	end)
end
