local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local MockScriptChangeService = {}
MockScriptChangeService.__index = MockScriptChangeService

function MockScriptChangeService.new() 
	local self = {}
	self.ScriptFullNameChanged = Signal.new()
	setmetatable(self, MockScriptChangeService)
	return self
end

return MockScriptChangeService
