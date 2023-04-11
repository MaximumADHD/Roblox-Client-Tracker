local CurrentModule = script

local pathModule = require(CurrentModule.path)
local Path = pathModule.Path
export type Path = pathModule.Path

function makePathImpl()
	local path = Path.new()
	path:initialize("/", "/")
	return path
end

return {
	path = makePathImpl(),
	Path = Path,
}
