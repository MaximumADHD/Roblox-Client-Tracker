local Plugin = script.Parent.Parent.Parent

local TagManager = require(Plugin.Src.TagManager)
local _Types = require(Plugin.Src.Types)

local getUniqueGroupName = function(baseName: string)
	local i = 1
	while TagManager.Get():GetGroups()[baseName .. " " .. tostring(i)] do
		i += 1
	end
	return baseName .. " " .. tostring(i)
end

return getUniqueGroupName
