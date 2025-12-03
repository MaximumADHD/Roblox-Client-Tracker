--!nonstrict
return function (tableA, tableB)
	local maxTable = {}
	for ind, valA in pairs(tableA) do
		if tableB[ind] then
			maxTable[ind] = valA < tableB[ind] and tableB[ind] or valA
		else
			error("tables did not have matching indices")
			return
		end
	end
	return maxTable
end