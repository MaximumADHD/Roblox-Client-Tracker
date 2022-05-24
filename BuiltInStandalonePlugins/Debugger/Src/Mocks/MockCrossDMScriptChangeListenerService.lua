local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Cryo = require(main.Packages.Cryo)
local Signal = Framework.Util.Signal

local MockCrossDMScriptChangeListenerService = {}
MockCrossDMScriptChangeListenerService.__index = MockCrossDMScriptChangeListenerService

function MockCrossDMScriptChangeListenerService.new()
	local self = {}
	self.GuidNameChanged = Signal.new()
	self.GuidLineContentsChanged = Signal.new()
	setmetatable(self, MockCrossDMScriptChangeListenerService)
	self.watchingScripts = {}
	return self
end

function MockCrossDMScriptChangeListenerService:StartWatchingScriptLine(
	guid: string,
	connectionId: number,
	lineNumber: number
)
	self.watchingScripts[guid] = Cryo.Dictionary.join(self.watchingScripts[guid] or {}, {
		[lineNumber] = true,
	})
end

function MockCrossDMScriptChangeListenerService:IsWatchingScriptLine(guid: string, lineNumber: number)
	return self.watchingScripts[guid] and self.watchingScripts[guid][lineNumber]
end

return MockCrossDMScriptChangeListenerService
