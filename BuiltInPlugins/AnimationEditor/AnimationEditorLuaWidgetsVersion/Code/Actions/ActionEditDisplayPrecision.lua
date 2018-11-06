-- singleton (can't be undone/redone)

local EditDisplayPrecision = {}

function EditDisplayPrecision:execute(Paths, numDecimalPlacesToDisplay)
	Paths.DataModelSession:setDisplayPrecision(numDecimalPlacesToDisplay)
end

return EditDisplayPrecision
