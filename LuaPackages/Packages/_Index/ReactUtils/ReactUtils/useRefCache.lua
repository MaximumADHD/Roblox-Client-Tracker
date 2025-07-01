local ReactUtils = script:FindFirstAncestor("ReactUtils")
local Packages = ReactUtils.Parent
local React = require(Packages.React)

-- Returns a ref cache that dynamically instantiates refs whenever a new key is
-- accessed; helpful for building dynamic lists of elements
local function useRefCache(): any
	local ref = React.useRef(nil :: any)

	if ref.current == nil then
		local refCache = {}

		setmetatable(refCache, {
			__index = function(_, key)
				local newRef = React.createRef()
				refCache[key] = newRef
				return newRef
			end,
			__tostring = function(self)
				local result = "{"

				for key, refValue in pairs(self) do
					result = ("%s\n\t%s -> %s"):format(result, tostring(key), tostring(refValue))
				end

				return result .. "\n}"
			end,
		})

		ref.current = refCache
	end

	return ref.current
end

return useRefCache
