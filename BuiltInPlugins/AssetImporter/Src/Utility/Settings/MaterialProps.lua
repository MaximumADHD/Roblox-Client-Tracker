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
				{Name = "DiffuseFilePath", Editable = false, ComponentFactory = PathProperty},
				{Name = "NormalFilePath", Editable = false, ComponentFactory = PathProperty, ShouldHide = hideIfNotPbr},
				{Name = "MetalnessFilePath", Editable = false, ComponentFactory = PathProperty, ShouldHide = hideIfNotPbr},
				{Name = "RoughnessFilePath", Editable = false, ComponentFactory = PathProperty, ShouldHide = hideIfNotPbr},
			},
		},
	}
else
	return {
		{
			Section = "ObjectGeneral",
			Properties = {
				{Name = "ImportName", Editable = true},
				{Name = "DiffuseFilePath", Editable = false, ValueType = "path"},
				{Name = "NormalFilePath", Editable = false, ValueType = "path", ShouldHide = hideIfNotPbr},
				{Name = "MetalnessFilePath", Editable = false, ValueType = "path", ShouldHide = hideIfNotPbr},
				{Name = "RoughnessFilePath", Editable = false, ValueType = "path", ShouldHide = hideIfNotPbr},
			},
		},
	}
end
