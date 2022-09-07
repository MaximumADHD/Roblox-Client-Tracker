--[[
	A helper function for creating a dependency array for React hooks.

	This function accepts dependencies as var args rather than an array,
	which has a couple advantages:
	- It is safe to pass in `nil` dependencies
	- There is no need to cast dependencies to `any` to avoid
	  Luau type errors when the types differ

	Usage example:

	useEffect(function() ... end, dependencyArray(arg1, arg2, arg3))
]]

local CorePackages = game:GetService("CorePackages")
local Symbol = require(CorePackages.Symbol)

local NilDependency = Symbol.named("NilDependency")

local function dependencyArray(...)
	local depsArray = {}
	local numDeps = select("#", ...)
	for i = 1, numDeps do
		local dep = select(i, ...)
		if dep == nil then
			dep = NilDependency
		end
		depsArray[i] = dep
	end
	return depsArray
end

return dependencyArray
