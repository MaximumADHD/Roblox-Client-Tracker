local module = {}

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

module.sortTableByColumnAndOrder = function(mainTable, column, order, tableColumns, skipLastRow, defaultSortingValues : {[number] : string}?)
	local currentOrder = order or Enum.SortDirection.Descending
	local sortValue
	local unsorted = (column == nil and order == nil)
	if unsorted and defaultSortingValues and #defaultSortingValues > 0 then
		sortValue = defaultSortingValues[1]
	else
		local currentColumn = tableColumns[column] and column or 1
		sortValue = (tableColumns[column] and tableColumns[column]) or tableColumns[currentColumn]
	end
	
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

	local sortComp = function(left, right)
		-- if the values of the 2 objects are identical, then sort by one that isn't
		if left[sortValue] == right[sortValue] then			
			local sortingValues = if defaultSortingValues then defaultSortingValues else tableColumns
			
			-- if there is a sort value in the list where the values aren't equal, use it to sort
			for _, v in ipairs(sortingValues) do
				local currentSortValue = v
				if left[currentSortValue] ~= right[currentSortValue] then
					return basedOnOrder(left[currentSortValue], right[currentSortValue], Enum.SortDirection.Descending)
				end
			end
			
			return false
		end

		return basedOnOrder(left[sortValue], right[sortValue], currentOrder)
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
