local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local App = require(Modules.LuaApp.Components.App)

-- Common Setup
if game.Players.NumPlayers == 0 then
	game.Players.PlayerAdded:Wait()
end

-- Reduce render quality to optimize performance
if settings():GetFFlag("AppShellManagementRefactor") then
	local renderSteppedConnection = nil
	renderSteppedConnection = game:GetService("RunService").RenderStepped:connect(function()
		if renderSteppedConnection then
			renderSteppedConnection:Disconnect()
		end
		settings().Rendering.QualityLevel = 1
	end)
else
	settings().Rendering.QualityLevel = 1
end

local root = Roact.createElement(App)
Roact.reify(root, CoreGui, "App")