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

module.textMatchRow = function(filterText, rowData)
	if (rowData.nameColumn ~= nil) then
		if (string.find(rowData.nameColumn, filterText) ~= nil) then
			return true
		end
	end
	
	if (rowData.expressionColumn ~= nil) then
		if (string.find(rowData.expressionColumn, filterText) ~= nil) then
			return true
		end
	end

	if (string.find(rowData.scopeColumn, filterText) ~= nil) then
		return true
	end

	if (string.find(rowData.valueColumn, filterText) ~= nil) then
		return true
	end

	if (string.find(rowData.dataTypeColumn, filterText) ~= nil) then
		return true
	end

	return false
end

module.isScopeFiltered = function(enabledScopes, rowData)
	assert(rowData ~= nil, ("isScopeFiltered got a nil node for path %s"):format(tostring(rowData)))

	for _, scope in ipairs(enabledScopes) do
		if string.find(rowData.scopeColumn, scope) then
			return false
		end
	end
	return true
end

return module
