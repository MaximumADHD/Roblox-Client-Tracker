return function (tableA, tableB)
	local minTable = {}
	for ind, valA in pairs(tableA) do
		if tableB[ind] then
			minTable[ind] = valA < tableB[ind] and valA or tableB[ind]
		else
			error("tables did not have matching indices")
			return
		end
	end
	return minTable
end