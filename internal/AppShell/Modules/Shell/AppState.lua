-- for now AppState will be singleton so we can more easily migrate to Rodux
-- but if we also migrate to Roact, this will need to change

local ShellModules = script.Parent
local Modules = ShellModules.Parent
local Common = Modules.Common

local AppShellReducer = require(ShellModules.Reducers.AppShellReducer)
local Store = require(Common.Rodux).Store

local AppState = {}

function AppState:Init()
    self.store = Store.new(AppShellReducer)
end

function AppState:Destruct()
    self.store:Destruct()
end

AppState:Init()

return AppState
