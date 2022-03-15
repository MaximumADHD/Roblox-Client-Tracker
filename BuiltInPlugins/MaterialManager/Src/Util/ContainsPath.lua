local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

-- Given a directory-like structure, checks whether other is or is within path
return function(path: _Types.Path, other: _Types.Path) : boolean
	if #path > #other then
		return false
	end

	for index, directory in ipairs(path) do
		if directory == other[index] then
			continue
		else
			return false
		end
	end

	return true
end
