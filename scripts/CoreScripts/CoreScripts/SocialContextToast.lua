local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local EventIngestService = game:GetService("EventIngestService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local SocialContextToastPackage = require(CorePackages.Workspace.Packages.SocialContextToasts)
local SocialContextToastContainer = SocialContextToastPackage.SocialContextToastContainer
local GetFFlagSocialContextToastEventStream = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSocialContextToastEventStream
local FFlagEnablePartyNudgeAfterJoin = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnablePartyNudgeAfterJoin
local GetFFlagEnableReferredPlayerJoinRemoteEvent =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableReferredPlayerJoinRemoteEvent
local GetFIntReferredPlayerJoinRemoteEventTimeout =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFIntReferredPlayerJoinRemoteEventTimeout
local FFlagLuaAppDefaultHttpRetry = 
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagLuaAppDefaultHttpRetry
local HttpRequest = require(CorePackages.Packages.HttpRequest)
local httpRequest = HttpRequest.config({
    requestFunction = function(url, requestMethod, requestOptions)
        return HttpRequest.requestFunctions.HttpRbxApi(url, requestMethod, requestOptions)
    end,
    maxRetryCount = if FFlagLuaAppDefaultHttpRetry then game:DefineFastInt("SocialContextToastHttpRetryCount", 4) else nil
})
local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest

local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper

local ReferredPlayerJoin = nil
if GetFFlagEnableReferredPlayerJoinRemoteEvent() then
    ReferredPlayerJoin = RobloxReplicatedStorage:WaitForChild("ReferredPlayerJoin", GetFIntReferredPlayerJoinRemoteEventTimeout()) :: RemoteEvent
end

local ShowFriendJoinedPlayerToast = nil
local ShowPlayerJoinedFriendsToast = nil
local FIntFriendPlayerJoinedRemoteEventTimeout = game:DefineFastInt("FriendPlayerJoinedRemoteEventTimeout", 5)
if FFlagEnablePartyNudgeAfterJoin then
    ShowFriendJoinedPlayerToast = RobloxReplicatedStorage:WaitForChild("ShowFriendJoinedPlayerToast", FIntFriendPlayerJoinedRemoteEventTimeout) :: RemoteEvent
    ShowPlayerJoinedFriendsToast = RobloxReplicatedStorage:WaitForChild("ShowPlayerJoinedFriendsToast", FIntFriendPlayerJoinedRemoteEventTimeout) :: RemoteEvent
end

local services = {
    networking = httpRequest,
    playersService = Players, 
    apolloClient = ApolloClient,
    analytics = Analytics.new(),
    ixpService = IXPServiceWrapper,
    eventIngest = EventIngest.new(EventIngestService),
    referredPlayerJoinRemoteEvent = ReferredPlayerJoin,
    showFriendJoinedPlayerToastRemoteEvent = ShowFriendJoinedPlayerToast,
    showPlayerJoinedFriendsToastRemoteEvent = ShowPlayerJoinedFriendsToast,
}

SocialContextToastContainer(
    services, 
    if GetFFlagSocialContextToastEventStream() then tostring(game.GameId) else game.GameId, 
    if GetFFlagSocialContextToastEventStream() then tostring(game.PlaceId) else game.PlaceId
)
