local function verifySummaryFormat(summaryTable, expectedKeys)
	-- ensures the summaryTable is strictly in the form of {arg : number}
	if summaryTable == nil or typeof(summaryTable) ~= "table" then
		return false
	end

	local expectedKeySet = {}
	for _, k in expectedKeys do
		expectedKeySet[k] = true
	end

	for _, k in expectedKeys do
		if summaryTable[k] == nil or typeof(summaryTable[k]) ~= "number" then
			return false
		end
	end

	for k, _ in summaryTable do
		if not expectedKeySet[k] then
			return false
		end
	end

	return true
end

return verifySummaryFormat
