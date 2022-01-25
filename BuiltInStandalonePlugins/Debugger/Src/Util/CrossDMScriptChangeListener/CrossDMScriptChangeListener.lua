local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local SetFilenameForGuid = require(Actions.Common.SetFilenameForGuid)

local CrossDMScriptChangeListener = {}
CrossDMScriptChangeListener.__index = CrossDMScriptChangeListener

local function setUpConnections(scriptChangeServiceListener, scriptChangeService)
	local ScriptChangeService = scriptChangeService or game:GetService("CrossDMScriptChangeListener")
	scriptChangeServiceListener._guidNameChangedConnection = ScriptChangeService.GuidNameChanged:Connect(function(guid : string, fileName : string)
		scriptChangeServiceListener.store:dispatch(SetFilenameForGuid(guid, fileName))
	end)
end

function CrossDMScriptChangeListener:destroy()
	if self._guidNameChangedConnection then
		self._guidNameChangedConnection:Disconnect()
		self._guidNameChangedConnection = nil
	end
end

function CrossDMScriptChangeListener.new(store, scriptChangeService)
	local self = {store = store}
	setUpConnections(self, scriptChangeService)
	setmetatable(self, CrossDMScriptChangeListener)
	return self
end

return CrossDMScriptChangeListener
