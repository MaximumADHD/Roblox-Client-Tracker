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
        self.senders.sendEventDeferred("studio", "toolbox", "MarketplaceAssetImpression", AssetAnalytics.getTrackingAttributes(assetData))
        
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

    self.senders.sendEventDeferred("studio", "toolbox", "MarketplaceAssetPreview", AssetAnalytics.getTrackingAttributes(assetData)) 
end

return AssetAnalytics