local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local MockCrossDMScriptChangeListenerService = {}
MockCrossDMScriptChangeListenerService.__index = MockCrossDMScriptChangeListenerService

function MockCrossDMScriptChangeListenerService.new() 
	local self = {}
	self.GuidNameChanged = Signal.new()
	setmetatable(self, MockCrossDMScriptChangeListenerService)
	return self
end

function MockCrossDMScriptChangeListenerService:StartWatchingScript(guid : string, connectionId : number)
	return
end

return MockCrossDMScriptChangeListenerService
