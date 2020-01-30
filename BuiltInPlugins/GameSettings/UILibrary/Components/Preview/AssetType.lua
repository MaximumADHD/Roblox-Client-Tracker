local AssetType = {}

AssetType.TYPES = {
	ModelType = 1, -- Part, Mesh, Model
	ImageType = 2,
	SoundType = 3,
	ScriptType = 4, -- Server, local, module
	PluginType = 5,
	OtherType = 6,
	LoadingType = 7,
}

local classTypeMap = {
	BasePart = AssetType.TYPES.ModelType,
	Model = AssetType.TYPES.ModelType,
	BackpackItem = AssetType.TYPES.ModelType,
	Accoutrement = AssetType.TYPES.ModelType,

	Decal = AssetType.TYPES.ImageType,
	ImageLabel = AssetType.TYPES.ImageType,
	ImageButton = AssetType.TYPES.ImageType,
	Texture =AssetType.TYPES.ImageType,
	Sky = AssetType.TYPES.ImageType,

	Sound = AssetType.TYPES.SoundType,

	BaseScript = AssetType.TYPES.ScriptType,
}

-- For AssetPreview, we devide assets into four categories.
-- For any parts or meshes, we will need to do a model preview.
-- For images, we show only an image.
-- For sound, we will need to show something and provide play control. (Will
-- probably improve this in the future)
-- For BaseScript, show only names while for all other type show assetName and type
function AssetType:getAssetType(assetInstance)
	if not assetInstance then
		return self.TYPES.LoadingType
	end

	local className = assetInstance.className
	local type = classTypeMap[className]

	if not type then
		return self.TYPES.OtherType
	end

	return type
end

function AssetType:isModel(currentType)
	return currentType == self.TYPES.ModelType
end

function AssetType:isImage(currentType)
	return currentType == self.TYPES.ImageType
end

function AssetType:isAudio(currentType)
	return currentType == self.TYPES.SoundType
end

function AssetType:isScript(currentType)
	return currentType == self.TYPES.ScriptType
end

function AssetType:isPlugin(currentType)
	return currentType == self.TYPES.PluginType
end

-- Since you can't tell if an asset is a plugin based purely on its derived class,
-- plugin assets need to be directly given the plugin type
function AssetType:markAsPlugin()
	return self.TYPES.PluginType
end

function AssetType:isOtherType(currentType)
	return currentType == self.TYPES.OtherType
end

function AssetType:isLoading(currentType)
	return currentType == self.TYPES.LoadingType
end

return AssetType