--[[
	Copies a table and it's metatables.
	Identical to DevFramework's deepCopy.
--]]
local function deepCopy(t)
	if type(t) ~= "table" or type(t.render) == "function" then
		return t
	end
	local meta = getmetatable(t)
	local target = {}
	for k, v in pairs(t) do
		target[k] = deepCopy(v)
	end
	setmetatable(target, meta)
	return target
end

return deepCopy