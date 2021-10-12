return {
	{
		Section = "FileGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "ImportAsModelAsset", Editable = true},
		},
	},
	{
		Section = "FileTransform",
		Properties = {
			{Name = "WorldForward", Editable = true, Dependencies = {"WorldUp"}},
			{Name = "WorldUp", Editable = true, Dependencies = {"WorldForward"}},
			{Name = "ZeroOrigin", Editable = true},
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
