local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)
local getFFlagUseAssetImportSession = require(Plugin.Src.Flags.getFFlagUseAssetImportSession)

local AssetImportService = game:GetService("AssetImportService")

local function hideIfAvatar(groupSettings, assetImportSession)
	if getFFlagUseAssetImportSession() then
		return assetImportSession:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
	else
		return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
	end
end

return {
	{
		Section = "ObjectGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = hideIfAvatar},
			-- {Name = "ImportAsModelAsset", Editable = true}, -- hidden for now as it is unsupported
			-- {Name = "InsertInWorkspace", Editable = true}, -- hidden for now as it is unsupported
		},
	},
}
