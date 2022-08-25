--[[
	Returns a dot-separated representation of this Instance's location in the data model.

	For example:
	Game.<GrandparentName>.<ParentName>.<InstanceName>
]]

local function dumpInstancePath(instance: Instance)
	if not instance.Parent then
		return instance.Name
	end
	return dumpInstancePath(instance.Parent :: Instance) .. "." .. instance.Name
end

return dumpInstancePath
