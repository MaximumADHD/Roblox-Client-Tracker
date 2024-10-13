local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)

local useState = React.useState

type SetState<T> = (state: (prev: T) -> T | T) -> ()

export type SceneAnalysis = {
	rangeQueryOptions: SceneUnderstanding.RangeQueryOptions?,
	viewportQueryOptions: SceneUnderstanding.ViewportQueryOptions?,
	dataModelTraversalOptions: SceneUnderstanding.DataModelTraversalOptions?,

	-- List of Source Assets that are currently visible in the Workspace
	assetsInView: { Instance },
	setAssetsInView: SetState<{ Instance }>,

	-- List of Source Assets that are in the Workspace and in range of the Camera.
	assetsInRange: { Instance },
	setAssetsInRange: SetState<{ Instance }>,

	-- List of Sound instances sorted by how audible the sound is to the user
	audibleSounds: { Sound },
	setAudibleSounds: SetState<{ Sound }>,
}

local Context = React.createContext(nil)

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

--[=[
	Stores global context relating to the analysis of the scene.

	Hooks like `useAssetsInRange`, `useAssetsInView`, and `useAudibleSounds`
	make use of this context to store their results as their operations can be
	intensive.

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

	-- Controls the behavior of DataModel traversal
	dataModelTraversalOptions: SceneUnderstanding.DataModelTraversalOptions?,

	children: React.Node?,
	```

	The options objects passed in as props will be used as the default for any
	hooks that also make use of them. For example, if
	`dataModelTraversalOptions` is supplied, then `useAudibleSounds` will make
	use of the global options by default.

	@prop SceneAnalysisProvider React.Node
	@within ReactSceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function SceneAnalysisProvider(props: Props): React.Node
	local sourceAssets, setSourceAssets = useState({})
	local assetsInView, setAssetsInView = useState({})
	local assetsInRange, setAssetsInRange = useState({})
	local audibleSounds, setAudibleSounds = useState({})

	return React.createElement(Context.Provider, {
		value = {
			rangeQueryOptions = props.rangeQueryOptions,
			viewportQueryOptions = props.viewportQueryOptions,
			dataModelTraversalOptions = props.dataModelTraversalOptions,

			sourceAssets = sourceAssets,
			setSourceAssets = setSourceAssets,

			assetsInView = assetsInView,
			setAssetsInView = setAssetsInView,

			assetsInRange = assetsInRange,
			setAssetsInRange = setAssetsInRange,

			audibleSounds = audibleSounds,
			setAudibleSounds = setAudibleSounds,
		},
	}, props.children)
end

local function use()
	local context = React.useContext(Context) :: SceneAnalysis?

	if context then
		return context
	else
		error(
			"attempt to use SceneAnalysisContext with no provider. Add `ReactSceneUnderstanding.SceneAnalysisProvider` to the React tree and try again"
		)
	end
end

return {
	Provider = SceneAnalysisProvider,
	use = use,
}
