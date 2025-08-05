--!strict

local CorePackages = game:GetService("CorePackages")
local ContentProvider = game:GetService("ContentProvider")
local RunService = game:GetService("RunService")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)

local Skeleton = Foundation.Skeleton
local Image = Foundation.Image
local View = Foundation.View

--[[
In studio, due to the TextureManager cache, an image texture may be rendered even though the ContentProvider fetch status is stuck at None.
To get around this, we give the ContentProvider some time to update the status. If it hasn't changed by then, we assume the image is just 
cached and treat it as success.
--]]
local TREAT_NONE_AS_SUCCESS_DELAY_SECONDS = 1

export type Props = {
	Size: UDim2?,
	SizeConstraint: Enum.SizeConstraint?,
	LayoutOrder: number?,
	Image: string?,

	tag: string?,
	onActivated: (() -> ())?,
	onImageStateChanged: ((isImageLoaded: boolean) -> ())?,
}

return function(props: Props)
	local imageRef = React.useRef(nil)
	local imageDoneLoading, setImageDoneLoading = React.useState(false)

	local imageSuccessfullyLoaded = React.useRef(false)
	local setImageSuccessfullyLoaded = React.useCallback(function(value)
		if value == imageSuccessfullyLoaded.current then
			return
		end

		imageSuccessfullyLoaded.current = value
		if props.onImageStateChanged then
			props.onImageStateChanged(value)
		end
	end, { props.onImageStateChanged })

	React.useEffect(function()
		local image = props.Image
		if not image then
			setImageDoneLoading(false)
			setImageSuccessfullyLoaded(false)
			return
		end

		local imageChangedTime = time()
		local function checkImageState(): boolean
			local fetchStatus = ContentProvider:GetAssetFetchStatus(image)
			local treatNoneAsLoadSuccess = time() - imageChangedTime >= TREAT_NONE_AS_SUCCESS_DELAY_SECONDS
			local isStatusSuccess = fetchStatus == Enum.AssetFetchStatus.Success
				or (treatNoneAsLoadSuccess and fetchStatus == Enum.AssetFetchStatus.None)
			local instanceLoaded = if imageRef.current then imageRef.current.IsLoaded else false
			local imageSuccessfullyLoaded = instanceLoaded or isStatusSuccess
			setImageSuccessfullyLoaded(imageSuccessfullyLoaded)

			local isStatusFailure = fetchStatus == Enum.AssetFetchStatus.Failure
				or fetchStatus == Enum.AssetFetchStatus.TimedOut
			local imageDoneLoading = imageSuccessfullyLoaded or isStatusFailure
			setImageDoneLoading(imageDoneLoading)

			return imageDoneLoading
		end

		if checkImageState() then
			return
		end

		local connections: { RBXScriptConnection }?
		local function disconnect()
			if not connections then
				return
			end

			for _, v in connections do
				v:Disconnect()
			end
			connections = nil
		end

		local function onStateMayHaveChanged()
			if checkImageState() then
				disconnect()
			end
		end

		connections = {
			ContentProvider:GetAssetFetchStatusChangedSignal(image):Connect(onStateMayHaveChanged),
			RunService.RenderStepped:Connect(onStateMayHaveChanged),
		}

		return function()
			disconnect()
		end
	end, { props.Image, setImageSuccessfullyLoaded } :: { any })

	return React.createElement(View, {
		Size = props.Size,
		SizeConstraint = props.SizeConstraint,
		LayoutOrder = props.LayoutOrder,
	}, {
		skeleton = if not imageDoneLoading
			then React.createElement(Skeleton, {
				tag = "size-full-full",
			})
			else nil,
		image = if props.Image
			then React.createElement(Image, {
				ref = imageRef,
				tag = `size-full-full {props.tag}`,
				Image = props.Image,
				BackgroundTransparency = 1,
				ZIndex = 2,
				onActivated = props.onActivated,
			})
			else nil,
	})
end
