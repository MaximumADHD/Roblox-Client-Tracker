--!nonstrict

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Cryo = require(CorePackages.Cryo)
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)

local Analytics = {}

Analytics.__index = Analytics
Analytics.__tostring = function()
	return "Service(Analytics)"
end

local INSPECT_TAG = "inspectAndBuy"

function Analytics.new(inspecteeUid, ctx)
	local service = {}

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

	return service
end

function Analytics:report(eventName, additionalFields)
	local requiredFields = {
		pid = self.pid,
		uid = self.uid,
		inspecteeUid = self.inspecteeUid,
		feature = INSPECT_TAG,
	}

	local fields = Cryo.Dictionary.join(requiredFields, additionalFields)
	self.eventStream:sendEventDeferred(self.ctx, eventName, fields)
end

return Analytics
