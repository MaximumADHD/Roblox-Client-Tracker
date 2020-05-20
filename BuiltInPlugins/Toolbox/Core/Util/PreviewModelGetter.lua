-- This is a help object for modelPreview.
-- This script is responsible for fetching the assetInstance using an assetID.
-- this script will return a model for preview with all scripts disabled.
local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")
local FFlagHideOneChildTreeviewButton = game:GetFastFlag("HideOneChildTreeviewButton")

local Plugin = script.Parent.Parent.Parent

local Promise = require(Plugin.Libs.Http.Promise)

local Urls = require(Plugin.Core.Util.Urls)

local function disableScripts(previewModel)
	for _, item in pairs(previewModel:GetDescendants()) do
		if item:IsA("Script") then
			item.Disabled = true
		end
	end
end

-- This method would always return a instance to root.
-- For audio asset, we will to handle that ourselves.
local function getPreviewModel(assetId)
	local assetInstances = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		assetInstances = game:GetObjectsAsync(url)
	end)

	if not success then
		if FFlagHideOneChildTreeviewButton then
			return success, errorMessage
		else
			return errorMessage
		end
	end

	local model
	if #assetInstances == 1 then
		model = assetInstances[1]
	else
		model = Instance.new("Model")
		model.Name = "Preview"
		for _, o in ipairs(assetInstances) do
			o.Parent = model
			if not o.Parent then
				o:Destroy()
			end
		end
	end

	disableScripts(model)
	if FFlagHideOneChildTreeviewButton then
		return success, model
	else
		return model
	end
end

-- This function returns models containing the assetInstances with all scripts disabled.
return function(assetId, assetTypeId)
	local getObjectPromise = Promise.new(function(resolve, reject)
		spawn(function()
			local results
			local isSuccess
			if assetTypeId == Enum.AssetType.Audio.Value then
				local soundInstance = Instance.new("Sound")
				local soundId = ("rbxassetid://%d"):format(assetId)
				soundInstance.SoundId = soundId
				results = soundInstance
			elseif FFlagEnableToolboxVideos and assetTypeId == Enum.AssetType.Video.Value then
				local videoInstance = Instance.new("VideoFrame")
				videoInstance.Video = Urls.constructAssetIdString(assetId)
				results = videoInstance
			else
				if FFlagHideOneChildTreeviewButton then
					isSuccess, results = getPreviewModel(assetId)
				else
					results = getPreviewModel(assetId)
				end
			end

			if FFlagHideOneChildTreeviewButton and (not isSuccess) then
				reject(results)
			elseif (not FFlagHideOneChildTreeviewButton) and type(results) == "String" then
				reject(results)
			else
				resolve(results)
			end
		end)
	end)
	return getObjectPromise
end