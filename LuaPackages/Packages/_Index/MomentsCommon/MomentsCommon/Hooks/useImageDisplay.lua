local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local ContentProvider = game:GetService("ContentProvider")

local React = require(Packages.React)

local Signal = require(MomentsCommon.Utils.Signal)

local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef
local useToggleState = require(MomentsCommon.Hooks.useToggleState)

export type ImageDisplayController = {
	isLoadedRef: React.RefObject<boolean>,
	onImageLoadedSignalRef: React.RefObject,
	ref: React.RefObject<ImageLabel?>,
	updateRef: (imageLabel: ImageLabel) -> (),
}

local function useImageDisplay(_active: boolean, content: Content): ImageDisplayController
	local imageLabelRef = useRef(nil :: ImageLabel?)
	local currentContentUriRef = useRef(nil :: string?)

	local isLoadedRef = useRef(false)

	local onImageLoadedSignalRef = useRef(Signal.new())

	-- this toggles each time the ref is updated
	local refUpdateTracker = useToggleState(false)

	useEffect(function()
		local imageLabel = imageLabelRef.current
		if not imageLabel then
			return
		end

		if content then
			isLoadedRef.current = false

			if content.SourceType == Enum.ContentSourceType.Uri then
				currentContentUriRef.current = content.Uri
				task.spawn(function()
					ContentProvider:PreloadAsync({ content.Uri }, function(_previousContent, assetFetchStatus)
						if currentContentUriRef.current ~= content.Uri then
							return
						end

						if assetFetchStatus == Enum.AssetFetchStatus.Success then
							isLoadedRef.current = true
							onImageLoadedSignalRef.current:fire()
						end
					end)
				end)
			end

			if content.SourceType == Enum.ContentSourceType.Object then
				isLoadedRef.current = true
				onImageLoadedSignalRef.current:fire()
			end

			imageLabel.ImageContent = content
		end
	end, { refUpdateTracker.enabled, content })

	local updateRef = useCallback(function(imageLabel: ImageLabel)
		refUpdateTracker.toggle()
		imageLabelRef.current = imageLabel
	end, { refUpdateTracker.toggle })

	return {
		isLoadedRef = isLoadedRef,
		onImageLoadedSignalRef = onImageLoadedSignalRef,
		ref = imageLabelRef,
		updateRef = updateRef,
	}
end

return useImageDisplay
