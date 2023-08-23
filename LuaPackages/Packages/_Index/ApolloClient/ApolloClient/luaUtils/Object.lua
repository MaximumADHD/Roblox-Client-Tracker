--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
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
