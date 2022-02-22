local Plugin = script.Parent.Parent.Parent

local Types = require(Plugin.Src.Types)

local Settings = require(script.Parent.Settings)

local RootProps: Types.InstanceProperties = Settings.RootProps
local MeshProps: Types.InstanceProperties = Settings.MeshProps
local TextureProps: Types.InstanceProperties = Settings.TextureProps
local MaterialProps: Types.InstanceProperties = Settings.MaterialProps
local GroupProps: Types.InstanceProperties = Settings.GroupProps
local JointProps: Types.InstanceProperties = Settings.JointProps
local BaseProps: Types.InstanceProperties = Settings.BaseProps

local InstanceTypeToProps = {
	ImporterRootSettings = RootProps,
	ImporterMeshSettings = MeshProps,
	ImporterTextureSettings = TextureProps,
	ImporterMaterialSettings = MaterialProps,
	ImporterGroupSettings = GroupProps,
	ImporterJointSettings = JointProps,
}

local function getPropertiesForInstance(instance)
	if instance:IsA("ImporterBaseSettings") then
		local props = InstanceTypeToProps[instance.ClassName]

		if not props then
			warn("Unexpected instance type deriving from ImporterBaseSettings: ", instance.ClassName)

			return BaseProps
		end

		return props
	else
		error("Unexpected instance type: ", instance.ClassName)
	end
end

return getPropertiesForInstance
