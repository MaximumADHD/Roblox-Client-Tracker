-- upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/isObjectLike.js
--[[
 * Return true if `value` is object-like. A value is object-like if it's not
 * `null` and has a `typeof` result of "object".
 ]]
local function isObjectLike(value)
	return typeof(value) == "table"
end

return {
	isObjectLike = isObjectLike,
}
