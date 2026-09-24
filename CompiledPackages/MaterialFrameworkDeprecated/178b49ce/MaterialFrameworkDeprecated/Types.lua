local MaterialPreviewGeometryTypeEnum = require(script.Parent.Enums.MaterialPreviewGeometryType)

export type Material = Enum.Material | MaterialVariant

-- Enumerated preview shapes (see Enums/MaterialPreviewGeometryType.lua); members share one type.
export type MaterialPreviewGeometryType = typeof(MaterialPreviewGeometryTypeEnum.Cube)

export type CustomPreviewProps = {
	Size: UDim2,
}

export type Item = {
	Id: any?,
	Loading: boolean?,
	Material: Material?,
}

return nil
