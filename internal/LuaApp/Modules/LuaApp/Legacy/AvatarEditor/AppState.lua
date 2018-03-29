local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AvatarReducer = require(Modules.LuaApp.Reducers.AvatarEditor.Avatar)
local Store = require(Modules.Common.Rodux).Store
local ActionReporter = require(Modules.LuaApp.Legacy.AvatarEditor.ActionReporter)

local AppState = {}

function AppState:Init()
	self.Store = ActionReporter(Store.new(AvatarReducer))
end

function AppState:Destruct()
	self.Store:Destruct()
end

AppState:Init()

return AppState
