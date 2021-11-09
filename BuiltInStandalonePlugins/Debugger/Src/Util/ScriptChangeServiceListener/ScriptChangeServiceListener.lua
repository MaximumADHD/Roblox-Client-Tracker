local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local ChangeFilenameForGuid = require(Actions.Common.ChangeFilenameForGuid)

local ScriptChangeServiceListener = {}
ScriptChangeServiceListener.__index = ScriptChangeServiceListener

function ScriptChangeServiceListener:onScriptFullNameChanged(luaSourceContainer)
	local scriptRefGuid = luaSourceContainer.ScriptGuid
	local fileName = luaSourceContainer:GetFullName()
	self.store:dispatch(ChangeFilenameForGuid(scriptRefGuid, fileName))
end

local function setUpConnections(scriptChangeServiceListener, scriptChangeService)
	local ScriptChangeService = scriptChangeService or game:GetService("ScriptChangeService")
	scriptChangeServiceListener._scriptFullNameChangedConnection = ScriptChangeService.ScriptFullNameChanged:Connect(function(luaSourceContainer) 
		scriptChangeServiceListener:onScriptFullNameChanged(luaSourceContainer) 
	end)
end

function ScriptChangeServiceListener:destroy()
	if self._scriptFullNameChangedConnection then
		self._scriptFullNameChangedConnection:Disconnect()
		self._scriptFullNameChangedConnection = nil
	end
end

function ScriptChangeServiceListener.new(store, scriptChangeService)
	local self = {store = store}
	setUpConnections(self, scriptChangeService)
	setmetatable(self, ScriptChangeServiceListener)
	return self
end

return ScriptChangeServiceListener
