-- The engine's ValidatePropertiesSensible returns only the names of the failing properties, never
-- which cap fired, so a forced cap is surfaced by looking the name up in the same per-class
-- restriction table PropertiesSensible passed into that call.
local function describeProblematicProperties(
	problematicProperties: { string },
	classRestrictions: { [string]: number }?
): string
	local described: { string } = {}
	for _, propertyName in problematicProperties do
		local forcedCap = if classRestrictions then classRestrictions[propertyName] else nil
		if forcedCap == 0 then
			table.insert(described, `{propertyName} (must be empty)`)
		elseif forcedCap ~= nil then
			table.insert(described, `{propertyName} (limit {forcedCap} bytes)`)
		else
			table.insert(described, propertyName)
		end
	end
	return table.concat(described, ", ")
end

return describeProblematicProperties
