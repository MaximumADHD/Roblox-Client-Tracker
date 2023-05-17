local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local EmbeddedStorybook = require(script.Parent.EmbeddedStorybook)
local LocalPlayer = Players.LocalPlayer

local isCli = pcall(function()
	return game:GetService("ProcessService")
end)

local isRunning = RunService:IsRunning()
-- The embedded storybook should only be run inside Studio
if isCli or not isRunning or not LocalPlayer or not EmbeddedStorybook then
	return nil
end

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
spawn(function()
	local splash = PlayerGui:WaitForChild("StorybookSplash", 10)
	if splash then
		splash:Destroy()
	end
end)

local gui = Instance.new("ScreenGui")
gui.Name = "StorybookEmbed"
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = PlayerGui

EmbeddedStorybook.start(gui, LocalPlayer)
