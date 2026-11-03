--[[
	Local key light inside scene.root. Recipes must not touch Lighting.
]]

local function addKeyLight(root: Model)
	local lightPart = Instance.new("Part")
	lightPart.Name = "KeyLight"
	lightPart.Anchored = true
	lightPart.Transparency = 1
	lightPart.CanCollide = false
	lightPart.Size = Vector3.new(1, 1, 1)
	lightPart.Position = Vector3.new(-4, 8, 6)
	lightPart.Parent = root
	local pointLight = Instance.new("PointLight")
	pointLight.Brightness = 0.7
	pointLight.Range = 16
	pointLight.Color = Color3.fromRGB(255, 244, 220)
	pointLight.Parent = lightPart
end

return addKeyLight
