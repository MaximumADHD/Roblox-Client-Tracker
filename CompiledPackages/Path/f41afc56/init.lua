local pathModule = require(script.path)
local Path = pathModule.Path
export type Path = pathModule.Path

local function makePathImpl()
	local path = Path.new()
	path:initialize("/", "/")
	return path
end

return {
	path = makePathImpl(),
	Path = Path,
}
