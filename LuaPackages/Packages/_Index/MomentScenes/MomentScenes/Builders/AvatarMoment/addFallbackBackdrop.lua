--[[
	Floor + inverted sky sphere when the cyclorama cannot load.
	Stays inside scene.root — never Lighting.
]]

local function addFallbackBackdrop(root: Model)
	local floor = Instance.new("Part")
	floor.Name = "Floor"
	floor.Anchored = true
	floor.Size = Vector3.new(40, 1, 40)
	floor.Position = Vector3.new(0, -0.5, 0)
	floor.Color = Color3.fromRGB(40, 40, 48)
	floor.Material = Enum.Material.SmoothPlastic
	floor.Parent = root

	local sky = Instance.new("Part")
	sky.Name = "SkyDome"
	sky.Anchored = true
	sky.Shape = Enum.PartType.Ball
	sky.Size = Vector3.new(80, 80, 80)
	sky.Position = Vector3.new(0, 10, 0)
	sky.Color = Color3.fromRGB(18, 22, 40)
	sky.Material = Enum.Material.SmoothPlastic
	sky.CastShadow = false
	local mesh = Instance.new("SpecialMesh")
	mesh.MeshType = Enum.MeshType.Sphere
	mesh.Scale = Vector3.new(-1, -1, -1)
	mesh.Parent = sky
	sky.Parent = root
end

return addFallbackBackdrop
