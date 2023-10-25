local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGuiModules = CoreGui:WaitForChild("RobloxGui").Modules

local SocialContextToastPackage = require(CorePackages.Workspace.Packages.SocialContextToasts)
local SocialContextToastContainer = SocialContextToastPackage.SocialContextToastContainer

local HttpRequest = require(CorePackages.Workspace.Packages.HttpRequest)
local httpRequest = HttpRequest.config({
    requestFunction = function(url, requestMethod, requestOptions)
        return HttpRequest.requestFunctions.HttpRbxApi(url, requestMethod, requestOptions)
    end
})
local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics

local IXPServiceWrapper = require(RobloxGuiModules.Common.IXPServiceWrapper)

local services = {
    networking = httpRequest,
    playersService = Players, 
    apolloClient = ApolloClient,
    analytics = Analytics.new(),
    ixpService = IXPServiceWrapper,
}

SocialContextToastContainer(services, game.GameId, game.PlaceId)
