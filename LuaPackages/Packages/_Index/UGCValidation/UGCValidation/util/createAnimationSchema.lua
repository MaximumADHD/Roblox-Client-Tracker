local root = script.Parent.Parent
local Constants = require(root.Constants)
local getFFlagUGCValidationAnimationPackFolderStructure =
	require(root.flags.getFFlagUGCValidationAnimationPackFolderStructure)
local getFFlagUGCValidationAnimationAssetDisableModelStructure =
	require(root.flags.getFFlagUGCValidationAnimationAssetDisableModelStructure)

local function createAnimationEntry(optional: boolean?, includeWeight: boolean?): { [string]: any }
	local entry: { [string]: any } = {
		ClassName = "Animation",
	}
	if optional then
		entry._optional = true
	end
	if includeWeight then
		entry._children = {
			{
				Name = "Weight",
				ClassName = "NumberValue",
				_optional = true,
			},
		}
	end
	return entry
end

local function createStringValueWithAnimations(
	stringValueName: string,
	maxAnimations: number,
	includeWeight: boolean?
): { [string]: any }
	local children = {}
	table.insert(children, createAnimationEntry(false, includeWeight))

	if maxAnimations > 1 then
		table.insert(children, createAnimationEntry(true, includeWeight))
	end

	return {
		Name = stringValueName,
		ClassName = "StringValue",
		_children = children,
	}
end

local function createAnimationSchema(assetTypeEnum: Enum.AssetType, rootInstance: Instance?): { [string]: any }
	local assetInfo = Constants.ANIMATION_ASSET_INFO[assetTypeEnum]
	assert(assetInfo, `No ANIMATION_ASSET_INFO for {assetTypeEnum}`)

	local r15AnimChildren = {}

	if assetTypeEnum == Enum.AssetType.IdleAnimation then
		table.insert(r15AnimChildren, createStringValueWithAnimations("idle", 2, true))
	else
		for _, stringValueName in assetInfo.stringValueNames do
			table.insert(r15AnimChildren, createStringValueWithAnimations(stringValueName, 1))
		end
	end

	local r15AnimSchema = {
		Name = "R15Anim",
		ClassName = "Folder",
		_children = r15AnimChildren,
	}

	if
		getFFlagUGCValidationAnimationAssetDisableModelStructure()
		or (getFFlagUGCValidationAnimationPackFolderStructure() and rootInstance and rootInstance.Name == "R15Anim")
	then
		return r15AnimSchema
	end

	return {
		ClassName = "Model",
		Name = assetInfo.modelName,
		_children = { r15AnimSchema },
	}
end

return createAnimationSchema
