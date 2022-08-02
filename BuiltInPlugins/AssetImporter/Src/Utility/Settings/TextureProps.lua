local Plugin = script.Parent.Parent.Parent.Parent
local PathProperty = require(Plugin.Src.Components.Properties.PathProperty)

local getFFlagAssetImportUsePropertyFactories = require(Plugin.Src.Flags.getFFlagAssetImportUsePropertyFactories)

if getFFlagAssetImportUsePropertyFactories() then
	return {
		{
			Section = "ObjectGeneral",
			Properties = {
				{Name = "ImportName", Editable = true},
				{Name = "FilePath", Editable = false, ComponentFactory = PathProperty},
			},
		},
	}
else
	return {
		{
			Section = "ObjectGeneral",
			Properties = {
				{Name = "ImportName", Editable = true},
				{Name = "FilePath", Editable = false, ValueType = "path"},
			},
		},
	}
end
