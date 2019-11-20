local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)

local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

local OperationHelper = {}

OperationHelper.xOffset = {1, -1, 0,  0, 0,  0}
OperationHelper.yOffset = {0,  0, 1, -1, 0,  0}
OperationHelper.zOffset = {0,  0, 0,  0, 1, -1}

-- This should later be replaced with 0 once smooth terrain doesn't approximate 1/256 to 0.
-- This is causing small occupancies to become air
OperationHelper.one256th = 1 / 256

function OperationHelper.clampDownToVoxel(p)
	return math.floor(p / Constants.VOXEL_RESOLUTION) * Constants.VOXEL_RESOLUTION
end

function OperationHelper.clampUpToVoxel(p)
	return math.ceil(p / Constants.VOXEL_RESOLUTION) * Constants.VOXEL_RESOLUTION
end

function OperationHelper.getWaterHeightAndAirFillerMaterial(readMaterials)
	local airFillerMaterial = materialAir
	local waterHeight = 0

	for _, vx in ipairs(readMaterials) do
		for y, vy in ipairs(vx) do
			for _, vz in ipairs(vy) do
				if vz == materialWater then
					airFillerMaterial = materialWater
					if y > waterHeight then
						waterHeight = y
					end
				end
			end
		end
	end

	return waterHeight, airFillerMaterial
end

return OperationHelper
