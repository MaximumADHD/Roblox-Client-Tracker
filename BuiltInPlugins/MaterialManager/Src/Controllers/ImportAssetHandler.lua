--[[
	Helper class for uploading with texture map assets used in the import tool
	Takes an ImageUploader
	Uploads texture maps, and stores temp and real ids in the place
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem
local Promise = Framework.Util.Promise

local getFFlagMaterialManagerVariantCreatorOverhaul = require(
	Plugin.Src.Flags.getFFlagMaterialManagerVariantCreatorOverhaul
)

-- Pull the numeric part out of a content id (of form rbxasset://xyz or rbxtemp://xyz etc.)
local function numericIdFromContentId(id)
	return tonumber(id:match("://(%d+)"))
end

local ImportAssetHandler = ContextItem:extend("ImportAssetHandler")
ImportAssetHandler.__index = ImportAssetHandler

function ImportAssetHandler.new(imageUploader, userId)
	local self = setmetatable({
		_imageUploader = imageUploader,

		-- Allow the user id to be mocked for testing
		_userId = userId or game:GetService("StudioService"):GetUserId(),
	}, ImportAssetHandler)

	assert(self._imageUploader, "ImportAssetHandler expects an ImageUploader")

	return self
end

function ImportAssetHandler.mock(imageUploader, userId)
	return ImportAssetHandler.new(imageUploader, userId)
end

function ImportAssetHandler:handleAssetAsync(assetFile: File, onAssetUploading: (boolean?) -> ()?)
	assert(assetFile, "ImportAssetHandler:handleAsset() requires an assetFile")
	if getFFlagMaterialManagerVariantCreatorOverhaul() and onAssetUploading then
		onAssetUploading(true)
	end

	local tempId = assetFile:GetTemporaryId()
	local assetFileContents
	local success, response = pcall(function()
		assetFileContents = assetFile:GetBinaryContents()
	end)
	if not success then
		return Promise.reject(response)
	end
	return self._imageUploader:upload(tempId, assetFile.Name, --[[description=]]"", assetFileContents):andThen(function(assetId)
		local assetIdNumber = tonumber(assetId)
		if not assetIdNumber then
			local msg = ("Asset id \"%s\" for temp id \"%s\" could not be cast to an integer"):format(assetId, tempId)
			warn(msg)
			assert(assetIdNumber, msg)
		end

		assetId = "rbxassetid://" .. assetIdNumber
		return assetId
	end)
end

-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
function ImportAssetHandler:deprecatedHandleAsset(assetFile: File, onAssetUpload: (string) -> ())
	assert(assetFile, "ImportAssetHandler:handleAsset() requires an assetFile")

	local tempId = assetFile:GetTemporaryId()

	-- Pull the numeric part out of the rbxtemp://xyz
	local tempIdNumber = numericIdFromContentId(tempId)
	if not tempIdNumber then
		local msg = ("Temp id \"%s\" could not be cast to an integer"):format(tempId)
		warn(msg)
		-- TODO: warnings and errors
		assert(tempIdNumber, msg)
	end

	self._imageUploader:upload(tempId, assetFile.Name, --[[description=]]"", assetFile:GetBinaryContents())
	:andThen(function(assetId)
		-- Returned asset id already in int form, not "rbxassetid://xyz" form so we don't neeed to use numericIdFromContentId
		local assetIdNumber = tonumber(assetId)
		if not assetIdNumber then
			local msg = ("Asset id \"%s\" for temp id \"%s\" could not be cast to an integer"):format(assetId, tempId)
			warn(msg)
			assert(assetIdNumber, msg)
		end

		assetId = "rbxassetid://" .. assetIdNumber

		if onAssetUpload then
			onAssetUpload(assetId)
		end

	end, function(err)
		warn("Failed to upload asset", tempId, assetFile.Name)
	end)
end

-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
function ImportAssetHandler:handleAsset(assetFile: File, onAssetUpload: (string) -> (), onAssetFailed: () -> ())
	assert(assetFile, "ImportAssetHandler:handleAsset() requires an assetFile")

	local tempId = assetFile:GetTemporaryId()

	-- Pull the numeric part out of the rbxtemp://xyz
	local tempIdNumber = numericIdFromContentId(tempId)
	if not tempIdNumber then
		local msg = ("Temp id \"%s\" could not be cast to an integer"):format(tempId)
		warn(msg)
		-- TODO: warnings and errors
		assert(tempIdNumber, msg)
	end

	self._imageUploader:upload(tempId, assetFile.Name, --[[description=]]"", assetFile:GetBinaryContents())
	:andThen(function(assetId)
		-- Returned asset id already in int form, not "rbxassetid://xyz" form so we don't neeed to use numericIdFromContentId
		local assetIdNumber = tonumber(assetId)
		if not assetIdNumber then
			local msg = ("Asset id \"%s\" for temp id \"%s\" could not be cast to an integer"):format(assetId, tempId)
			warn(msg)
			assert(assetIdNumber, msg)
		end

		assetId = "rbxassetid://" .. assetIdNumber

		if onAssetUpload then
			onAssetUpload(assetId)
		end

	end, function(err)
		warn("Failed to upload asset", tempId, assetFile.Name)
		if onAssetFailed then
			onAssetFailed()
		end
	end)
end

return ImportAssetHandler
