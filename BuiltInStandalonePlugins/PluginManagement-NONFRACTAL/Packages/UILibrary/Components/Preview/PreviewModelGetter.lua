-- This is a help object for modelPreview.
-- This script is responsible for fetching the assetInstance using an assetID.
-- this script will return a model for preview with all scripts disabled.

local Library = script.Parent.Parent.Parent
local Promise = require(Library.Parent.Http.Promise)

local Urls = require(Library.Utils.Urls)

local FFlagEnableDataModelFetchAssetAsync = settings():GetFFlag("EnableDataModelFetchAssetAsync")
local FFlagEnableToolboxInsertWithJoin = settings():GetFFlag("EnableToolboxInsertWithJoin")

local function disableScripts(previewModel)
	for _, item in pairs(previewModel:GetDescendants()) do
		if item:IsA("Script") then
			item.Disabled = true
		end
	end
end

local function getPreviewModel(assetId)
	local assetInstances = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		if FFlagEnableDataModelFetchAssetAsync then
			if FFlagEnableToolboxInsertWithJoin then
				assetInstances = game:InsertObjectsAndJoinIfLegacy(url)
			else
				assetInstances = game:GetObjectsAsync(url)
			end
		else
			if FFlagEnableToolboxInsertWithJoin then
				assetInstances = game:InsertObjectsAndJoinIfLegacy(url)
			else
				assetInstances = game:GetObjects(url)
			end
		end
	end)

	if not success then
		if FFlagEnableDataModelFetchAssetAsync then
			return errorMessage
		else
			return Instance.new("Model")
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

	return model
end

-- This function returns models containing the assetInstances with all scripts disabled.
return function(assetId)
	local getObjectPromise = Promise.new(function(resolve, reject)
		spawn(function()
			local results = getPreviewModel(assetId)
			if type(results) == "String" then
				reject(results)
			else
				resolve(results)
			end
		end)
	end)
	return getObjectPromise
end