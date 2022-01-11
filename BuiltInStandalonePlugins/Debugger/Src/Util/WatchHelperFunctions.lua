local Src = script.Parent.Parent
local Constants = require(Src.Util.Constants)

local module = {}

module.getDebuggerVariableFromSplitPath = function(path, debuggerConnection)
	local splitPath = {}
	for debuggerVarIdString in string.gmatch(path, "([^"..Constants.SeparationToken.."]+)") do
		table.insert(splitPath, tonumber(debuggerVarIdString))
	end

	local lastId = tonumber(splitPath[table.getn(splitPath)])
	if not lastId then
		return nil
	end

	return debuggerConnection:GetVariableById(lastId)
end

return module
