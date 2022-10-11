local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local inspect = require(Packages.LuauPolyfill).util.inspect

local function devPrint(...)
	local inspected = {}
	for i = 1, select("#", ...) do
		local item = select(i, ...)
		inspected[i] = inspect(item)
	end
	print(table.unpack(inspected))
end

return devPrint
