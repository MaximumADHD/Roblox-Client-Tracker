--[[
	This is a handy trick to allow us to reference refs before we've actually
	rendered anything, and without duplicating rendering logic!
]]
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

-- Returns a table that dynamically instantiates refs whenever a new key is
-- accessed; helpful for building dynamic lists of elements
local function createRefCache()
	local refCache = {}

	setmetatable(refCache, {
		__index = function(_, key)
			local newRef = Roact.createRef()
			refCache[key] = newRef

			return newRef
		end,
		__tostring = function(self)
			local result = "{"
			for key, ref in pairs(self) do
				result = ("%s\n\t%s -> %s"):format(result, tostring(key), tostring(ref))
			end
			return result .. "\n}"
		end
	})

	return refCache
end

return createRefCache