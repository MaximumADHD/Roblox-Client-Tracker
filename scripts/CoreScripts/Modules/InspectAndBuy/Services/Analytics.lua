--!nonstrict

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Cryo = require(CorePackages.Cryo)
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local Analytics = {}

Analytics.__index = Analytics
Analytics.__tostring = function()
	return "Service(Analytics)"
end

local INSPECT_TAG = "inspectAndBuy"

function Analytics.new(inspecteeUid, ctx)
	local service = {}

	setmetatable(service, Analytics)

	service.eventStream = EventStream.new(AnalyticsService)
	service.pid = tostring(game.PlaceId)
	service.uid = tostring(Players.LocalPlayer.UserId)
	service.feature = "inspectAndBuy"
	service.inspecteeUid = inspecteeUid
	service.ctx = ctx

	function service.reportOpenInspectMenu()
		local eventName = "inspectUser"
		local additionalFields = {}

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

	local function getPlatformString()
		local platform = UserInputService:GetPlatform()
		local platformStr = "Unknown"

		if platform == Enum.Platform.Windows then
			platformStr = "Windows"
		elseif platform == Enum.Platform.OSX then
			platformStr = "OSX"
		elseif platform == Enum.Platform.IOS then
			platformStr = "IOS"
		elseif platform == Enum.Platform.Android then
			local useragent = HttpService:GetUserAgent()
			if string.find(useragent, "AmazonAppStore") then
				platformStr = "Amazon"
			else
				platformStr = "Android"
			end
			if string.find(useragent, "OculusQuest3Store") then
				platformStr = "Quest"
			end
		elseif platform == Enum.Platform.XBoxOne or platform == Enum.Platform.XBox360 then
			platformStr = "XBox"
		elseif platform == Enum.Platform.UWP then
			platformStr = "UWP"
		elseif platform == Enum.Platform.PS4 or platform == Enum.Platform.PS3 or platform == Enum.Platform.PS5 then
			platformStr = "PlayStation"
		end

		return platformStr
	end

	service.platformStr = getPlatformString()

	function service.sendCounter(eventName)
		if RunService:IsStudio() then
			return
		end
		local counterName = INSPECT_TAG .. "_" .. service.platformStr .. "_" .. eventName

		AnalyticsService:ReportCounter(counterName)
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
