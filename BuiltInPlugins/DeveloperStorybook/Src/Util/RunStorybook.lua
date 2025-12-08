--[[
  Setup script to put everything necessary to run the Embeded Storybook in place
]]

local RunService = game:GetService("RunService")

local isCli = pcall(function()
	-- selene: allow(incorrect_standard_library_use)
	return game:GetService("ProcessService")
end)

local isRunning = RunService:IsRunning()

-- The embedded storybook should only be run inside Studio
if isCli or not isRunning then
	return nil
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local StarterPlayer = game:GetService("StarterPlayer")

local Packages = (script :: any).Packages :: any

-- needed so tests do not break
if not Packages then
	return
end

-- Move server script to ServerScriptService
local onPlayerAddedScript = Packages.DeveloperStorybook.Src.Util.StorybookServer
onPlayerAddedScript.Parent = ServerScriptService

-- Add RemoteEvent to ReplicatedStorage
local remote = Instance.new("RemoteEvent")
remote.Name = "SelectComponent"
remote.Parent = ReplicatedStorage

-- Move everything else to StarterPlayerScripts, including self
-- selene: allow(incorrect_standard_library_use)
script.Parent = StarterPlayer.StarterPlayerScripts

-- Enable StorybookLocal
Packages.DeveloperStorybook.Src.Util.StorybookLocal.Enabled = true
