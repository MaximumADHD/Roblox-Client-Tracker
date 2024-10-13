local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)

local SceneAnalysisContext = require(Root.SceneAnalysisContext)
local useSourceAssets = require(Root.useSourceAssets)

type RangeQueryOptions = SceneUnderstanding.RangeQueryOptions

--[=[
	Returns a list of Source Assets that are in range of the camera.

	This can be used identically to `useAssetsInView`, where the only difference
	is the assets returned are retrieved via a range check, rather than viewport
	detection.

	The `RangeQueryOptions` object is used to configure behavior for how Source
	Assets are discovered. For example, you can limit the hook to only return
	the first 10 Source Assets within a 100 stud radius.

	```lua
	local assets = useAssetsInRange({
		maxDistance = 100,
		limit = 10,
	})
	```

	@within ReactSceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function useAssetsInRange(options: RangeQueryOptions?)
	local sceneAnalysis = SceneAnalysisContext.use()

	local sourceAssets = useSourceAssets({
		rangeQueryOptions = if options then options else sceneAnalysis.rangeQueryOptions,
	})

	return sourceAssets.assetsInRange
end

return useAssetsInRange
