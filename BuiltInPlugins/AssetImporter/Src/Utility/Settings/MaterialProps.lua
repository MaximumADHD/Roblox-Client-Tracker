local function hideIfNotPbr(materialSettings)
	return not materialSettings.IsPbr
end


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
