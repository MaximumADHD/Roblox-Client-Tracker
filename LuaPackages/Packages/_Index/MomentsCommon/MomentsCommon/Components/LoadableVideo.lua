local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local ContentProvider = game:GetService("ContentProvider")

local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local Skeleton = Foundation.Skeleton
local View = Foundation.View

local LoadingState = require(MomentsCommon.Enums.LoadingState)
local getCropSize = require(MomentsCommon.Utils.getCropSize)
local getFitSize = require(MomentsCommon.Utils.getFitSize)

export type LoadableVideoProps = {
	AnchorPoint: Vector2?,
	BackgroundTransparency: number?,
	ClipsDescendants: boolean?,
	cornerRadius: number?,
	Looped: boolean?,
	onAbsoluteSizeChanged: (rbx: GuiObject) -> (),
	onLoaded: ({
		Resolution: Vector2,
	}) -> (),
	onResolutionChanged: ((Vector2) -> ())?,
	Playing: boolean?,
	Position: UDim2?,
	renderOnFailed: () -> React.ReactNode,
	scaleType: Enum.ScaleType?,
	Size: UDim2?,
	Video: string?,
	VideoContent: Content?,
	videoRef: React.Ref<VideoFrame>?,
	ZIndex: number?,
}

local LoadableVideo = function(props: LoadableVideoProps)
	local absoluteSize, setAbsoluteSize = React.useState(Vector2.new(0, 0))
	local loadingState, setLoadingState = React.useState(LoadingState.Loading)
	local resolution, setResolution = React.useState(Vector2.new(0, 0))

	React.useEffect(function()
		if props.Video == nil or props.Video == "" then
			return
		end

		local signal = ContentProvider:GetAssetFetchStatusChangedSignal(props.Video)
		local connection = signal:Connect(function(status)
			if status == Enum.AssetFetchStatus.Failure then
				setLoadingState(LoadingState.Failed)
			end
		end)

		return function()
			connection:Disconnect()
			setLoadingState(LoadingState.Loading)
		end
	end, { props.Video })

	local onAbsoluteSizeChanged = React.useCallback(function(rbx)
		setAbsoluteSize(rbx.AbsoluteSize)

		if props.onAbsoluteSizeChanged then
			props.onAbsoluteSizeChanged(rbx)
		end
	end, { props.onAbsoluteSizeChanged, setAbsoluteSize })

	local onResolutionChanged = React.useCallback(function(rbx)
		local newResolution: Vector2 = rbx.Resolution
		setResolution(newResolution)

		if props.onResolutionChanged then
			props.onResolutionChanged(newResolution)
		end
	end, { props.onResolutionChanged, setResolution } :: { any })

	local onVideoLoaded = React.useCallback(function(rbx)
		if loadingState == LoadingState.Loading then
			setLoadingState(LoadingState.Finished)
		end

		props.onLoaded(rbx)
	end, { loadingState, props.onLoaded } :: { any })

	if loadingState == LoadingState.Failed then
		return props.renderOnFailed()
	end

	return React.createElement(View, {
		AnchorPoint = props.AnchorPoint,
		BackgroundTransparency = props.BackgroundTransparency,
		ClipsDescendants = props.ClipsDescendants ~= false,
		isDisabled = true,
		onAbsoluteSizeChanged = onAbsoluteSizeChanged,
		Position = props.Position,
		Size = props.Size,
		ZIndex = props.ZIndex,
	}, {
		VideoFrame = React.createElement("VideoFrame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Looped = if props.Looped ~= nil then props.Looped else true,
			Playing = props.Playing,
			Position = UDim2.fromScale(0.5, 0.5),
			ref = props.videoRef,
			Size = if props.scaleType == Enum.ScaleType.Fit
				then getFitSize(absoluteSize, resolution)
				else getCropSize(absoluteSize, resolution),
			Video = props.Video,
			VideoContent = props.VideoContent,
			Visible = resolution.X > 0 and resolution.Y > 0,
			[React.Change.Resolution] = onResolutionChanged :: any,
			[React.Event.Loaded] = onVideoLoaded,
		}, {
			Corner = if props.cornerRadius
				then React.createElement("UICorner", {
					CornerRadius = UDim.new(0, props.cornerRadius),
				})
				else nil,
		}),

		Shimmer = if loadingState ~= LoadingState.Finished
			then React.createElement(Skeleton, {
				Size = UDim2.fromScale(1, 1),
				ZIndex = 2,
			})
			else nil,
	})
end

return LoadableVideo
