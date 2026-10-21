local Foundation = script:FindFirstAncestor("Foundation")

local Wrappers = require(Foundation.Utility.Wrappers)
local CoreGui = Wrappers.Services.CoreGui
local RunService = Wrappers.Services.RunService
local Players = Wrappers.Services.Players

local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)

local playerGui

local function getPlayerGui(): Instance?
	if not RunService:IsClient() or not Players.LocalPlayer or not RunService:IsRunning() then
		return nil
	end

	return Players.LocalPlayer:WaitForChild("PlayerGui", 3)
end

local function getMainGui(): Instance?
	if isPluginSecurity() then
		return CoreGui
	end

	if playerGui == nil then
		playerGui = getPlayerGui()
	end

	-- It's possible a LayerCollector has not been resolved by this point. Return
	-- nil rather than erroring so use cases without a LayerCollector, like Luau
	-- Execution sessions (rocale-cli) or user-level plugins like Flipbook, keep
	-- working.
	return playerGui
end

return getMainGui
