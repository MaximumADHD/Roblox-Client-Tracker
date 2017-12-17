local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AvatarReducer = require(Modules.LuaApp.Reducers.AvatarEditor.Avatar)
local Store = require(Modules.Common.Rodux).Store
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local ActionReporter = require(Modules.LuaApp.Legacy.AvatarEditor.ActionReporter)

local AppState = {}

function AppState:Init()
	if Flags:GetFlag("AvatarEditorAnalytics2") then
		self.Store = ActionReporter(Store.new(AvatarReducer))
	else
		self.Store = Store.new(AvatarReducer)
	end
end

function AppState:Destruct()
	self.Store:Destruct()
end

AppState:Init()

return AppState
