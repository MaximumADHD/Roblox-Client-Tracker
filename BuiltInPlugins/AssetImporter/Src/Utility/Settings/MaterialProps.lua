local Plugin = script.Parent.Parent.Parent.Parent
local PathProperty = require(Plugin.Src.Components.Properties.PathProperty)

local getFFlagAssetImportUsePropertyFactories = require(Plugin.Src.Flags.getFFlagAssetImportUsePropertyFactories)

local function hideIfNotPbr(materialSettings)
	return not materialSettings.IsPbr
end

if getFFlagAssetImportUsePropertyFactories() then
	return {
		{
			Section = "ObjectGeneral",
			Properties = {
				{Name = "ImportName", Editable = true},
				{Name = "DiffuseFilePath", Editable = false, AllowPickFile = true, ComponentFactory = PathProperty},
				{Name = "NormalFilePath", Editable = false, AllowPickFile = true, ComponentFactory = PathProperty, ShouldHide = hideIfNotPbr},
				{Name = "MetalnessFilePath", Editable = false, AllowPickFile = true, ComponentFactory = PathProperty, ShouldHide = hideIfNotPbr},
				{Name = "RoughnessFilePath", Editable = false, AllowPickFile = true, ComponentFactory = PathProperty, ShouldHide = hideIfNotPbr},
			},
		},
	}
else
	return {
		{
			Section = "ObjectGeneral",
			Properties = {
				{Name = "ImportName", Editable = true},
				{Name = "DiffuseFilePath", Editable = false, AllowPickFile = true, ValueType = "path"},
				{Name = "NormalFilePath", Editable = false, AllowPickFile = true, ValueType = "path", ShouldHide = hideIfNotPbr},
				{Name = "MetalnessFilePath", Editable = false, AllowPickFile = true, ValueType = "path", ShouldHide = hideIfNotPbr},
				{Name = "RoughnessFilePath", Editable = false, AllowPickFile = true, ValueType = "path", ShouldHide = hideIfNotPbr},
			},
		},
	}
end
