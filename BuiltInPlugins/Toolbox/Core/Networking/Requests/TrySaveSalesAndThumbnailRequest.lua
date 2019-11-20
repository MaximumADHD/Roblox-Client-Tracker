--[[
	This file is responsible for try to save sales status and thumbnail. And go to the correct result screen when we done
	both request.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

-- assetId, number, defualt to 0 for new asset.
-- assetType, string, the asset type of the asset.
-- saleStatus, defined in Constants, use to set the sales status for the newly published asset.
-- price, number, only useful when the sales status is set to OnSale.
-- iconFile, userData, used for uploading thumbnail for asset.
return function(patchInfo)
	return function(store)
		local checkSales = false
		local checkThumbnail = false

		local allowedAssetTypesForRelease = store:getState().allowedAssetTypesForRelease

		local function onThumbnailSetSuccess(result)
			checkThumbnail = true
			-- Update the sale status and price
			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end
		end

		local function onThumbnailSetFail(result)
			checkThumbnail = true
			-- DEVTOOLS-3120
			-- In this case, we still consider the upload a success.
			-- We will need to tell the user that we failed to upload the thumbnail
			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end
		end

		local function onPriceSetSuccess(result)
			checkSales = true
			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end
		end

		local function onPriceSetFail(result)
			checkSales = true
			-- DEVTOOLS-3120
			-- In this case, we still consider the upload succuss.
			-- We will need to tell user failed to set the price.
			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end
		end

		if allowedAssetTypesForRelease[patchInfo.assetType] then
			if patchInfo.saleStatus then
				local salesStatusOverride = patchInfo.saleStatus

				-- Work around for setting the free plugins.
				if patchInfo.price and tonumber(patchInfo.price) <= 0 then
					salesStatusOverride = AssetConfigConstants.ASSET_STATUS.Free
				end

				patchInfo.networkInterface:configureSales(patchInfo.assetId, salesStatusOverride, patchInfo.price):andThen(
					onPriceSetSuccess, onPriceSetFail
				)
			end
		else -- Can't set the sales status.
			checkSales = true
		end

		if patchInfo.iconFile then
			patchInfo.networkInterface:uploadAssetThumbnail(patchInfo.assetId, patchInfo.iconFile):andThen(
				onThumbnailSetSuccess, onThumbnailSetFail
			)
		else
			checkThumbnail = true
		end

		-- You shouldn't be here. But if you do, we won't block you.
		if checkThumbnail and checkSales then
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
			store:dispatch(UploadResult(true))
		end
	end
end


