local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Cryo = require(CorePackages.Cryo)
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)

local Analytics = {}

local INSPECT_TAG = "inspectAndBuy"

function Analytics.new()
	Analytics.eventStream = EventStream.new()
	Analytics.pid = tostring(game.PlaceId)
	Analytics.uid = tostring(Players.LocalPlayer.UserId)
	Analytics.feature = "inspectAndBuy"

	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(Analytics)"
		end
	})

	function service.reportOpenInspectMenu(ctx)
		local eventName = "inspectUser"
		local additionalFields = {
			ctx = ctx,
		}

		Analytics:report(eventName, additionalFields)
	end

	function service.reportTryOnButtonClicked(itemType, itemID, ctx)
		local eventName = "tryItem"
		local additionalFields = {
			itemType = itemType,
			itemID = itemID,
			ctx = ctx,
		}

		Analytics:report(eventName, additionalFields)
	end

	function service.reportFavoriteItem(itemType, itemID, favorite, success, failureReason, favoriteCount, ctx)
		local eventName = "favoriteItem"
		local additionalFields = {
			itemType = itemType,
			itemID = itemID,
			favorite = favorite,
			success = success,
			failureReason = failureReason,
			favoriteCount = favoriteCount,
			ctx = ctx,
		}

		Analytics:report(eventName, additionalFields)
	end

	function service.reportPurchaseAttempt(itemType, itemID, ctx)
		local eventName = "purchaseAttemptItem"
		local additionalFields = {
			itemType = itemType,
			itemID = itemID,
			ctx = ctx,
		}

		Analytics:report(eventName, additionalFields)
	end

	function service.reportPurchaseSuccess(itemType, itemID, ctx)
		local eventName = "purchaseSuccessItem"
		local additionalFields = {
			itemType = itemType,
			itemID = itemID,
			ctx = ctx,
		}

		Analytics:report(eventName, additionalFields)
	end

	return service
end

function Analytics:report(eventName, additionalFields)
	local requiredFields = {
		pid = Analytics.pid,
		uid = Analytics.uid,
		feature = INSPECT_TAG,
	}

	local fields = Cryo.Dictionary.join(requiredFields, additionalFields)
	Analytics.eventStream:setRBXEventStream(INSPECT_TAG, eventName, fields)
end

return Analytics