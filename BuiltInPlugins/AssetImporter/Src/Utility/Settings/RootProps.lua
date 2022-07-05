local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)
local getFFlagUseAssetImportSession = require(Plugin.Src.Flags.getFFlagUseAssetImportSession)

local AssetImportService = game:GetService("AssetImportService")

local function hideIfAvatar(rootSettings, assetImportSession)
	if getFFlagUseAssetImportSession() then
		return assetImportSession:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
	else
		return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
	end
end

local function hideIfNotAvatar(rootSettings, assetImportSession)
	if getFFlagUseAssetImportSession() then
		return not assetImportSession:IsAvatar()
	else
		return not AssetImportService:IsAvatar()
	end
end

local function hideIfNotInsertToWorkspace(rootSettings)
	return not rootSettings.InsertInWorkspace
end

return {
	{
		Section = "FileGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "ImportAsModelAsset", Editable = true},
			{Name = "InsertInWorkspace", Editable = true},
			{Name = "InsertWithScenePosition", Editable = true, ShouldHide = hideIfNotInsertToWorkspace},
			{Name = "UseSceneOriginAsPivot", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = hideIfAvatar},
		},
	},
	{
		Section = "AvatarGeneral",
		Properties = {
			{Name = "RigType", Editable = true, ShouldHide = hideIfNotAvatar},
		},
	},
	{
		Section = "FileTransform",
		Properties = {
			{Name = "WorldForward", Editable = true, Dependencies = {"WorldUp"}},
			{Name = "WorldUp", Editable = true, Dependencies = {"WorldForward"}},
		},
	},
	{
		Section = "FileGeometry",
		Properties = {
			{Name = "ScaleUnit", Editable = true},
			{Name = "FileDimensions", Editable = false, Dependencies = {"ScaleUnit"}},
			{Name = "PolygonCount", Editable = false},
			{Name = "MergeMeshes", Editable = true},
			{Name = "InvertNegativeFaces", Editable = true},
		},
	},
}
