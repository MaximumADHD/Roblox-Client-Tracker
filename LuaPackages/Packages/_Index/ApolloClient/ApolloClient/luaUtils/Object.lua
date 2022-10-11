local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)

-- ROBLOX TODO: include this in LuauPolyfill
local Object = LuauPolyfill.Object.assign({}, LuauPolyfill.Object, {
	getPrototypeOf = function(obj)
		local prototype = getmetatable(obj)
		return prototype ~= false and prototype or nil
	end,
	create = function(proto, properties)
		if properties == nil then
			properties = {}
		end
		return setmetatable(properties, proto)
	end,
})

return Object
