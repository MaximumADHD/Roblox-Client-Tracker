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

local function getMainGui(): Instance?
	if isPluginSecurity() then
		return CoreGui
	end

	if Flags.FoundationOverlayResilientMainGui then
		if playerGui == nil then
			playerGui = getPlayerGui()
		end

		-- It's possible a LayerCollector has not been resolved by this point.
		-- Previously, we would throw an error but that would crash use cases that
		-- don't have a LayerCollector, like Luau Execution sessions (rocale-cli) or
		-- user-level plugins, like Flipbook.
		return playerGui
	else
		if not gotPlayerGui then
			playerGui = getPlayerGui()
			gotPlayerGui = true
		end

		if playerGui then
			return playerGui
		end

		error("PlayerGui not found")
	end
end

return getMainGui
