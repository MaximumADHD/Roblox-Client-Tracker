local Modules = script.Parent.Parent

local AppReducer = require(Modules.Mobile.AppReducer)
local Store = require(Modules.Common.Rodux).Store
local NavigationEventReceiver = require(Modules.Mobile.NavigationEventReceiver)

local AppState = {}

function AppState.new()
	local state = {}

	state.store = Store.new(AppReducer)

	state.NavigationEventReceiver = NavigationEventReceiver:init(state)

	return state
end

function AppState:Destruct()
	self.store:Destruct()
end

return AppState

