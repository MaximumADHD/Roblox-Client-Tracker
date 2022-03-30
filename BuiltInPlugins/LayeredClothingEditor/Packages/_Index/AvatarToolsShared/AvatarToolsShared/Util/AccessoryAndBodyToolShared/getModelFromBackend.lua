--[[
	Helper function that will fetch a model. Will use asset service to fetch if it's a bundle id,
	otherwise it will use InsertService.
]]

local InsertService = game:GetService("InsertService")

local Util = script.Parent
local BundleImporter = require(Util.BundleImporter)

return function(assetService, assetId, isBundleId)
	local containerModel = nil
	local model = nil

	local success, err = pcall(function()
		if isBundleId then
			model = BundleImporter.getAvatarFromBundleId(assetService, assetId)
		else
			containerModel = InsertService:LoadAsset(assetId)
			model = containerModel:GetChildren()[1]
		end
	end)
	if success then
		model.Parent = nil
		model.Archivable = false
		if containerModel then
			containerModel:Destroy()
		end
		return model
	else
		warn("unable to insert model because: " .. err)
	end
end