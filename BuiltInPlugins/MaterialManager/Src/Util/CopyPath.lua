local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(path : _Types.Path) : _Types.Path
	local shallowPath = {}

	for _, subPath in ipairs(path) do
		table.insert(shallowPath, subPath)
	end

	return shallowPath
end
