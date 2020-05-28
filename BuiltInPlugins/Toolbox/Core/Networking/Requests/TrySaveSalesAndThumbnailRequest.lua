--[[
	This file is responsible for try to save sales status and thumbnail. And go to the correct result screen when we done
	both request.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)
local AssetConfigUtil = require(Plugin.Core.Util.AssetConfigUtil)

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

local FFlagShowAssetConfigReasons2 = game:GetFastFlag("ShowAssetConfigReasons2")
local FFlagDebugAssetConfigNetworkError = game:GetFastFlag("DebugAssetConfigNetworkError")
local FFlagEnableAssetConfigFreeFix2 = game:GetFastFlag("EnableAssetConfigFreeFix2")
local FFlagEnableNonWhitelistedToggle = game:GetFastFlag("EnableNonWhitelistedToggle")

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

		local function onThumbnailSetFail(err)
			checkThumbnail = true

			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end

			-- Tell the user the thumbnail failed to upload in the AssetUploadResult page.
			if FFlagShowAssetConfigReasons2 then
				store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.SET_ASSET_THUMBNAIL_FAILURE))
			end
		end

		local function onPriceSetSuccess(result)
			checkSales = true
			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end
		end

		local function onPriceSetFail(err)
			checkSales = true

			if checkSales and checkThumbnail then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end

			-- Tell the user the price set failed in the AssetUploadResult page.
			if FFlagShowAssetConfigReasons2 then
				store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.SET_ASSET_PRICE_FAILURE))
			end
		end

		if FFlagDebugAssetConfigNetworkError then
			local function failedToSetPrice()
				onPriceSetFail({responseBody = "Debug failed to set the price !! "})
			end

			failedToSetPrice()
			checkSales = true
		else
			if FFlagEnableNonWhitelistedToggle then
				if allowedAssetTypesForRelease then
					-- Whitelist
					if allowedAssetTypesForRelease[patchInfo.assetType] then
						if patchInfo.saleStatus then
							local salesStatusOverride = patchInfo.saleStatus

							if FFlagEnableAssetConfigFreeFix2 then
								-- we only try to override sales status if it's OnSale and price will determine what the status is.
								-- The status we got from the UI is only OnSale or OffSale. For plugins, we could set the price to 0. Only then
								-- the sale status will be Free.
								if AssetConfigUtil.isOnSale(salesStatusOverride) then
									if patchInfo.price then
										if tonumber(patchInfo.price) <= 0 then
											salesStatusOverride = AssetConfigConstants.ASSET_STATUS.Free
										else
											salesStatusOverride = AssetConfigConstants.ASSET_STATUS.OnSale
										end
									end
								end
							else
								if patchInfo.price and tonumber(patchInfo.price) <= 0 then
									salesStatusOverride = AssetConfigConstants.ASSET_STATUS.Free
								end
							end

							patchInfo.networkInterface:configureSales(patchInfo.assetId, salesStatusOverride, patchInfo.price):andThen(
								onPriceSetSuccess, onPriceSetFail
							)
						end
					else --None WhiteList
						-- For none whileListed the sales status will only be OffSale and Free.
						local salesStatusOverride = patchInfo.saleStatus
						salesStatusOverride = salesStatusOverride == AssetConfigConstants.ASSET_STATUS.OffSale and
							AssetConfigConstants.ASSET_STATUS.OffSale or
							AssetConfigConstants.ASSET_STATUS.Free

						patchInfo.networkInterface:configureSales(patchInfo.assetId, salesStatusOverride, 0):andThen(
							onPriceSetSuccess, onPriceSetFail
						)
					end
				else-- If we don't have whiteList creator info, we will be skipping this check.
					checkSales = true
				end
			else
				if allowedAssetTypesForRelease[patchInfo.assetType] then
					if patchInfo.saleStatus then
						local salesStatusOverride = patchInfo.saleStatus

						if FFlagEnableAssetConfigFreeFix2 then
							-- we only try to override sales status if it's OnSale and price will determine what the status is.
							-- The status we got from the UI is only OnSale or OffSale. For plugins, we could set the price to 0. Only then
							-- the sale status will be Free.
							if AssetConfigUtil.isOnSale(salesStatusOverride) then
								if patchInfo.price then
									if tonumber(patchInfo.price) <= 0 then
										salesStatusOverride = AssetConfigConstants.ASSET_STATUS.Free
									else
										salesStatusOverride = AssetConfigConstants.ASSET_STATUS.OnSale
									end
								end
							end
						else
							if patchInfo.price and tonumber(patchInfo.price) <= 0 then
								salesStatusOverride = AssetConfigConstants.ASSET_STATUS.Free
							end
						end

						patchInfo.networkInterface:configureSales(patchInfo.assetId, salesStatusOverride, patchInfo.price):andThen(
							onPriceSetSuccess, onPriceSetFail
						)
					end
				else -- Can't set the sales status.
					checkSales = true
				end
			end
		end

		if FFlagDebugAssetConfigNetworkError then
			local function failedToSetThumbnail()
				onThumbnailSetFail({responseBody = "Debug failed to set the thumbnail !! "})
			end

			failedToSetThumbnail()
			checkThumbnail = true
		else
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
end


