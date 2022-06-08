local enumToName = {
	[Enum.MaterialPattern.Regular] = "Regular",
	[Enum.MaterialPattern.Organic] = "Organic",
}

return function(materialPattern: Enum.MaterialPattern): string
	return enumToName[materialPattern]
end
