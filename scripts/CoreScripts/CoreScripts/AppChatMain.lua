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

local MARGIN_SCALE = 0.15

local frame = Instance.new("Frame")
frame.Size = UDim2.fromScale(1, 1)
frame.BackgroundTransparency = 1
frame.BorderSizePixel = 0
frame.Parent = screenGui

local uiPadding = Instance.new("UIPadding")
uiPadding.PaddingTop = UDim.new(MARGIN_SCALE, 0)
uiPadding.PaddingBottom = UDim.new(MARGIN_SCALE, 0)
uiPadding.PaddingLeft = UDim.new(MARGIN_SCALE, 0)
uiPadding.PaddingRight = UDim.new(MARGIN_SCALE, 0)
uiPadding.Parent = screenGui

local root = ReactRoblox.createRoot(frame)
root:render(React.createElement(InExperienceAppChat, {
	apolloClient = ApolloClient,
}))
