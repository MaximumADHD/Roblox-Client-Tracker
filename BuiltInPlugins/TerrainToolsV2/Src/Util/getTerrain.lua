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
	if not terrain then
		findTerrainAsync()
	end

	return terrain
end
