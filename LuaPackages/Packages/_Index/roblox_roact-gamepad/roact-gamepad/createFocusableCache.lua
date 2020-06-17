local asFocusable = require(script.Parent.asFocusable)

local function checkHostProperties(component)
	local instance = Instance.new(component)

	assert(instance:IsA("GuiObject"))
end

local function isValidFocusable(component)
	local componentType = typeof(component)
	if componentType == "string" then
		local hasHostProps, _ = pcall(checkHostProperties, component)
		return hasHostProps
	elseif componentType == "function" or componentType == "table" then
		-- Not much else we can do here right now
		return true
	end

	-- All other types are invalid components anyways
	return false
end

-- Returns a table that dynamically instantiates Focusable components whenever a
-- new key is accessed. This means that any valid component can be Focusable
local function createFocusableCache()
	local focusableComponentCache = {}

	setmetatable(focusableComponentCache, {
		__index = function(_, key)
			if not isValidFocusable(key) then
				error("Component " .. tostring(key) .. " (" .. typeof(key) .. ") is not a valid focusable component", 2)
			end

			local newComponent = asFocusable(key)
			focusableComponentCache[key] = newComponent

			return newComponent
		end,
		__tostring = function(self)
			local result = "{"
			for key, componentClass in pairs(self) do
				result = ("%s\n\t%s -> %s"):format(result, tostring(key), tostring(componentClass))
			end
			return result .. "\n}"
		end
	})

	return focusableComponentCache
end

return createFocusableCache