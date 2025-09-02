local root = script:FindFirstAncestor("AbuseReportMenu")
local GetFFlagGetHumanoidDescriptionUpdates = require(root.Flags.GetFFlagGetHumanoidDescriptionUpdates)
local FFlagGetHumanoidDescriptionUpdatesV2A = game:DefineFastFlag("GetHumanoidDescriptionUpdatesV2A", false)
local FFlagGetHumanoidDescriptionUpdatesV2C = game:DefineFastFlag("GetHumanoidDescriptionUpdatesV2C", false)

local Players = game:GetService("Players")

-- TODO: Delete this file and replace usage with the one in separate module

-- serializable humanoid description object
export type HumanoidDescriptionData = {
	BackAccessory: string,
	BodyTypeScale: number,
	ClimbAnimation: number,
	DepthScale: number,
	Face: number,
	FaceAccessory: string,
	FallAnimation: number,
	FrontAccessory: string,
	GraphicTShirt: number,
	HairAccessory: string,
	HatAccessory: string,
	Head: number,
	HeadColor: { number },
	HeadScale: number,
	HeightScale: number,
	IdleAnimation: number,
	JumpAnimation: number,
	LeftArm: number,
	LeftArmColor: { number },
	LeftLeg: number,
	LeftLegColor: { number },
	MoodAnimation: number,
	NeckAccessory: string,
	Pants: number,
	ProportionScale: number,
	RightArm: number,
	RightArmColor: { number },
	RightLeg: number,
	RightLegColor: { number },
	RunAnimation: number,
	Shirt: number,
	ShouldersAccessory: string,
	SwimAnimation: number,
	Torso: number,
	TorsoColor: { number },
	WaistAccessory: string,
	WalkAnimation: number,
	WidthScale: number,
	AccessoryBlob: { any }?,
	Emotes: { any }?,
	FieldErrorCount: number?,
}

local status_codes = {
	ERR_RA_CHARACTER = "ERR_RA_CHARACTER",
	ERR_RA_HUMPLAYER = "ERR_RA_HUMPLAYER",
	ERR_RA_HUMOBJ = "ERR_RA_HUMOBJ",
	ERR_RA_HUMDESC = "ERR_RA_HUMDESC",
	OK = "OK",
}

local transformAccessories = function(accessories)
	local result = {}
	for _, accessory in ipairs(accessories) do
		table.insert(result, {
			AccessoryType = accessory.AccessoryType.Value,
			AssetId = accessory.AssetId,
			IsLayered = accessory.IsLayered,
			Order = accessory.Order,
			Puffiness = accessory.Puffiness,
		})
	end
	return result
end

