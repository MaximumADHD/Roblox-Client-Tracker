local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)

local function hideIfAvatar(groupSettings, assetImportSession)
	return assetImportSession:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
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
