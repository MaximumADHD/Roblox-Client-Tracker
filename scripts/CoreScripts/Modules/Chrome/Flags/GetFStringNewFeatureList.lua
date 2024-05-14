-- Format should be as follows: "feature1, feature2, feature3"
game:DefineFastString("NewFeatureList", "camera_entrypoint")

return function()
	return game:GetFastString("NewFeatureList")
end
