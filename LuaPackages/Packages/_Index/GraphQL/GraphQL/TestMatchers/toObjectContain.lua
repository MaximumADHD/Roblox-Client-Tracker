local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local inspect = require(Packages.LuauPolyfill).util.inspect
local deepContains = require(script.Parent.Parent.luaUtils.deepContains)

local function toObjectContain(a, b)
	local success = deepContains(a, b)

	local message = ""
	if not success then
		-- TODO: find way to pretty print variables into output and expect it
		message = "received tbl: " .. inspect(b) .. " expected item to be in table: " .. inspect(a)
	end

	return {
		pass = success,
		message = message,
	}
end

return toObjectContain
