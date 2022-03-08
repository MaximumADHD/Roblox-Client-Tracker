--[[
	Helper class for uploading with texture map assets used in the import tool
	Takes an ImageUploader
	Uploads texture maps, and stores temp and real ids in the place
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextItem = Framework.ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = Framework.ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

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

if not FFlagDevFrameworkUseCreateContext then
	function ImportAssetHandler:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

function ImportAssetHandler:handleAsset(assetFile : File)
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

	end, function(err)
		warn("Failed to upload asset", tempId, assetFile.Name)
	end)
end

return ImportAssetHandler
