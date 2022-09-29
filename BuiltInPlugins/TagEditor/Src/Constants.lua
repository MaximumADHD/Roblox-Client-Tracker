local Constants = {
	White = Color3.fromRGB(0, 0, 0),
	WorldProvider = {
		AdornedPartLimit = 200,
		CameraMinMovementStepForPartUpdate = 50,
	},
	WorldView = {
		BoxAdorn = {
			Size = Vector3.new(1.5, 1.5, 1.5),
			Transparency = 0.3,
			LineThickness = 0.03,
			SurfaceTransparency = 0.7,
		},
		OutlineAdorn = {
			Size = Vector3.new(1.5, 1.5, 1.5),
			Transparency = 0.3,
			LineThickness = 0.05,
		},
	},
}

return Constants
