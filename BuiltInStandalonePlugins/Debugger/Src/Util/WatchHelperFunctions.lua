local Src = script.Parent.Parent
local Constants = require(Src.Util.Constants)

local module = {}

module.getDebuggerVariableFromSplitPath = function(path, debuggerConnection)
	local splitPath = {}
	for debuggerVarIdString in string.gmatch(path, "([^" .. Constants.SeparationToken .. "]+)") do
		table.insert(splitPath, tonumber(debuggerVarIdString))
	end

	local lastId = tonumber(splitPath[table.getn(splitPath)])
	if not lastId then
		return nil
	end

	return debuggerConnection:GetVariableById(lastId)
end

module.textMatchRow = function(filterText, rowData)
	local lowercaseFilter = filterText:lower()
	if rowData.nameColumn ~= nil then
		if string.find(rowData.nameColumn:lower(), lowercaseFilter) ~= nil then
			return true
		end
	end

	if rowData.expressionColumn ~= nil then
		if string.find(rowData.expressionColumn:lower(), lowercaseFilter) ~= nil then
			return true
		end
	end

	if string.find(rowData.scopeColumn:lower(), lowercaseFilter) ~= nil then
		return true
	end

	if string.find(rowData.valueColumn:lower(), lowercaseFilter) ~= nil then
		return true
	end

	if string.find(rowData.dataTypeColumn:lower(), lowercaseFilter) ~= nil then
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

module.sortTableByColumnAndOrder = function(mainTable, column, order, tableColumns, skipLastRow)
	local currentOrder = order or Enum.SortDirection.Descending
	local currentColumn = tableColumns[column] and column or 1
	local sortValue = (tableColumns[column] and tableColumns[column]) or tableColumns[currentColumn]
	local basedOnOrder = function(a, b, mainOrder)
		local sort1 = a
		local sort2 = b

		if type(sort1) == "boolean" then
			-- booleans have no > or < operator
			sort1 = sort1 and 1 or 0
			sort2 = sort2 and 1 or 0
		elseif type(sort1) == "string" then
			-- sort regardless of case
			local sort1lower = string.lower(sort1)
			local sort2lower = string.lower(sort2)
			if sort1lower ~= sort2lower then
				sort1 = sort1lower
				sort2 = sort2lower
			end
		end

		if mainOrder == Enum.SortDirection.Ascending then
			return sort1 > sort2
		else
			return sort2 > sort1
		end
	end

	local sortComp = function(a, b)
		-- if the values of the 2 objects are identical, then sort by one that isn't
		if a[sortValue] == b[sortValue] then
			for k, v in pairs(tableColumns) do
				local currentSortValue = v
				if a[currentSortValue] ~= b[currentSortValue] then
					return basedOnOrder(a[currentSortValue], b[currentSortValue], Enum.SortDirection.Descending)
				end
			end
			return false
		end

		return basedOnOrder(a[sortValue], b[sortValue], currentOrder)
	end

	-- we skip the last row of sorting for the Expressions table (so that the empty row isn't sorted)
	local lastRow = nil
	if skipLastRow and #mainTable > 0 then
		lastRow = table.remove(mainTable)
	end

	table.sort(mainTable, sortComp)

	if skipLastRow and lastRow then
		table.insert(mainTable, lastRow)
	end
end

return module
