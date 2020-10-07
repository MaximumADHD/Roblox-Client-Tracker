local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")

local Promise = require(CorePackages.Promise)

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

local function GetAssetInfo(assetId)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return MarketplaceService:GetProductInfo(assetId, Enum.InfoType.Asset)
		end)

		if success then
			resolve(result.Name)
		else
			reject()
		end
	end)
end

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

	local emotesIds = humanoidDescription:GetEquippedEmotes()
	for _, emoteId in pairs(emotesIds) do
		if emoteId and emoteId > 0 then
			table.insert(assetIdList, emoteId)
		end
	end

	local promises = {}
	for _, assetId in ipairs(assetIdList) do
		table.insert(promises, GetAssetInfo(assetId))
	end

	return Promise.all(promises)
end