--[[
	Constants applicable to the preview panel
]]

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)
local FFlagUseNewAnimationClipProvider = game:GetFastFlag("UseNewAnimationClipProvider_2")

local TABS_KEYS = {
	Avatars = "TAB_KEY_Avatars",
	Clothing = "TAB_KEY_Clothing",
	Animations = "TAB_KEY_Animations",

	None = "TAB_KEY_None",
}

local TABS_INFO = {
	[TABS_KEYS.Avatars] = {
		BundleIds = {
			109, -- Roblox Boy
			511, -- Bazooka Bones
			800, -- Goblin
			429, -- Magma Fiend
		},

		CanAddNew = true,
		PanelBlockerLocalizationKey = "PanelBlockerAddAvatar",
		InvalidAddLocalizationKey = "AvatarInvalidAdd",
		IsSelectedInstanceValid = function(item)
			return ItemCharacteristics.isFullyCagedCharacter(item)
		end,

		IsMultiSelect = false, --only one selection for all of sub grid tabs
		LayoutOrder = 1,
		LocalizationKey = Constants.LOCALIZATION_KEYS.Avatars,
	},
	[TABS_KEYS.Clothing] = {
		AssetIds = {
			7178735702, -- Camo T-Shirt
			7178744611, -- Flannel
			7178740556, -- Raglan
			6984769289, -- Knit Sweater
			7192543873, -- Puffer Jacket
			7192532009, -- Long Coat
			6984765766, -- Hoodie
			7192690731, -- Short Skirt
			7192695838, -- Long Skirt
			6984740059, -- Long Pants
			7192668209, -- Ripped Jeans
			7192683061, -- Long Shorts
			7192686536, -- Jean Shorts
			7192843096, -- Shoe 1
			7192846003, -- Shoe 2
			7193168012, -- Boot 1
			7193169059, -- Boot 2
			7193442167, -- Hair 1
			7193450455, -- Hair 2
			7193397693, -- Hair 3
		},

		CanAddNew = true,
		PanelBlockerLocalizationKey = "PanelBlockerAddClothing",
		InvalidAddLocalizationKey = "ClothingInvalidAdd",
		IsSelectedInstanceValid = function(item)
			return ItemCharacteristics.isFullyCagedClothing(item)
		end,

		IsMultiSelect = true, -- no restrictions on sub grid tabs
		LayoutOrder = 2,
		LocalizationKey = Constants.LOCALIZATION_KEYS.Clothing,
	},
	-- update AnimationIdToSequenceId when you update asset ids under animation tab
	[TABS_KEYS.Animations] = {
		AssetIds = {
			837009922,
			619528125,
			837011171,
			837013990,
			837012509,
			4849499887,
			3823158750,
			3716636630,
			3576717965,
			4689362868,
		},
		CanAddNew = true,
		PanelBlockerLocalizationKey = "PanelBlockerAddAnimation",
		InvalidAddLocalizationKey = "AnimationInvalidAdd",
		IsSelectedInstanceValid = function(item)
			if FFlagUseNewAnimationClipProvider then
				return item:IsA("AnimationClip")
			else
				return item:IsA("KeyframeSequence")
			end
		end,

		IsMultiSelect = false, --only one selection for all of sub grid tabs
		LayoutOrder = 3,
		LocalizationKey = Constants.LOCALIZATION_KEYS.Animations
	},
}

local AnimationIdToSequenceId = {
	[837009922] = 742638842,
	[619528125] = 616111295,
	[837011171] = 742637942,
	[837013990] = 742636889,
	[837012509] = 742639220,
	-- emotes
	[4849499887] = 4841405708,
	[3823158750] = 3337994105,
	[3716636630] = 3333499508,
	[3576717965] = 3337978742,
	[4689362868] = 4686925579,
}

local PreviewConstants = {}
PreviewConstants.TABS_INFO = TABS_INFO
PreviewConstants.TABS_KEYS = TABS_KEYS
PreviewConstants.AnimationIdToSequenceId = AnimationIdToSequenceId
PreviewConstants.PreviewAvatarName = "PreviewAvatar"

return PreviewConstants
