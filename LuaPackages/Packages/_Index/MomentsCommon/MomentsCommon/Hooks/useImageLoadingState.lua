local ContentProvider = game:GetService("ContentProvider")

local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

return function(imageUri: string?): boolean
	local isLoaded, setIsLoaded = React.useState(false)

	React.useEffect(function()
		if not imageUri or imageUri == "" then
			setIsLoaded(false)
			return
		end

		local initialStatus = ContentProvider:GetAssetFetchStatus(imageUri)
		if initialStatus == Enum.AssetFetchStatus.Success then
			setIsLoaded(true)
			return
		end

		setIsLoaded(false)
		local isMounted = true

		task.spawn(function()
			ContentProvider:PreloadAsync({ imageUri }, function(assetId, assetFetchStatus)
				if isMounted and assetId == imageUri then
					if assetFetchStatus == Enum.AssetFetchStatus.Success then
						setIsLoaded(true)
					end
				end
			end)
		end)

		return function()
			isMounted = false
		end
	end, { imageUri })

	return isLoaded
end
