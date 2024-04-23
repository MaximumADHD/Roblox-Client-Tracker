local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChat = AppChat.App.InExperienceAppChat

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AppChat"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.DisplayOrder = 7 -- above topbar

local root = ReactRoblox.createRoot(screenGui)
root:render(React.createElement(InExperienceAppChat, {
	apolloClient = ApolloClient,
}))
