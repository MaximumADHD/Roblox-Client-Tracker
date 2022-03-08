local MockDebuggerLuaResponse = {}
MockDebuggerLuaResponse.__index = MockDebuggerLuaResponse

function MockDebuggerLuaResponse.new(arg, status : string)
	local self = {}
	self.arg = arg
	self.Status = status
	setmetatable(self, MockDebuggerLuaResponse)
	return self
end

function MockDebuggerLuaResponse:GetArg()
	return self.arg
end

return MockDebuggerLuaResponse