local transformEmotes = function(getEmotes, getEquippedEmotes)
	local result = {}
	for _, equipped in ipairs(getEquippedEmotes) do
		local assetIdList = getEmotes[equipped.Name]
		if assetIdList then
			local limit = math.min(8, #assetIdList) -- take max 8 assetIds for assets of the same name for coverage
			for i = 1, limit do
				table.insert(result, assetIdList[i])
			end
		end
	end
	return result
end

local getHumanoidDescription = function(userId: number): (HumanoidDescriptionData, string)
	local player = Players:GetPlayerByUserId(userId)

	local humanoidDescriptionData: HumanoidDescriptionData = {
		BackAccessory = "",
		BodyTypeScale = 0,
		ClimbAnimation = 0,
		DepthScale = 0,
		Face = 0,
		FaceAccessory = "",
		FallAnimation = 0,
		FrontAccessory = "",
		GraphicTShirt = 0,
		HairAccessory = "",
		HatAccessory = "",
		Head = 0,
		HeadColor = { 0, 0, 0 },
		HeadScale = 0,
		HeightScale = 0,
		IdleAnimation = 0,
		JumpAnimation = 0,
		LeftArm = 0,
		LeftArmColor = { 0, 0, 0 },
		LeftLeg = 0,
		LeftLegColor = { 0, 0, 0 },
		MoodAnimation = 0,
		NeckAccessory = "",
		Pants = 0,
		ProportionScale = 0,
		RightArm = 0,
		RightArmColor = { 0, 0, 0 },
		RightLeg = 0,
		RightLegColor = { 0, 0, 0 },
		RunAnimation = 0,
		Shirt = 0,
		ShouldersAccessory = "",
		SwimAnimation = 0,
		Torso = 0,
		TorsoColor = { 0, 0, 0 },
		WaistAccessory = "",
		WalkAnimation = 0,
		WidthScale = 0,
	}

	if not player then
		return humanoidDescriptionData, status_codes.ERR_RA_HUMPLAYER
	end

	local character = player.Character

	if character then
		local humanoid = character:WaitForChild("Humanoid", 1)

		if not humanoid then
			return humanoidDescriptionData, status_codes.ERR_RA_HUMOBJ
		end

		local description

		if GetFFlagGetHumanoidDescriptionUpdates() then
			local success
			success, description = pcall(function()
				return (humanoid :: Humanoid):GetAppliedDescription() :: any
			end)
			if not success then
				return humanoidDescriptionData, status_codes.ERR_RA_HUMOBJ
			end
		else
			description = (humanoid :: Humanoid):GetAppliedDescription() :: any
		end

		if not description then
			return humanoidDescriptionData, status_codes.ERR_RA_HUMDESC
		end

		local fieldErrorCount = 0

		if GetFFlagGetHumanoidDescriptionUpdates() then
			local gatherFieldIntoDescriptionData = function(descriptionField)
				if typeof(description[descriptionField]) == "Color3" then
					humanoidDescriptionData[descriptionField] = {
						description[descriptionField].R,
						description[descriptionField].G,
						description[descriptionField].B,
					}
				else
					humanoidDescriptionData[descriptionField] = description[descriptionField]
				end
			end

			for descriptionField, v in pairs(humanoidDescriptionData) do
				local success = pcall(gatherFieldIntoDescriptionData, descriptionField)

				if not success then
					fieldErrorCount = fieldErrorCount + 1
				end
			end

			-- includeRigidAccessories = false, since we already collected these above
			local getAccessoriesOk, accessories = pcall(description.GetAccessories, description, false)
			if getAccessoriesOk then
				local transformAccessoriesOk, transformedAccessories = pcall(transformAccessories, accessories)
				if transformAccessoriesOk then
					humanoidDescriptionData.AccessoryBlob = transformedAccessories
				else
					fieldErrorCount = fieldErrorCount + 1
				end
			else
				fieldErrorCount = fieldErrorCount + 1
			end

			if FFlagGetHumanoidDescriptionUpdatesV2A then
				local getEmotesOk, emotes = pcall(description.GetEmotes, description)
				if getEmotesOk then
					humanoidDescriptionData.Emotes = emotes
				else
					fieldErrorCount = fieldErrorCount + 1
				end
			end

			if FFlagGetHumanoidDescriptionUpdatesV2C then
				local getEquippedEmotesOk, equippedEmotes = pcall(description.GetEquippedEmotes, description)
				local getEmotesOk, emotes = pcall(description.GetEmotes, description)

				if getEquippedEmotesOk and getEmotesOk then
					local transformedEmotesOk, transformedEmotes = pcall(transformEmotes, emotes, equippedEmotes)
					if transformedEmotesOk then
						humanoidDescriptionData.Emotes = transformedEmotes
					end
				else
					fieldErrorCount = fieldErrorCount + 1
				end
			end

			humanoidDescriptionData.FieldErrorCount = fieldErrorCount
		else
			pcall(function()
				for descriptionField, v in pairs(humanoidDescriptionData) do
					if typeof(description[descriptionField]) == "Color3" then
						humanoidDescriptionData[descriptionField] = {
							description[descriptionField].R,
							description[descriptionField].G,
							description[descriptionField].B,
						}
					else
						humanoidDescriptionData[descriptionField] = description[descriptionField]
					end
				end
			end)
		end
	else
		return humanoidDescriptionData, status_codes.ERR_RA_CHARACTER
	end

	return humanoidDescriptionData, status_codes.OK
end

return {
	getHumanoidDescription = getHumanoidDescription,
}
