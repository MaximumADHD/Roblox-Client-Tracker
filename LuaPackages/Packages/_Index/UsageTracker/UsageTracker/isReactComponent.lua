--!strict
local Packages = script:FindFirstAncestor("UsageTracker").Parent
local ReactIs = require(Packages.ReactIs)

local function isReactComponent(value)
	local ok, isValidElementType = pcall(ReactIs.isValidElementType, value)
	if ok and isValidElementType then
		if typeof(value) == "function" then
			-- filter by arity and name to guess at react function components
			local arity, isVariadic = debug.info(value, "a")
			local isHook = string.sub(debug.info(value, "n"), 1, 3) == "use"

			if arity == 1 and not isVariadic and not isHook then
				return true
			end
		elseif typeof(value) == "table" then
			return true
		end
	end
	return false
end

return isReactComponent
