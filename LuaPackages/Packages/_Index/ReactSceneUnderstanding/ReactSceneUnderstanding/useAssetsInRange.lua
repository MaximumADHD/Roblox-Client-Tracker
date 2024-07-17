local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local SceneAnalysisContext = require(Root.SceneAnalysisContext)

--[=[
	Returns a list of Source Assets that are in range of the camera.

	To control the behavior of range detection, pass `rangeQueryOptions` to
	`SceneAnalysisProvider`.

	This can be used identically to `useAssetsInView`, where the only difference
	is the assets returned are retrieved via a range check, rather than viewport
	detection.

	@within ReactSceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function useAssetsInRange()
	local context: SceneAnalysisContext.SceneAnalysis = React.useContext(SceneAnalysisContext)
	return context.assetsInRange
end

return useAssetsInRange
