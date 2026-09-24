--[[
	Returns an array of MaterialVariant instances suitable for use in tests and
	stories. All texture image assets are by Roblox.
]]

local MaterialService = game:GetService("MaterialService")

local function getOrCreateFlagstone()
	local found = MaterialService:FindFirstChild("Flagstone")
	if found then
		return found
	end

	local result = Instance.new("MaterialVariant")
	result.Name = "Flagstone"
	result.BaseMaterial = Enum.Material.Pavement
	result.StudsPerTile = 8
	result.ColorMap = "rbxassetid://9809148719"
	result.MetalnessMap = "rbxassetid://8602642017"
	result.NormalMap = "rbxassetid://9809147846"
	result.RoughnessMap = "rbxassetid://9809147255"
	result.Archivable = false
	result.Parent = MaterialService
	return result
end

local function getOrCreateWallpaper()
	local found = MaterialService:FindFirstChild("Wallpaper")
	if found then
		return found
	end

	local result = Instance.new("MaterialVariant")
	result.Name = "Wallpaper"
	result.BaseMaterial = Enum.Material.Wood
	result.StudsPerTile = 4
	result.ColorMap = "rbxassetid://8602640896"
	result.MetalnessMap = "rbxassetid://8474851245"
	result.NormalMap = "rbxassetid://8602641773"
	result.RoughnessMap = "rbxassetid://8602641137"
	result.Archivable = false
	result.Parent = MaterialService
	return result
end

return function()
	return {
		getOrCreateFlagstone(),
		getOrCreateWallpaper(),
	}
end
