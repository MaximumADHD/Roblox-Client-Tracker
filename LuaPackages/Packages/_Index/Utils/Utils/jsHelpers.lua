-- ROBLOX NOTE: no upstream
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local exports = {}

local function isSymbol(val: any)
	return typeof(val) == "userdata" and string.sub(tostring(val), 1, 7) == "Symbol("
end
exports.isSymbol = isSymbol

local function getOwnPropertySymbols(val: { [any]: any })
	return Array.filter(Object.keys(val), function(key)
		return isSymbol(key)
	end)
end
exports.getOwnPropertySymbols = getOwnPropertySymbols

local function getOwnPropertyNames(object: { [any]: any })
	Array.filter(Object.keys(object), function(key)
		return not isSymbol(key)
	end)
end
exports.getOwnPropertyNames = getOwnPropertyNames

local function create(prototype: { [any]: any }?)
	return if not prototype then {} else setmetatable({}, prototype)
end
exports.create = create
-- local function getPrototypeOf(object: { [any]: any })
-- 	return getmetatable(object)
-- end
-- exports.getPrototypeOf = getPrototypeOf

-- local function setPrototypeOf(object: { [any]: any }, prototype: { [any]: any })
-- 	return setmetatable(object, prototype)
-- end
-- exports.setPrototypeOf = setPrototypeOf

return exports
