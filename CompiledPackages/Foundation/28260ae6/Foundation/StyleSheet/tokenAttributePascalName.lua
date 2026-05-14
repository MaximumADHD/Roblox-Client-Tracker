local KeepPrefix = require(script.Parent.colorScopeKeepPrefix)

local function kebabToPascal(str: string): string
	local result = str:gsub("^%-?(.)", function(c)
		return c:upper()
	end)
	result = result:gsub("%-(.)", function(c)
		return c:upper()
	end)
	return result
end

-- Strip the redundant scope prefix from KeepPrefix scopes so the attribute
-- name mirrors the token path (the contract `getOverrideAttributes` relies on).
local function tokenAttributePascalName(scopeName: string, shortName: string): string
	local pascalName = kebabToPascal(shortName)
	if KeepPrefix[scopeName] and string.sub(pascalName, 1, #scopeName) == scopeName then
		return string.sub(pascalName, #scopeName + 1)
	end
	return pascalName
end

return tokenAttributePascalName
