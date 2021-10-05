local main = script.Parent.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local MockDebuggerConnection = {}
MockDebuggerConnection.__index = MockDebuggerConnection

function MockDebuggerConnection.new(mockID)
	local self = {}
	self.Id = mockID
	self.Paused = Signal.new()
	self.Resumed = Signal.new()
	setmetatable(self, MockDebuggerConnection)
	return self
end

return MockDebuggerConnection
