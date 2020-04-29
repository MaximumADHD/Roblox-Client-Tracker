--!nocheck

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Cryo = require(CorePackages.Cryo)
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)

local Analytics = {}

local INSPECT_TAG = "inspectAndBuy"

function Analytics.new(inspecteeUid, ctx)
	Analytics.eventStream = EventStream.new()
	Analytics.pid = tostring(game.PlaceId)
	Analytics.uid = tostring(Players.LocalPlayer.UserId)
	Analytics.feature = "inspectAndBuy"
	Analytics.inspecteeUid = inspecteeUid
	Analytics.ctx = ctx

	local service = {}

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

	return service
end

function Analytics:report(eventName, additionalFields)
	local requiredFields = {
		pid = Analytics.pid,
		uid = Analytics.uid,
		inspecteeUid = Analytics.inspecteeUid,
		feature = INSPECT_TAG,
	}

	local fields = Cryo.Dictionary.join(requiredFields, additionalFields)
	Analytics.eventStream:setRBXEventStream(Analytics.ctx, eventName, fields)
end

return Analytics