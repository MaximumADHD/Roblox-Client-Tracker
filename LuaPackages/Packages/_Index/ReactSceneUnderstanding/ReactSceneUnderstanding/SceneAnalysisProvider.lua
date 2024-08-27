local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local Cryo = require(Root.Parent.Cryo)
local React = require(Root.Parent.React)
local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)
local SceneAnalysisContext = require(Root.SceneAnalysisContext)
local useTimer = require(Root.useTimer)
local useCurrentCamera = require(Root.useCurrentCamera)
local useCameraState = require(Root.useCameraState)
local useAudibleSounds = require(Root.audio.useAudibleSounds)
local enums = require(Root.enums)

local getSourceAssetsInView = SceneUnderstanding.getSourceAssetsInView
local getSourceAssetsInRange = SceneUnderstanding.getSourceAssetsInRange
local useCallback = React.useCallback
local useEffect = React.useEffect
local useState = React.useState

export type Props = {
	-- The rate that assets in the viewport are polled at. This is used by
	-- SceneAnalysisProvider to periodically scan for new assets
	--
	-- Deprecated since v0.2.0
	pollingSeconds: number?,

	-- Controls the behavior of viewport-based querying
	viewportQueryOptions: SceneUnderstanding.ViewportQueryOptions?,

	-- Controls the behavior of range-based querying
	rangeQueryOptions: SceneUnderstanding.RangeQueryOptions?,

	-- Controls the behavior of DataModel traversal
	dataModelTraversalOptions: SceneUnderstanding.DataModelTraversalOptions?,

	children: React.Node?,
}

local defaultProps = {
	pollingSeconds = math.huge,
}

type InternalProps = typeof(defaultProps) & Props

--[=[
	A React context provider that continually analyzes the scene for Source Assets.

	The hooks in this package rely on this provider existing in the React tree.

	Usage:

	```lua
	local ReactSceneUnderstanding = require(ReplicatedStorage.Packages.ReactSceneUnderstanding)

	local function App()
		return React.createElement(ReactSceneUnderstanding.SceneAnalysisProvider, nil, {
			-- ...
		})
	end

	return App
	```

	Props:

	```lua
	-- The rate that assets in the viewport are polled at. This is used by
	-- SceneAnalysisProvider to periodically scan for new assets
	--
	-- Deprecated since v0.2.0
	pollingSeconds: number?,

	-- Controls the behavior of viewport-based querying
	viewportQueryOptions: SceneUnderstanding.ViewportQueryOptions?,

	-- Controls the behavior of range-based querying
	rangeQueryOptions: SceneUnderstanding.RangeQueryOptions?,

	-- By default `workspace.CurrentCamera` is used, which is what most use
	-- cases will need. This prop exists so it's easier to write tests
	camera: Camera?,

	children: React.Node?,
	```

	@prop SceneAnalysisProvider React.Node
	@within ReactSceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function SceneAnalysisProvider(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)
	local assetsInView, setAssetsInView = useState({})
	local assetsInRange, setAssetsInRange = useState({})
	local camera = useCurrentCamera()
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
		local sourceAssetsInView = getSourceAssetsInView(camera, props.viewportQueryOptions)
		setAssetsInView(function(prev)
			return if shouldUpdate(prev, sourceAssetsInView) then sourceAssetsInView else prev
		end)

		local sourceAssetsInRange = getSourceAssetsInRange(camera.CFrame.Position, props.rangeQueryOptions)
		setAssetsInRange(function(prev)
			return if shouldUpdate(prev, sourceAssetsInRange) then sourceAssetsInRange else prev
		end)
	end, {
		camera,
		props.viewportQueryOptions,
		props.rangeQueryOptions,
	})

	useTimer(props.pollingSeconds, updateSourceAssets)

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

	local soundsByAudibility = useAudibleSounds({ game }, props.dataModelTraversalOptions)

	return React.createElement(SceneAnalysisContext.Provider, {
		value = {
			soundsByAudibility = soundsByAudibility,
			assetsInView = assetsInView,
			assetsInRange = assetsInRange,
		},
	}, props.children)
end

return SceneAnalysisProvider
