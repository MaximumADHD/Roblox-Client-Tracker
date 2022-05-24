local module = {}

module.fetchOldColumnSizes = function(oldColumnNumber, prevColumnFilter, defaultColumns, columnSizes)
	local oldColumnNameToSize = {}
	for i = 1, #defaultColumns do
		oldColumnNameToSize[defaultColumns[i]] = columnSizes[i]
	end

	for i = #defaultColumns + 1, oldColumnNumber do
		oldColumnNameToSize[prevColumnFilter[i - #defaultColumns]] = columnSizes[i]
	end

	return oldColumnNameToSize
end

module.fetchDeletedColumnsSize =
	function(numOfDefaultColumns, oldColumnNumber, PrevColumnFilter, oldColumnNameToSize, newColumnSet)
		local deletedColumnsSize = 0
		for i = numOfDefaultColumns + 1, oldColumnNumber do
			if newColumnSet[PrevColumnFilter[i - numOfDefaultColumns]] == nil then
				deletedColumnsSize = deletedColumnsSize
					+ oldColumnNameToSize[PrevColumnFilter[i - numOfDefaultColumns]].Scale
			end
		end
		return deletedColumnsSize
	end

module.updatedSizesAfterRemovingColumns =
	function(columnNumber, deletedColumnsSize, oldColumnNameToSize, defaultColumns, ColumnFilter)
		local updatedSizes = {}
		local remainingSpace = 1 - deletedColumnsSize
		for i = 1, columnNumber do
			local currentColumn = if defaultColumns[i] then defaultColumns[i] else ColumnFilter[i - #defaultColumns]
			local newColumnSize = UDim.new(oldColumnNameToSize[currentColumn].Scale / remainingSpace, 0)
			table.insert(updatedSizes, newColumnSize)
		end
		return updatedSizes
	end

module.updatedSizesAfterAddingColumns =
	function(columnNumber, oldColumnNumber, oldColumnNameToSize, ColumnFilter, defaultColumns)
		local updatedSizes = {}
		local numOfColumnsAdded = columnNumber - oldColumnNumber
		local addedColumnSize = UDim.new(1 / columnNumber, 0)
		for i = 1, columnNumber do
			local currentColumn = if defaultColumns[i] then defaultColumns[i] else ColumnFilter[i - #defaultColumns]
			if oldColumnNameToSize[currentColumn] == nil then
				-- Set new column to default size
				table.insert(updatedSizes, addedColumnSize)
			else
				-- With the remaining space (width - space for added columns), scale the column to the proportion it was on the previous resize.
				local spaceForAddedColumns = numOfColumnsAdded * addedColumnSize.Scale
				local newScale = oldColumnNameToSize[currentColumn].Scale * (1 - spaceForAddedColumns)
				local newColumnSize = UDim.new(newScale, 0)
				table.insert(updatedSizes, newColumnSize)
			end
		end
		return updatedSizes
	end

return module
