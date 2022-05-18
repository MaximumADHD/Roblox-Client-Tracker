--!nonstrict

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Cryo = require(CorePackages.Cryo)
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)

local FFlagFixInspectAndBuyAnalyticsSingleton = game:DefineFastFlag("FixInspectAndBuyAnalyticsSingleton", false)

local Analytics = {}
if FFlagFixInspectAndBuyAnalyticsSingleton then
	Analytics.__index = Analytics
	Analytics.__tostring = function()
		return "Service(Analytics)"
	end
else
	Analytics.eventStream = nil
	Analytics.pid = nil
	Analytics.uid = nil
	Analytics.inspecteeUid = nil
	Analytics.ctx = nil
end

local INSPECT_TAG = "inspectAndBuy"

function Analytics.new(inspecteeUid, ctx)
	if not FFlagFixInspectAndBuyAnalyticsSingleton then
		Analytics.eventStream = EventStream.new()
		Analytics.pid = tostring(game.PlaceId)
		Analytics.uid = tostring(Players.LocalPlayer.UserId)
		Analytics.feature = "inspectAndBuy"
		Analytics.inspecteeUid = inspecteeUid
		Analytics.ctx = ctx
	end

	local service = {}

	if FFlagFixInspectAndBuyAnalyticsSingleton then
		setmetatable(service, Analytics)

		service.eventStream = EventStream.new()
		service.pid = tostring(game.PlaceId)
		service.uid = tostring(Players.LocalPlayer.UserId)
		service.feature = "inspectAndBuy"
		service.inspecteeUid = inspecteeUid
		service.ctx = ctx

		function service.reportOpenInspectMenu()
			local eventName = "inspectUser"
			local additionalFields = {
			}

			service:report(eventName, additionalFields)
		end

		function service.reportTryOnButtonClicked(itemType, itemID)
			local eventName = "tryItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			service:report(eventName, additionalFields)
		end

		function service.reportFavoriteItem(itemType, itemID, favorite, success, failureReason, favoriteCount)
			local eventName = "favoriteItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
				favorite = favorite,
				success = success,
				failureReason = failureReason,
				favoriteCount = favoriteCount,
			}

			service:report(eventName, additionalFields)
		end

		function service.reportPurchaseAttempt(itemType, itemID)
			local eventName = "purchaseAttemptItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			service:report(eventName, additionalFields)
		end

		function service.reportPurchaseSuccess(itemType, itemID)
			local eventName = "purchaseSuccessItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			service:report(eventName, additionalFields)
		end

		--[[
			itemType: Bundle/Asset
			itemID: BundleId/AssetId
		]]
		function service.reportItemDetailPageOpened(itemType, itemID)
			local eventName = "itemDetailView"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			service:report(eventName, additionalFields)
		end
	else
		setmetatable(service, {
			__tostring = function()
				return "Service(Analytics)"
			end
		})

		function service.reportOpenInspectMenu()
			local eventName = "inspectUser"
			local additionalFields = {
			}

			Analytics:report(eventName, additionalFields)
		end

		function service.reportTryOnButtonClicked(itemType, itemID)
			local eventName = "tryItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			Analytics:report(eventName, additionalFields)
		end

		function service.reportFavoriteItem(itemType, itemID, favorite, success, failureReason, favoriteCount)
			local eventName = "favoriteItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
				favorite = favorite,
				success = success,
				failureReason = failureReason,
				favoriteCount = favoriteCount,
			}

			Analytics:report(eventName, additionalFields)
		end

		function service.reportPurchaseAttempt(itemType, itemID)
			local eventName = "purchaseAttemptItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			Analytics:report(eventName, additionalFields)
		end

		function service.reportPurchaseSuccess(itemType, itemID)
			local eventName = "purchaseSuccessItem"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			Analytics:report(eventName, additionalFields)
		end

		--[[
			itemType: Bundle/Asset
			itemID: BundleId/AssetId
		]]
		function service.reportItemDetailPageOpened(itemType, itemID)
			local eventName = "itemDetailView"
			local additionalFields = {
				itemType = itemType,
				itemID = itemID,
			}

			Analytics:report(eventName, additionalFields)
		end
	end

	return service
end

function Analytics:report(eventName, additionalFields)
	local requiredFields = {
		pid = if FFlagFixInspectAndBuyAnalyticsSingleton then self.pid else Analytics.pid,
		uid = if FFlagFixInspectAndBuyAnalyticsSingleton then self.uid else Analytics.uid,
		inspecteeUid = if FFlagFixInspectAndBuyAnalyticsSingleton then self.inspecteeUid else Analytics.inspecteeUid,
		feature = INSPECT_TAG,
	}

	local fields = Cryo.Dictionary.join(requiredFields, additionalFields)
	if FFlagFixInspectAndBuyAnalyticsSingleton then
		self.eventStream:sendEventDeferred(self.ctx, eventName, fields)
	else
		Analytics.eventStream:setRBXEventStream(Analytics.ctx, eventName, fields)
	end
end

return Analytics
