--!nonstrict

game:DefineFastFlag("ContactImporterAndPYMKEnabled_v1", false)
game:DefineFastInt("ContactImporterAndPYMKRolloutEnabled", 0)

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Players = dependencies.Players
local ThrottleUserId = dependencies.ThrottleUserId
local getFFlagContactImporterEnabledForDev = dependencies.getFFlagContactImporterEnabledForDev
local getFStringSocialFriendsLayer = dependencies.getFStringSocialFriendsLayer

local function contactImporterAndPYMKRolloutEnabled()
	local localPlayer = Players.LocalPlayer
	if not localPlayer or not localPlayer.UserId then
		return false
	else
		local rolloutPercent = game:GetFastInt("ContactImporterAndPYMKRolloutEnabled")
		return ThrottleUserId(rolloutPercent, localPlayer.UserId)
	end
end

local function contactImporterAndPYMKExperimentEnabled()
	return game:GetFastFlag("ContactImporterAndPYMKEnabled_v1")
end

return {
	enabledForAll = getFFlagContactImporterEnabledForDev(),
	experimentOrRolloutEnabled = function(layers)
		local socialFriends = getFStringSocialFriendsLayer()
		local socialFriendsLayer = (layers and layers[socialFriends]) or {}

		return (contactImporterAndPYMKExperimentEnabled() and socialFriendsLayer.show_contact_importer_and_pymk == true)
			or contactImporterAndPYMKRolloutEnabled()
			or getFFlagContactImporterEnabledForDev()
	end,
}
