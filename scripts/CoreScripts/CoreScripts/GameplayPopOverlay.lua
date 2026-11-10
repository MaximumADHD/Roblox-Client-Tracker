local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local PopLatencyOverlay = require(CorePackages.Workspace.Packages.PopLatencyOverlay)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local folder = Instance.new("Folder")
folder.Name = "GameplayPopOverlay"
folder.Parent = CoreGui

local root = ReactRoblox.createRoot(folder)
-- StarterScript mounts this only when one of the two flags is on.
local component = if SharedFlags.FFlagEnableGameplayPopLatencyOverlay
	then PopLatencyOverlay.gameplay
	else PopLatencyOverlay.gameplayAdminOnly
root:render(React.createElement(component, {
	experienceService = (game :: any):GetService("ExperienceService"),
}))
