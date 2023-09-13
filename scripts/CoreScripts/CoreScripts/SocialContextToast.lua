local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local SocialContextToastPackage = require(CorePackages.Workspace.Packages.SocialContextToasts)
local SocialContextToastContainer = SocialContextToastPackage.SocialContextToastContainer

local HttpRequest = require(CorePackages.Workspace.Packages.HttpRequest)
local httpRequest = HttpRequest.config({
    requestFunction = function(url, requestMethod, requestOptions)
        return HttpRequest.requestFunctions.HttpRbxApi(url, requestMethod, requestOptions)
    end
})
local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local services = {
    networking = httpRequest,
    playersService = Players, 
    game = game, 
    apolloClient = ApolloClient
}

SocialContextToastContainer(services)
