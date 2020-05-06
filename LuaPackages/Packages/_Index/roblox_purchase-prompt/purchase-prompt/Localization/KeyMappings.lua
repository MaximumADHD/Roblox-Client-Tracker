local Root = script.Parent.Parent

local PurchaseError = require(Root.Enums.PurchaseError)

local KeyMappings = {}

local PURCHASE_FAILED_KEY = "CoreScripts.PurchasePrompt.PurchaseFailed.%s"
local ASSET_TYPE_KEY = "Common.AssetTypes.Label.%s"

KeyMappings.AssetTypeById = {
	--[[
		This key is a special case; developer products only exist
		within the context of a game, so they're localized with the
		rest of the purchase prompt strings.
	]]
	["0"] = "CoreScripts.PurchasePrompt.ProductType.Product",

	--[[
		The rest of these are asset types associated with Roblox
		assets that exist outside of games, mostly related to
		avatar customization
	]]
	["2"] = ASSET_TYPE_KEY:format("TShirt"),
	["3"] = ASSET_TYPE_KEY:format("Audio"),
	["4"] = ASSET_TYPE_KEY:format("Mesh"),
	["8"] = ASSET_TYPE_KEY:format("Hat"),
	["9"] = ASSET_TYPE_KEY:format("Place"),
	["10"] = ASSET_TYPE_KEY:format("Model"),
	["11"] = ASSET_TYPE_KEY:format("Shirt"),
	["12"] = ASSET_TYPE_KEY:format("Pants"),
	["13"] = ASSET_TYPE_KEY:format("Decal"),
	["17"] = ASSET_TYPE_KEY:format("Head"),
	["18"] = ASSET_TYPE_KEY:format("Face"),
	["19"] = ASSET_TYPE_KEY:format("Gear"),
	["21"] = ASSET_TYPE_KEY:format("Badge"),
	["24"] = ASSET_TYPE_KEY:format("Animation"),
	["27"] = ASSET_TYPE_KEY:format("Torso"),
	["28"] = ASSET_TYPE_KEY:format("RightArm"),
	["29"] = ASSET_TYPE_KEY:format("LeftArm"),
	["30"] = ASSET_TYPE_KEY:format("LeftLeg"),
	["31"] = ASSET_TYPE_KEY:format("RightLeg"),
	["32"] = ASSET_TYPE_KEY:format("Package"),
	["34"] = ASSET_TYPE_KEY:format("GamePass"),
	["38"] = ASSET_TYPE_KEY:format("Plugin"),
	["40"] = ASSET_TYPE_KEY:format("MeshPart"),
	["41"] = ASSET_TYPE_KEY:format("Hair"),
	["42"] = ASSET_TYPE_KEY:format("Face"),
	["43"] = ASSET_TYPE_KEY:format("Neck"),
	["44"] = ASSET_TYPE_KEY:format("Shoulder"),
	["45"] = ASSET_TYPE_KEY:format("Front"),
	["46"] = ASSET_TYPE_KEY:format("Back"),
	["47"] = ASSET_TYPE_KEY:format("Waist"),
	["48"] = ASSET_TYPE_KEY:format("Climb"),
	["49"] = ASSET_TYPE_KEY:format("Death"),
	["50"] = ASSET_TYPE_KEY:format("Fall"),
	["51"] = ASSET_TYPE_KEY:format("Idle"),
	["52"] = ASSET_TYPE_KEY:format("Jump"),
	["53"] = ASSET_TYPE_KEY:format("Run"),
	["54"] = ASSET_TYPE_KEY:format("Swim"),
	["55"] = ASSET_TYPE_KEY:format("Walk"),
	["56"] = ASSET_TYPE_KEY:format("Pose"),
	["61"] = ASSET_TYPE_KEY:format("Emote"),
}

KeyMappings.PurchaseErrorKey = {
	[PurchaseError.CannotGetBalance] = PURCHASE_FAILED_KEY:format("CannotGetBalance"),
	[PurchaseError.CannotGetItemPrice] = PURCHASE_FAILED_KEY:format("CannotGetItemPrice"),
	[PurchaseError.NotForSale] = PURCHASE_FAILED_KEY:format("NotForSale"),
	[PurchaseError.AlreadyOwn] = PURCHASE_FAILED_KEY:format("AlreadyOwn"),
	[PurchaseError.Under13] = PURCHASE_FAILED_KEY:format("Under13"),
	[PurchaseError.Limited] = PURCHASE_FAILED_KEY:format("Limited"),
	[PurchaseError.Guest] = PURCHASE_FAILED_KEY:format("PromptPurchaseOnGuest"),
	[PurchaseError.ThirdPartyDisabled] = PURCHASE_FAILED_KEY:format("ThirdPartyDisabled"),
	[PurchaseError.NotEnoughRobux] = PURCHASE_FAILED_KEY:format("NotEnoughRobux"),
	[PurchaseError.NotEnoughRobuxXbox] = PURCHASE_FAILED_KEY:format("NotEnoughRobuxXbox"),
	[PurchaseError.NotEnoughRobuxNoUpsell] = PURCHASE_FAILED_KEY:format("NotEnoughRobuxNoUpsell"),
	[PurchaseError.UnknownFailure] = PURCHASE_FAILED_KEY:format("UnknownFailure"),
	[PurchaseError.UnknownFailureNoItemName] = PURCHASE_FAILED_KEY:format("UnknownFailureNoItemName"),
	[PurchaseError.PurchaseDisabled] = PURCHASE_FAILED_KEY:format("PurchaseDisabled"),
	[PurchaseError.InvalidFunds] = PURCHASE_FAILED_KEY:format("InvalidFunds"),
	[PurchaseError.PremiumOnly] = PURCHASE_FAILED_KEY:format("PremiumOnly"),
}

return KeyMappings