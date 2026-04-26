local Foundation = script:FindFirstAncestor("Foundation")

local Wrappers = require(Foundation.Utility.Wrappers)
local CoreGui = Wrappers.Services.CoreGui
local RunService = Wrappers.Services.RunService
local Players = Wrappers.Services.Players

local Flags = require(Foundation.Utility.Flags)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)

local gotPlayerGui = false
local playerGui

local function getPlayerGui(): Instance?
	if not RunService:IsClient() or not Players.LocalPlayer or not RunService:IsRunning() then
		return nil
	end

	return Players.LocalPlayer:WaitForChild("PlayerGui", 3)
end

local function getMainGui(): Instance
	if not Flags.FoundationUseMainGuiUtility then
		error("FoundationUseMainGuiUtility is not enabled")
	end

	if isPluginSecurity() then
		return CoreGui
	end

	if not gotPlayerGui then
		playerGui = getPlayerGui()
		gotPlayerGui = true
	end

	if playerGui then
		return playerGui
	end

	error("PlayerGui not found")
end

return getMainGui
