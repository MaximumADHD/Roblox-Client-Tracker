local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)

local AssetImportService = game:GetService("AssetImportService")

return {
	{
		Section = "ObjectGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = function() return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting() end},
			-- {Name = "ImportAsModelAsset", Editable = true}, -- hidden for now as it is unsupported
			-- {Name = "InsertInWorkspace", Editable = true}, -- hidden for now as it is unsupported
		},
	},
}
