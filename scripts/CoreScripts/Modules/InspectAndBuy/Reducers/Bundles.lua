local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local SetAvatarPreviewDetails = require(InspectAndBuyFolder.Actions.SetAvatarPreviewDetails)
local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local ItemType = AvatarExperienceCommon.Enums.ItemTypeEnum

local FFlagAXEnableFetchAvatarPreview = require(InspectAndBuyFolder.Flags.FFlagAXEnableFetchAvatarPreview)

local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
type SetAvatarPreviewDetails = SetAvatarPreviewDetails.SetAvatarPreviewDetails

--[[
	For V1, in order to prevent going through all pages of the
	/v1/assets/{assetId}/bundles endpoint for Rthro assets we
	manually populate Rthro animation bundle data. In the future
	we only need to get a few bundles at a time as a user scrolls
	through the list of bundles.
]]
return Rodux.createReducer({}, {
	--[[
		Sets the avatar preview details to each BundleInfo
	]]
	[SetAvatarPreviewDetails.name] = if FFlagAXEnableFetchAvatarPreview
		then function(state, action: SetAvatarPreviewDetails)
			local avatarPreviewDetails = action.avatarPreviewDetails
			local look = avatarPreviewDetails.look
			local bundles = {}
			if look.items then
				for _, item in look.items do
					if item.itemType == ItemType.Bundle then
						bundles[tostring(item.id)] = BundleInfo.fromAvatarPreviewItem(item)
					end
				end
			end
			return Cryo.Dictionary.join(state, bundles)
		end
		else nil,
	--[[
		Set/update bundle information.
	]]
	[SetBundles.name] = function(state, action: any)
		local bundles = {}

		for _, bundle in ipairs(action.bundles) do
			assert(bundle.bundleId ~= nil, "Expected a bundle id when setting a bundle's information.")
			local currentBundle = state[bundle.bundleId] or {} :: any
			bundles[bundle.bundleId] = Cryo.Dictionary.join(currentBundle, bundle)
			if bundles[bundle.bundleId] then
				bundles[bundle.bundleId] = BundleInfo.getSaleDetailsForCollectibles(bundles[bundle.bundleId])
			end
		end

		return Cryo.Dictionary.join(state, bundles)
	end,
})
