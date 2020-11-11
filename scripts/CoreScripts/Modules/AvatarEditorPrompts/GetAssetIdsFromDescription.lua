local FFlagFixPromptSaveAvatarTooManyEmotes = game:DefineFastFlag("FixPromptSaveAvatarTooManyEmotes", false)

local HumanoidDescriptionAssetProperties = {
	"BackAccessory",
	"ClimbAnimation",
	"Face",
	"FaceAccessory",
	"FallAnimation",
	"FrontAccessory",
	"GraphicTShirt",
	"HairAccessory",
	"HatAccessory",
	"Head",
	"IdleAnimation",
	"JumpAnimation",
	"LeftArm",
	"LeftLeg",
	"NeckAccessory",
	"Pants",
	"RightArm",
	"RightLeg",
	"RunAnimation",
	"Shirt",
	"ShouldersAccessory",
	"SwimAnimation",
	"Torso",
	"WaistAccessory",
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
				table.insert(assetIdList, tonumber(match))
			end
		end
	end

	if FFlagFixPromptSaveAvatarTooManyEmotes then
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
	else
		local emotesIds = humanoidDescription:GetEmotes()
		for _, idList in pairs(emotesIds) do
			for _, emoteId in ipairs(idList) do
				table.insert(assetIdList, emoteId)
			end
		end
	end

	return assetIdList
end