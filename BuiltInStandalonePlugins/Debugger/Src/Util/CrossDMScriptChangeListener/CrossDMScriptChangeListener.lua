local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local SetFilenameForGuid = require(Actions.Common.SetFilenameForGuid)
local SetScriptSourceLine = require(Actions.Common.SetScriptSourceLine)

local CrossDMScriptChangeListener = {}
CrossDMScriptChangeListener.__index = CrossDMScriptChangeListener

local function setUpConnections(scriptChangeServiceListener, scriptChangeService)
	local ScriptChangeService = scriptChangeService or game:GetService("CrossDMScriptChangeListener")
	scriptChangeServiceListener._guidNameChangedConnection = ScriptChangeService.GuidNameChanged:Connect(function(guid : string, fileName : string)
		scriptChangeServiceListener.store:dispatch(SetFilenameForGuid(guid, fileName))
	end)
	scriptChangeServiceListener._guidLineChangedConnection = ScriptChangeService.GuidLineContentsChanged:Connect(function(guid : string, lineNumber : number, contents : string)
		scriptChangeServiceListener.store:dispatch(SetScriptSourceLine(guid, lineNumber, contents))
	end)
end

function CrossDMScriptChangeListener:destroy()
	if self._guidNameChangedConnection then
		self._guidNameChangedConnection:Disconnect()
		self._guidNameChangedConnection = nil
	end
	if self._guidLineChangedConnection then
		self._guidLineChangedConnection:Disconnect()
		self._guidLineChangedConnection = nil
	end
end

function CrossDMScriptChangeListener.new(store, scriptChangeService)
	local self = {store = store}
	setUpConnections(self, scriptChangeService)
	setmetatable(self, CrossDMScriptChangeListener)
	return self
end

return CrossDMScriptChangeListener
