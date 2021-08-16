local Plugin = script.Parent.Parent.Parent

local Types = require(Plugin.Src.Types)

local Settings = require(script.Parent.Settings)

local RootProps: Types.InstanceProperties = Settings.RootProps
local MeshProps: Types.InstanceProperties = Settings.MeshProps
local TextureProps: Types.InstanceProperties = Settings.TextureProps
local GroupProps: Types.InstanceProperties = Settings.GroupProps

local function getPropertiesForInstance(instance)
	if instance:IsA(("ImporterRootSettings")) then
		return RootProps
	elseif instance:IsA(("ImporterBaseSettings")) then
		if instance:IsA(("ImporterMeshSettings")) then
			return MeshProps
		elseif instance:IsA(("ImporterTextureSettings")) then
			return TextureProps
		elseif instance:IsA(("ImporterGroupSettings")) then
			return GroupProps
		else
			error(("Unexpected settings instance type: %s"):format(instance.ClassName))
		end
	else
		error(("Unexpected instance type: `%s`"):format(instance.ClassName))
	end
end

return getPropertiesForInstance
