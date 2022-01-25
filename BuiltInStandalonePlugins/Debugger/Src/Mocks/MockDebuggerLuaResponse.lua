local MockDebuggerLuaResponse = {}
MockDebuggerLuaResponse.__index = MockDebuggerLuaResponse

function MockDebuggerLuaResponse.new(arg)
	local self = {}
	self.arg = arg
	setmetatable(self, MockDebuggerLuaResponse)
	return self
end

function MockDebuggerLuaResponse:GetArg()
	return self.arg
end

return MockDebuggerLuaResponse
