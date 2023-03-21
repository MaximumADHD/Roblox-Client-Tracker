-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/objects.ts

local function isNonNullObject(obj: any): boolean
	return obj ~= nil and type(obj) == "table"
end

return {
	isNonNullObject = isNonNullObject,
}
