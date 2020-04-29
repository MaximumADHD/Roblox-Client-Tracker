local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local Workspace = game:GetService("Workspace")

local terrain

local function findTerrainAsync()
	terrain = nil

	local t = Workspace.Terrain

	if not t or not t:IsA("Terrain") then
		Workspace:GetPropertyChangedSignal("Terrain"):Wait()
		t = Workspace.Terrain
	end

	terrain = t
end

return function()
	assert(not DebugFlags.RunningUnderCLI(), "getTerrain() is disabled under CLI where Workspace.Terrain does not exist")

	if not terrain then
		findTerrainAsync()
	end

	return terrain
end
