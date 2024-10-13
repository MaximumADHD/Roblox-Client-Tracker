local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)
local SceneAnalysisContext = require(Root.SceneAnalysisContext)
local useCurrentCamera = require(Root.useCurrentCamera)
local useCameraState = require(Root.useCameraState)
local enums = require(Root.enums)

local getSourceAssetsInView = SceneUnderstanding.getSourceAssetsInView
local getSourceAssetsInRange = SceneUnderstanding.getSourceAssetsInRange
local useCallback = React.useCallback
local useEffect = React.useEffect

type ViewportQueryOptions = SceneUnderstanding.ViewportQueryOptions
type RangeQueryOptions = SceneUnderstanding.RangeQueryOptions

local function useSourceAssets(options: {
	viewportQueryOptions: ViewportQueryOptions?,
	rangeQueryOptions: RangeQueryOptions?,
}?)
	local camera = useCurrentCamera()

	local sceneAnalysis = SceneAnalysisContext.use()
	local cameraState = useCameraState(camera)

	local shouldUpdate = useCallback(function(prev: { any }, new: { any })
		if #new == #prev then
			for _, value in prev do
				if not table.find(new, value) then
					return true
				end
			end

			return false
		else
			return true
		end
	end, {})

	local updateSourceAssets = useCallback(function()
		local sourceAssetsInView = getSourceAssetsInView(camera, if options then options.viewportQueryOptions else nil)
		sceneAnalysis.setAssetsInView(function(prev)
			return if shouldUpdate(prev, sourceAssetsInView) then sourceAssetsInView else prev
		end)

		local sourceAssetsInRange =
			getSourceAssetsInRange(camera.CFrame.Position, if options then options.rangeQueryOptions else nil)
		sceneAnalysis.setAssetsInRange(function(prev)
			return if shouldUpdate(prev, sourceAssetsInRange) then sourceAssetsInRange else prev
		end)
	end, { camera, options, sceneAnalysis } :: { unknown })

	useEffect(function()
		local conn = workspace.DescendantAdded:Connect(function(descendant)
			if SceneUnderstanding.isSourceAsset(descendant) then
				updateSourceAssets()
			end
		end)

		updateSourceAssets()

		return function()
			conn:Disconnect()
		end
	end, { updateSourceAssets })

	useEffect(function()
		if cameraState == enums.CameraState.Idle then
			updateSourceAssets()
		end
	end, { cameraState })

	return {
		assetsInRange = sceneAnalysis.assetsInRange,
		assetsInView = sceneAnalysis.assetsInView,
	}
end

return useSourceAssets
