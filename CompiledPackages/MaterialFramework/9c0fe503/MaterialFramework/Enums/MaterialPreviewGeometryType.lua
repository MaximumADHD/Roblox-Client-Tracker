local Main = script:FindFirstAncestor("MaterialFramework")
local Types = require(Main.Types)

-- Geometry the preview renders a material on. A mesh geometry (e.g. Dominus) can be
-- added here and handled in MaterialPreview's buildPart if a non-primitive shape is
-- needed.
local MaterialPreviewGeometryType: { [string]: Types.MaterialPreviewGeometryType } = {
	Cube = "Cube",
	CubeCornerOn = "CubeCornerOn",
	Plane = "Plane",
	Sphere = "Sphere",
}

return table.freeze(MaterialPreviewGeometryType)
