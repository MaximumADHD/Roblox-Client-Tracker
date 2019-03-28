-- This is a help object for modelPreview.
-- This script is responsible for fetching the assetInstance using an assetID.
-- this script will return two objects at once, one for preview, one for inserting.
-- The preview instance will have all scripts disabled, whils inserting one is ready for insertion.

local Plugin = script.Parent.Parent.Parent

local Urls = require(Plugin.Core.Util.Urls)

local function disableScripts(previewModel)
	for _, item in pairs(previewModel:GetDescendants()) do
		if item:IsA("Script") then
			item.Disabled = true
		end
	end
end

-- This function returns two models.
-- The first one is the model containing the assetInstances with all scripts disabled.
-- The second is the model contains untoched assetInstances.
return function(assetId)
	local assetInstances = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		assetInstances = game:GetObjects(url)
	end)
	if not success then
		print(errorMessage)
		return Instance.new("Model")
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