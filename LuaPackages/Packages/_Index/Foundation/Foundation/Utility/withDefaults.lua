local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Cryo = require(Packages.Cryo)
local ReactIs = require(Packages.ReactIs)

local function isTableNotBinding(value)
	return type(value) == "table" and not ReactIs.isBinding(value)
end

local function deepJoin(a: any, b: any)
	local result = table.clone(a)
	for key, value in b do
		if isTableNotBinding(value) and isTableNotBinding(result[key]) then
			result[key] = deepJoin(result[key], value)
		else
			result[key] = value
		end
	end
	return result
end

local function withDefaults<P, D>(props: P, defaults: D)
	local propsDefaultsOnly = {}

	if type(props) == "table" and type(defaults) == "table" then
		for k, _ in defaults do
			propsDefaultsOnly[k] = props[k]
		end
	end

	local deepJoinDefaults: D = deepJoin(defaults, propsDefaultsOnly)

	return Cryo.Dictionary.union(props, deepJoinDefaults)
end

return withDefaults
