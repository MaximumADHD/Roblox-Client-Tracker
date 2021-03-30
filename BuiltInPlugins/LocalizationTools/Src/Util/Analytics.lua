--[[
	Analytics Utils
]]

local HttpService = game:GetService("HttpService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local DEPRECATED_RbxEntriesToWebEntries = require(Plugin.Src.Util.DEPRECATED_RbxEntriesToWebEntries)
local RbxEntriesToWebEntries = require(Plugin.Src.Util.RbxEntriesToWebEntries)

local FFlagLocalizationToolsAllowUploadZhCjv = game:GetFastFlag("LocalizationToolsAllowUploadZhCjv")

local Analytics = {}
Analytics.__index = Analytics

function Analytics.new(sender, logEvents)
	local self = {
		sender = sender or RbxAnalyticsService,
		context = "localizationPlugin",
		target = "studio",
		userId = StudioService:GetUserId(),
		logEvents = logEvents,
	}
	setmetatable(self, Analytics)
	return self
end

function Analytics:logEvent(eventName, args)
	if self.logEvents then
		local encodedArgs = HttpService:JSONEncode(args)
		print(string.format("Analytics: sendEventDeferred: \"%s\", %s", eventName, encodedArgs))
	end
end

function Analytics:sendEventDeferred(eventName, additionalArgs)
	local args = Cryo.Dictionary.join(additionalArgs, {
		uid = self.userId,
		gameId = game.GameId,
		placeId = game.PlaceId,
	})
	self.sender:SendEventDeferred(self.target, self.context, eventName, args)
	self:logEvent(eventName, args)
end

function Analytics:reportButtonPress(btnName, status)
	local eventName = "buttonPressed"
	local args = {
		btnName = btnName,
		status = status,
	}

	self:sendEventDeferred(eventName, args)
end

function Analytics:reportToolOpened(openMethod)
	local eventName = "toolOpened"
	local args = {
		method = openMethod,
	}

	self:sendEventDeferred(eventName, args)
end

function Analytics:reportUploadPatch(patchInfo, btnName)
	local eventName = "logLocalizationPerfStats"
	local args = {
		btnName = btnName,

		totalRows = patchInfo.totalRows,
		totalTranslations = patchInfo.totalTranslations,
		supportedLocales = patchInfo.supportedLocales,
		unsupportedLocales = patchInfo.unsupportedLocales,
		numChangedTranslations = patchInfo.numChangedTranslations,
		numRemovedTranslations = patchInfo.numRemovedTranslations,
		numAddedTranslations = patchInfo.numAddedTranslations,
		addedSupportedLanguages = patchInfo.newLanguages,
	}

	self:sendEventDeferred(eventName, args)
end

function Analytics:reportDownloadTable(table, btnName, allLanguages, localesToLanguages)
	local eventName = "logLocalizationPerfStats"

	local info
	if FFlagLocalizationToolsAllowUploadZhCjv then
		info = RbxEntriesToWebEntries(table:GetEntries(), allLanguages, localesToLanguages)
	else
		info = DEPRECATED_RbxEntriesToWebEntries(table:GetEntries(), allLanguages)
	end

	local args = {
		btnName = btnName,

		totalRows = info.totalRows,
		totalTranslations = info.totalTranslations,
		supportedLocales = info.supportedLocales,
		unsupportedLocales = info.unsupportedLocales,
	}
	self:sendEventDeferred(eventName, args)
end

function Analytics:reportUploadTable(patchInfo, btnName)
	local eventName = "logLocalizationPerfStats"
	local args = {
		btnName = btnName,

		totalRows = patchInfo.totalRows,
		totalTranslations = patchInfo.totalTranslations,
		supportedLocales = patchInfo.supportedLocales,
		unsupportedLocales = patchInfo.unsupportedLocales,
		numChangedTranslations = patchInfo.numChangedTranslations,
		numRemovedTranslations = patchInfo.numRemovedTranslations,
		numAddedTranslations = patchInfo.numAddedTranslations,
		addedSupportedLanguages = patchInfo.newLanguages,
	}
	self:sendEventDeferred(eventName, args)
end

function Analytics.mock()
	local mockSender = {
		SendEventDeferred = function() end,
	}
	return Analytics.new(mockSender)
end

return Analytics