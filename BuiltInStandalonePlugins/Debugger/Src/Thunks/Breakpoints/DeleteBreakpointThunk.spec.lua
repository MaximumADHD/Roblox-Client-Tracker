local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local Mocks = Plugin.Src.Mocks
local MockBreakpointManager = require(Mocks.MockBreakpointManager)

local DeleteBreakpointThunk = require(script.Parent.DeleteBreakpointThunk)

local function getSize(dict)
	if not dict then
		return nil
	end
	local count = 0
	for _, _ in pairs(dict) do
		count = count + 1
	end
	return count
end

return function()
	it("should delete breakpoints from store", function()			
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local currentBreakpointManager = MockBreakpointManager.new()

		store:dispatch(DeleteBreakpointThunk(60, currentBreakpointManager))
		state = store:getState()
		
		expect(state.Breakpoint.BreakpointIdsInDebuggerConnection).to.be.ok()
		expect(state.Breakpoint.BreakpointInfo).to.be.ok()
		expect(getSize(state.Breakpoint.BreakpointInfo)).to.equal(3)
		expect(getSize(state.Breakpoint.BreakpointIdsInDebuggerConnection)).to.equal(1)
		expect(getSize(state.Breakpoint.BreakpointIdsInDebuggerConnection[123])).to.equal(3)
		expect(currentBreakpointManager.deletedBreakpoints[60]).to.equal(true)
	end)
end
