--!nonstrict
local HumanoidDescriptionAssetProperties = {
	"ClimbAnimation",
	"Face",
	"FallAnimation",
	"GraphicTShirt",
	"Head",
	"IdleAnimation",
	"JumpAnimation",
	"LeftArm",
	"LeftLeg",
	"Pants",
	"RightArm",
	"RightLeg",
	"RunAnimation",
	"Shirt",
	"SwimAnimation",
	"Torso",
	"WalkAnimation",
}

return function(humanoidDescription)
	local assetIdList = {}

	for _, propName in ipairs(HumanoidDescriptionAssetProperties) do
		local prop = humanoidDescription[propName]
		if typeof(prop) == "number" and prop > 0 then
			table.insert(assetIdList, prop)
		elseif typeof(prop) == "string" and prop ~= "" then
			for match in prop:gmatch("([%d]+),?") do
				table.insert(assetIdList, tonumber(match) :: number)
			end
		end
	end

	local accesories = humanoidDescription:GetAccessories(--[[includeRigidAccessories = ]] true)
	for _, accessoryMetadata in ipairs(accesories) do
		table.insert(assetIdList, accessoryMetadata.AssetId)
	end

	local emotesIds = humanoidDescription:GetEmotes()
	local equippedEmotes = humanoidDescription:GetEquippedEmotes()

	for _, emoteInfo in ipairs(equippedEmotes) do
		local idList = emotesIds[emoteInfo.Name]
		if idList then
			for _, emoteId in ipairs(idList) do
				table.insert(assetIdList, emoteId)
			end
		end
	end

	return assetIdList
end
