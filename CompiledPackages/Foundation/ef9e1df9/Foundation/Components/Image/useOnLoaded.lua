local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Wrappers = require(Foundation.Utility.Wrappers)
local ContentProvider = Wrappers.Services.ContentProvider

local Bindable = require(Foundation.Components.Types)
type Bindable<T> = Bindable.Bindable<T>

--[[
At the time of writing the only ways the same asset ID can be loaded multiple times (and trigger AssetFetchStatusChangedSignal multiple times) are:
 - The asset ID is loaded via an incorrect PreloadAsync call and also loaded through an image Instance's Image property. We are not supporting this use case, as it's invalid.
 - The asset ID loads a starting mip level and then attempts to load a higher mip level. This only currently happens if the first mip load succeeds.

Based on this, we can assume that the first status we get that's Success, Failure, or TimedOut is the final status and we can stop listening for changes.
]]

local function isFinalAssetFetchStatus(status: Enum.AssetFetchStatus): boolean
	return status == Enum.AssetFetchStatus.Success
		or status == Enum.AssetFetchStatus.Failure
		or status == Enum.AssetFetchStatus.TimedOut
end

local function attachOnLoaded(
	image: string?,
	onLoaded: (assetStatus: Enum.AssetFetchStatus) -> ()
): RBXScriptConnection?
	if image == nil then
		return
	end

	local assetStatus = ContentProvider:GetAssetFetchStatus(image)
	if isFinalAssetFetchStatus(assetStatus) then
		onLoaded(assetStatus)
		return
	end

	return ContentProvider:GetAssetFetchStatusChangedSignal(image):Connect(function(status: Enum.AssetFetchStatus)
		if isFinalAssetFetchStatus(status) then
			onLoaded(status)
		end
	end)
end

local function useOnLoaded(image: Bindable<string>?, onLoaded: ((Enum.AssetFetchStatus) -> ())?)
	React.useEffect(function()
		if not onLoaded then
			return
		end

		local connection: RBXScriptConnection?
		local function disconnectConnection()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end

		local function handleFinalStatus(status: Enum.AssetFetchStatus)
			disconnectConnection()
			onLoaded(status)
		end

		if ReactIs.isBinding(image) then
			local imageBinding = image :: React.Binding<string>
			connection = attachOnLoaded(imageBinding:getValue(), handleFinalStatus)

			local disconnectBinding = React.__subscribeToBinding(imageBinding, function(value: string)
				disconnectConnection()
				connection = attachOnLoaded(value, handleFinalStatus)
			end)

			return function()
				disconnectBinding()
				disconnectConnection()
			end
		else
			local imageString = image :: string?
			connection = attachOnLoaded(imageString, handleFinalStatus)

			return function()
				disconnectConnection()
			end
		end
	end, { image, onLoaded } :: { unknown })
end

return useOnLoaded
