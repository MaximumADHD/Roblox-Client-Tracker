local RunService = game:GetService("RunService")
local isCli = pcall(function()
	return game:GetService("ProcessService")
end)
local isRunning = RunService:IsRunning()
-- The embedded storybook should only be run inside Studio
if isCli or not isRunning then
	return nil
end

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

local player = script:FindFirstAncestorWhichIsA("Player")

spawn(function()
	local splash = player.PlayerGui:WaitForChild("StorybookSplash", 10)
	if splash then
		splash:Destroy()
	end
end)

local gui = Instance.new("ScreenGui")
gui.Name = "StorybookEmbed"
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player.PlayerGui

local Packages = script.Packages :: any
local EmbeddedStorybook = require(Packages.DeveloperStorybook.Src.Util.EmbeddedStorybook)
EmbeddedStorybook.start(gui, player)

return nil
