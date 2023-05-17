--[[
  Setup script to put everything necessary to run the Embeded Storybook in place
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local StarterPlayer = game:GetService("StarterPlayer")

local Packages = script.Packages :: any

-- Move server script to ServerScriptService
local onPlayerAddedScript = Packages.DeveloperStorybook.Src.Util.StorybookServer
onPlayerAddedScript.Parent = ServerScriptService

-- Add RemoteEvent to ReplicatedStorage
local remote = Instance.new("RemoteEvent")
remote.Name = "SelectComponent"
remote.Parent = ReplicatedStorage

-- Move everything else to StarterPlayerScripts, including self
script.Parent = StarterPlayer.StarterPlayerScripts

-- Enable StorybookLocal
Packages.DeveloperStorybook.Src.Util.StorybookLocal.Enabled = true
