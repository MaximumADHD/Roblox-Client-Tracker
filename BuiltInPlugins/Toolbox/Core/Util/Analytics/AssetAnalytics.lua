--!nocheck
-- TODO STM-151: Re-enable Luau Type Checks when Luau bugs are fixed

local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)

local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local getUserId = require(Plugin.Core.Util.getUserId)

local Analytics = require(script.Parent.Analytics)
local Senders = require(script.Parent.Senders)

type Array<T> = {[number]: T};
type Object<T> = {[string]: T};

type AssetContext = {
    category: string,
    toolboxTab: string,
    sort: string,
    searchKeyword: string,
    searchId: string?,
    page: number?,
    position: number?,
    pagePosition: number?,
};

export type AssetData = {
    Asset: {
        Id: number,
        TypeId: number,
    },
    -- TODO STM-151: Ideally this should be optional, but Luau type guards are not working (reported)
    Context: AssetContext,
};

type PageInfo = {
    searchTerm: string,
    targetPage: number,
    searchId: string?,
};

type TSenders = {
    sendEventDeferred: (string, string, string, Object<string>) -> any,
};

local AssetAnalytics = {}
AssetAnalytics.__index = AssetAnalytics

AssetAnalytics.InsertRemainsCheckDelays = {30, 600}

local EVENT_TARGET = "studio"
local EVENT_CONTEXT = "Marketplace"

--[[
    Handles tracking analytics for the lifecycle of assets inserted from Toolbox.
]]
function AssetAnalytics.new(senders: TSenders?)
    local self = {
        -- TODO STM-49: Cleanup old search records
        _searches = {},
        senders = senders or Senders,
    }

    return setmetatable(self, AssetAnalytics)
end

--[[
    Returns an AssetAnalytics instance with stubbed out senders
]]
function AssetAnalytics.mock()
    local sendEventDeferredCalls = {}
    local stubSenders: any = {
        sendEventDeferredCalls = sendEventDeferredCalls,
        sendEventDeferred = function(...)
            table.insert(sendEventDeferredCalls, {...})
        end,
    }
    return AssetAnalytics.new(stubSenders)
end

function AssetAnalytics.schedule(delayS: number, callback: () -> any)
    delay(delayS, callback)
end

function AssetAnalytics.addContextToAssetResults(assetResults: Array<Object<any>>, pageInfo: PageInfo)
    local context = AssetAnalytics.pageInfoToContext(pageInfo)
    for _, asset in ipairs(assetResults) do
        local contextClone = Cryo.Dictionary.join(context)
        asset.Context = contextClone
    end
end

function AssetAnalytics.pageInfoToContext(pageInfo: PageInfo) : AssetContext
    return {
        category = PageInfoHelper.getCategoryForPageInfo(pageInfo),
        toolboxTab = PageInfoHelper.getCurrentTab(pageInfo),
        sort = PageInfoHelper.getSortTypeForPageInfo(pageInfo),
        searchKeyword = pageInfo.searchTerm,
        page = pageInfo.targetPage,
        searchId = pageInfo.searchId,
    }
end

function AssetAnalytics.getAssetCategoryName(assetTypeId: number)
	for _, item in ipairs(Enum.AssetType:GetEnumItems()) do
		if item.Value == assetTypeId then
			return item.Name
		end
	end
    return ""
end

function AssetAnalytics.isAssetTrackable(assetData: AssetData)
    return assetData and assetData.Asset and assetData.Asset.Id and assetData.Context and assetData.Context.searchId
end

function AssetAnalytics.getTrackingAttributes(assetData: AssetData)
    local attributes = Cryo.Dictionary.join(assetData.Context, {
        assetId = assetData.Asset.Id,
        assetType = AssetAnalytics.getAssetCategoryName(assetData.Asset.TypeId),
        -- TODO STM-49: Do we get userId for free in EventIngest?
        userId = getUserId(),
        placeId = Analytics.getPlaceId(),
        platformId = Analytics.getPlatformId(),
        clientId = Analytics.getClientId(),
        studioSid = Analytics.getStudioSessionId(),
    })

    -- Senders expects string attributes
    for key, val in pairs(attributes) do
        attributes[key] = tostring(val)
    end

    return attributes
end

--[[
    Log an impression of an asset, if the asset has not already been viewed in the current view context
    this will trigger the MarketplaceAssetImpression analytic.
]]
function AssetAnalytics:logImpression(assetData: AssetData)
    if not AssetAnalytics.isAssetTrackable(assetData) then
        return
    end

    local assetId = assetData.Asset.Id
    local context = assetData.Context
    local searchId = context.searchId

    if not self._searches[searchId] then
        self._searches[searchId] = {
            impressions = {},
        }
    end

    local search = self._searches[searchId]

    if not search.impressions[assetId] then
        self.senders.sendEventDeferred(EVENT_TARGET, EVENT_CONTEXT, "MarketplaceAssetImpression", AssetAnalytics.getTrackingAttributes(assetData))
        
        search.impressions[assetId] = true
    end
end

--[[
    Log an opening of AssetPreview
]]
function AssetAnalytics:logPreview(assetData: AssetData)
    if not AssetAnalytics.isAssetTrackable(assetData) then
        return
    end

    self.senders.sendEventDeferred(EVENT_TARGET, EVENT_CONTEXT, "MarketplaceAssetPreview", AssetAnalytics.getTrackingAttributes(assetData)) 
end

function AssetAnalytics:logInsert(assetData: AssetData, insertionMethod: string, insertedInstance: Instance? | Array<Instance>?)
    if not AssetAnalytics.isAssetTrackable(assetData) then
        return
    end

    local insertionAttributes = Cryo.Dictionary.join({
        method = insertionMethod,
    }, AssetAnalytics.getTrackingAttributes(assetData))

    self.senders.sendEventDeferred(EVENT_TARGET, EVENT_CONTEXT, "MarketplaceInsert", insertionAttributes)

    if insertedInstance == nil then
        -- We have no way of tracking whether the inserted instance remains or is deleted if it is not supplied
        -- This is the case for plugin insertions
        return
    end

    for _, delay in ipairs(AssetAnalytics.InsertRemainsCheckDelays) do
        AssetAnalytics.schedule(delay, function()
            if type(insertedInstance) == "table" then
                -- Some assets insert multiple root level instances, in which case insertedInstance may be an array
                -- In this case, we only consider the first instance.
                self:logRemainsOrDeleted(delay, insertionAttributes, insertedInstance[1])
            else
                self:logRemainsOrDeleted(delay, insertionAttributes, insertedInstance)
            end
        end)
    end
end

function AssetAnalytics:logRemainsOrDeleted(delay: number, insertionAttributes: Object<any>, insertedInstance: Instance)
    local eventNameStem = (insertedInstance and insertedInstance.Parent) and "MarketplaceInsertRemains" or "MarketplaceInsertDeleted"
    self.senders.sendEventDeferred(EVENT_TARGET, EVENT_CONTEXT, eventNameStem .. tostring(delay), insertionAttributes)
end

return AssetAnalytics