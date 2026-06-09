local root = script.Parent.Parent.Parent

local ParseContentIds = require(root.util.ParseContentIds)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local Types = require(root.util.Types)

local FetchHSRAssets = {}

function FetchHSRAssets.getData(
	rootInstance: Instance,
	consumerConfig: Types.PreloadedConsumerConfigs
): { [string]: { Instance } }?
	-- IEC may create HSR post-publish via editable instances, so HSR checks skip end-to-end.
	if consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		return {}
	end

	local hsrAssets: { [string]: { Instance } } = {}

	local objects = rootInstance:GetDescendants()
	table.insert(objects, rootInstance)

	for _, obj in objects do
		if not obj:IsA("WrapLayer") then
			continue
		end

		local HSRAssetId = (obj :: any).HSRAssetId
		if (not HSRAssetId) or HSRAssetId == "" then
			continue
		end

		local parsedId = ParseContentIds.tryGetAssetIdFromContentId(HSRAssetId)
		if not parsedId then
			continue
		end

		if hsrAssets[parsedId] then
			continue
		end

		local preloaded = consumerConfig.preloadedHsrAssets[parsedId]
		if preloaded then
			hsrAssets[parsedId] = preloaded
			continue
		end

		local loadSuccess, hsrCandidates = pcall(function()
			return game:GetObjectsAllOrNone(HSRAssetId)
		end)

		if not loadSuccess then
			return nil
		end

		hsrAssets[parsedId] = hsrCandidates or {}
	end

	return hsrAssets
end

return FetchHSRAssets
