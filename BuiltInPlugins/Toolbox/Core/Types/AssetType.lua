local FFlagFixGetAssetTypeErrorHandling = game:GetFastFlag("FixGetAssetTypeErrorHandling")


local Plugin = script.Parent.Parent.Parent

local Promise = require(Plugin.Libs.Http.Promise)

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

-- For AssetPreview, we devide assets into four categories.
-- For any parts or meshes, we will need to do a model preview.
-- For images, we show only an image.
-- For sound, we will need to show something and provide play control. (Will
-- probably improve this in the future)
-- For BaseScript, show only names while for all other type show assetName and type
function AssetType:getAssetType(assetInstance)
	local notInstance
	if FFlagFixGetAssetTypeErrorHandling then
		notInstance = not assetInstance or typeof(assetInstance) ~= "Instance"
	else
		notInstance = not assetInstance
	end

	if notInstance then
		return self.TYPES.LoadingType
	elseif assetInstance:IsA("BasePart")
		or assetInstance:IsA("Model")
		or assetInstance:IsA("BackpackItem")
		or assetInstance:IsA("Accoutrement") then
		return self.TYPES.ModelType
	elseif assetInstance:IsA("Decal")
		or assetInstance:IsA("ImageLabel")
		or assetInstance:IsA("ImageButton")
		or assetInstance:IsA("Texture")
		or assetInstance:IsA("Sky") then
		return self.TYPES.ImageType
	elseif assetInstance:IsA("Sound") then
		return self.TYPES.SoundType
	elseif assetInstance:IsA("BaseScript") then
		return self.TYPES.ScriptType
	else
		return self.TYPES.OtherType
	end
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