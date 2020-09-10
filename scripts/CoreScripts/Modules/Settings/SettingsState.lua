local CorePackages = game:GetService("CorePackages")
local Settings = script.Parent

local SettingsReducer = require(Settings.Reducers.SettingsReducer)
local Rodux = require(CorePackages.Rodux)
local Store = Rodux.Store

local SettingsState = {}

function SettingsState:Destruct()
	self.store:destruct()
end

SettingsState.store = Store.new(SettingsReducer, nil, {Rodux.thunkMiddleware})

return SettingsState
