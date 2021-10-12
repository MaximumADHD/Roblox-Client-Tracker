local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local MockDebuggerConnectionManager = {}
MockDebuggerConnectionManager.__index = MockDebuggerConnectionManager

function MockDebuggerConnectionManager.new()
	local self = {}
	self.ConnectionStarted = Signal.new()
	self.ConnectionEnded = Signal.new()
	self.FocusChanged = Signal.new()
	setmetatable(self, MockDebuggerConnectionManager)
	return self
end

return MockDebuggerConnectionManager
