local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local Shape = TerrainEnums.Shape
local Biome = TerrainEnums.Biome

local getAABBRegion = require(Plugin.Src.Util.getAABBRegion)
local getShapeFunction = require(Plugin.Src.Util.getShapeFunction)

local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

local seedArray
do
	math.randomseed(6180339)
	seedArray = {}
	for _ = 1, 999, 1 do
		table.insert(seedArray, math.random())
	end
end

local function computeMasterSeed(number)
	local numberString = tostring(number)

	local compositeNumber = 0
	for i = 1, #numberString, 1 do
		local char = numberString:sub(i, i)
		local digit = tonumber(char)

		if digit then
			compositeNumber = (compositeNumber + 6) * (digit + 5)
		else
			compositeNumber = (compositeNumber + 7) * (char:byte() + 3)
		end

		compositeNumber = compositeNumber % 61803
	end

	return compositeNumber
end

local function thresholdFilter(value, bottom, size)
	return (value <= bottom) and 0 or ((value >= bottom + size) and 1 or ((value - bottom) / size))
end

local function ridgedFilter(value)
	return (value < 0.5) and (value * 2) or (2 - (value * 2))
end

local function ridgedFlippedFilter(value)
	return (value < 0.5) and (1 - (value * 2)) or ((value * 2) - 1)
end

local function fractalize(operation, x, y, z, operationCount, scale, offset, gain)
	operationCount = operationCount or 3
	scale = scale or 0.5
	offset = offset or 0
	gain = gain or 1
	local totalValue = 0
	local totalScale = 0
	for i = 1, operationCount, 1 do
		local thisScale = scale^(i - 1)
		totalScale = totalScale + thisScale
		totalValue = totalValue + ((offset + (gain * operation(x, y, z, i))) * thisScale)
	end
	return totalValue / totalScale
end

local function findBiomeTransitionValue(biome, weight, value, averageValue)
	if biome == Biome.Arctic then
		return (weight > 0.2 and 1 or 0) * value
	elseif biome == Biome.Canyons then
		return (weight > 0.7 and 1 or 0) * value
	elseif biome == Biome.Mountains then
		local weight = weight^3 -- Improves the ease of mountains transitioning to other biomes
		return (averageValue * (1 - weight)) + (value * weight)
	else
		return (averageValue * (1 - weight)) + (value * weight)
	end
end

local function create(generateSettings, analytics)
	assert(generateSettings and type(generateSettings) == "table",
		"createGeneratorState requires a generate settings table")

	local mapCFrame = generateSettings.cframe
	local mapSize = generateSettings.size
	local biomeSelection = generateSettings.biomeSelection
	local biomeSize = generateSettings.biomeSize
	local haveCaves = generateSettings.haveCaves
	local seed = generateSettings.seed

	local shape = generateSettings.shape or Shape.Block
	local shapeFunc = getShapeFunction(shape)

	-- Turn given position and size into a region to work in
	-- but also allow precalc for region where applicable
	local mapRegion = generateSettings.aabb
	if not mapRegion then
		mapRegion = getAABBRegion(mapCFrame, mapSize)
	end

	-- the baseLevel is where the sea is expected to be generated
	local baseLevel = generateSettings.baseLevel
	local genMinY = generateSettings.genMinY
	local genMaxY = generateSettings.genMaxY

	-- only do a check
	if baseLevel == nil then
		baseLevel = mapRegion.CFrame.Position.Y
		genMinY = baseLevel - (mapRegion.Size.Y * 0.5)
		genMaxY = baseLevel + (mapRegion.Size.Y * 0.5)
	end
	local baseLevelOffset = ((genMaxY + genMinY) * 0.5) - baseLevel

	local masterSeed = computeMasterSeed(seed)

	-- Turn set of selected biomes into list
	-- If no biomes are selected, default to just hills
	local biomes = {}
	do
		for biome, selected in pairs(biomeSelection) do
			if selected then
				table.insert(biomes, biome)
			end
		end
		if #biomes == 0 then
			table.insert(biomes, Biome.Hills)
		end
	end
	local biomesCount = #biomes

	local biomeBlendPercent = 0.25
	local biomeBlendPercentInverse = 1 - biomeBlendPercent

	local biomePoints = table.create(9)
	-- 3*3 because vx = {-1, 0, 1}; vz = {-1, 0, 1}
	for i = 1, 3*3, 1 do
		biomePoints[i] = {
			x = 0,
			z = 0,
			distSquared = 0,
			biomeNoise = 0,
		}
	end

	-- Turn the region back into voxel coordinates
	local voxelSize = mapRegion.Size / Constants.VOXEL_RESOLUTION
	local voxelExtents = voxelSize / 2
	local mapPosition = mapRegion.CFrame.Position

	local mapPositionVoxel = mapPosition / Constants.VOXEL_RESOLUTION
	local cornerWorldVoxel = mapPositionVoxel - (voxelSize / 2)

	local sliceCount = voxelSize.x
	local sliceWidth = voxelSize.z
	local sliceHeight = voxelSize.y

	local mapHeight = 0.5 / (mapSize.Y / Constants.VOXEL_RESOLUTION)

	-- Preallocate the tables we're going to write into
	-- And then because we touch every voxel, we don't need to destroy or clear them each iteration
	local occupancyMap = table.create(1)
	local materialMap = table.create(1)
	for x = 1, 1, 1 do
		occupancyMap[x] = table.create(sliceHeight)
		materialMap[x] = table.create(sliceHeight)
		for y = 1, sliceHeight, 1 do
			occupancyMap[x][y] = table.create(sliceWidth, 0)
			materialMap[x][y] = table.create(sliceWidth, Enum.Material.Air)
		end
	end

	local waterLevel = 0.48
	local surfaceThickness = 0.018

	local canyonBandingMaterial = {Enum.Material.Rock, Enum.Material.Mud, Enum.Material.Sand, Enum.Material.Sand,
		Enum.Material.Sandstone, Enum.Material.Sandstone, Enum.Material.Sandstone,
		Enum.Material.Sandstone, Enum.Material.Sandstone, Enum.Material.Sandstone,}

	-- Default values to use for a biome if it's not in BiomeInfoFuncs below
	local defaultBiomeValue = 0.5
	local defaultBiomeSurface = Enum.Material.Grass
	local defaultBiomeFill = Enum.Material.Rock

	-- TODO: getPerlin, getNoise, BiomeInfoFuncs
	local getPerlin
	local getNoise
	local BiomeInfoFuncs
	local processVoxel

	do
		getPerlin = function (x, y, z, perlinSeed, scale, raw)
			perlinSeed = perlinSeed or 0
			scale = scale or 1
			local val = math.noise((x / scale) + (perlinSeed * 17) + masterSeed,
					(y / scale) - masterSeed,
					(z / scale) - (perlinSeed * perlinSeed))
			if not raw then
				return (val * 0.5) + 0.5
			else
				return val
			end
		end

		getNoise = function (x, y, z, noiseSeed)
			x = x or 0
			y = y or 0
			z = z or 0
			noiseSeed = noiseSeed or 7
			local targetindex = x + y + z + noiseSeed + masterSeed
				+ ((masterSeed - x) * (noiseSeed + z))
				+ ((noiseSeed - y) * (masterSeed + z))
			return seedArray[(math.floor(targetindex % #seedArray)) + 1]
		end

		local function mountainsOperation(x, y, z, i)
			return ridgedFilter(getPerlin(x, y, z, 100 + i, (1 / i) * 160))
		end

		-- Parameters x, y, z, verticalGradientTurbulence
		-- Returns choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
		BiomeInfoFuncs = {
			[Biome.Water] = function(x, y, z, verticalGradientTurbulence)
				local choiceBiomeValue = 0.36 + (getPerlin(x, y, z, 2, 50) * 0.08)
				local choiceBiomeSurface =
					(1 - verticalGradientTurbulence) < 0.44 and Enum.Material.Slate
					or Enum.Material.Sand
				local choiceBiomeFill = Enum.Material.Rock
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Marsh] = function(x, y, z, verticalGradientTurbulence)
				local preLedge = getPerlin(
					x + (getPerlin(x, 0, z, 5, 7, true) * 10) + (getPerlin(x, 0, z, 6, 30, true) * 50),
					0,
					z + (getPerlin(x, 0, z, 9, 7, true) * 10) + (getPerlin(x, 0, z, 10, 30, true) * 50),
					2,
					70) --could use some turbulence
				local grassyLedge = thresholdFilter(preLedge, 0.65, 0)
				local largeGradient = getPerlin(x, y, z, 4, 100)
				local smallGradient = getPerlin(x, y, z, 3, 20)
				local choiceBiomeValue = waterLevel - 0.04
					+ (preLedge * grassyLedge * 0.025)
					+ (largeGradient * 0.035)
					+ (smallGradient * 0.025)
				local choiceBiomeSurface =
					(grassyLedge >= 1) and Enum.Material.Grass
					or (1 - verticalGradientTurbulence < waterLevel - 0.01) and Enum.Material.Mud
					or (1 - verticalGradientTurbulence < waterLevel + 0.01) and Enum.Material.Ground
					or Enum.Material.Grass
				local choiceBiomeFill = Enum.Material.Slate
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Plains] = function(x, y, z, verticalGradientTurbulence)
				local rivulet = ridgedFlippedFilter(getPerlin(
					x + getPerlin(x, y, z, 17, 40) * 25,
					0,
					z + getPerlin(x, y, z, 19, 40) * 25,
					2,
					200))
				local rivuletThreshold = thresholdFilter(rivulet, 0.01, 0)

				local rockMap =
					thresholdFilter(ridgedFlippedFilter(getPerlin(x, 0, z, 101, 7)), 0.3, 0.7) -- Rocks
					* thresholdFilter(getPerlin(x, 0, z, 102, 50), 0.6, 0.05)                  -- Zoning

				local choiceBiomeValue = 0.5
					+ (getPerlin(x, y, z, 2, 100) * 0.02)
					+ (rivulet * 0.05)
					+ (rockMap * 0.05)
					+ (rivuletThreshold * 0.005)

				local verticalGradient = 1 - ((y - 1) / (mapHeight - 1))
				local surfaceGradient = (verticalGradient * 0.5) + (choiceBiomeValue * 0.5)
				local thinSurface = (surfaceGradient > 0.5 - surfaceThickness * 0.4)
					and (surfaceGradient < 0.5 + surfaceThickness * 0.4)
				local choiceBiomeSurface =
					(rockMap > 0) and Enum.Material.Rock
					or (not thinSurface) and Enum.Material.Mud
					or (thinSurface and rivuletThreshold <= 0) and Enum.Material.Water
					or (1 - verticalGradientTurbulence < waterLevel - 0.01) and Enum.Material.Sand
					or Enum.Material.Grass
				local choiceBiomeFill =
					(rockMap > 0) and Enum.Material.Rock
					or Enum.Material.Sandstone
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Canyons] = function(x, y, z, verticalGradientTurbulence)
				local canyonNoise = ridgedFlippedFilter(getPerlin(x, 0, z, 2, 200))
				local canyonNoiseTurbed = ridgedFlippedFilter(getPerlin(
					x + getPerlin(x, 0, z, 5, 20, true) * 20,
					0,
					z + getPerlin(x, 0, z, 9, 20, true) * 20,
					2,
					200))
				local sandbank = thresholdFilter(canyonNoiseTurbed, 0, 0.05)
				local canyonTop = thresholdFilter(canyonNoiseTurbed, 0.125, 0)
				local mesaSlope = thresholdFilter(canyonNoise, 0.33, 0.12)
				local mesaTop = thresholdFilter(canyonNoiseTurbed, 0.49, 0)
				local choiceBiomeValue = 0.42
					+ (getPerlin(x, y, z, 2, 70) * 0.05)
					+ (canyonNoise * 0.05)
					+ (sandbank * 0.04)                                           -- Canyon bottom slope
					+ (thresholdFilter(canyonNoiseTurbed, 0.05, 0) * 0.08)        -- Canyon cliff
					+ (thresholdFilter(canyonNoiseTurbed, 0.05, .075) * 0.04)     -- Canyon cliff top slope
					+ (canyonTop * 0.01)                                          -- Canyon cliff top ledge
					+ (thresholdFilter(canyonNoiseTurbed, 0.0575, 0.2725) * 0.01) -- Plane slope
					+ (mesaSlope * 0.06)                                          -- Mesa slope
					+ (thresholdFilter(canyonNoiseTurbed, 0.45,0) * 0.14)         -- Mesa cliff
					+ (thresholdFilter(canyonNoiseTurbed, 0.45, 0.04) * 0.025)    -- Mesa cap
					+ (mesaTop * 0.02)                                            -- Mesa top ledge
				local choiceBiomeSurface =
					(1 - verticalGradientTurbulence < waterLevel + 0.015) and Enum.Material.Sand        -- Biome blending in to lakes
					or (sandbank > 0 and sandbank < 1) and Enum.Material.Sand	                    -- Canyonbase sandbanks
					-- or (canyonTop > 0 and canyonTop <= 1 and mesaSlope <= 0) and Enum.Material.Grass -- Grassy canyon tops
					-- or (mesaTop > 0 and mesaTop <= 1) and Enum.Material.Grass                        -- Grassy mesa tops
					or Enum.Material.Sandstone
				local choiceBiomeFill = canyonBandingMaterial[math.ceil((1 - getNoise(1, y, 2)) * 10)]
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Hills] = function(x, y, z, verticalGradientTurbulence)
				local rivulet = ridgedFlippedFilter(getPerlin(
					x + getPerlin(x, y, z, 17, 20) * 20,
					0,
					z + getPerlin(x, y, z, 19, 20) * 20,
					2,
					200
					))^(1/2)
				local largeHills = getPerlin(x, y, z, 3, 60)
				local choiceBiomeValue = 0.48
					+ (largeHills * 0.05)
					+ (
						(0.05
							+ (largeHills * 0.1)
							+ (getPerlin(x, y, z, 4, 25) * 0.125))
						* rivulet)
				local surfaceMaterialGradient = ((1 - verticalGradientTurbulence) * 0.9) + (rivulet * 0.1)
				local choiceBiomeSurface =
					(surfaceMaterialGradient < waterLevel - 0.015) and Enum.Material.Mud
					or (surfaceMaterialGradient < waterLevel) and Enum.Material.Ground
					or Enum.Material.Grass
				local choiceBiomeFill = Enum.Material.Slate
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Dunes] = function(x, y, z, verticalGradientTurbulence)
				local duneTurbulence = getPerlin(x, 0, z, 227, 20) * 24
				local layer1 = ridgedFilter(getPerlin(x, 0, z, 201, 40))
				local layer2 = ridgedFilter(getPerlin((x / 10) + duneTurbulence, 0, z + duneTurbulence, 200, 48))
				local choiceBiomeValue = 0.4 + (0.1 * (layer1 + layer2))
				local choiceBiomeSurface = Enum.Material.Sand
				local choiceBiomeFill = Enum.Material.Sandstone
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Mountains] = function(x, y, z, verticalGradientTurbulence)
				local rivulet = ridgedFlippedFilter(getPerlin(
					x + getPerlin(x, y, z, 17, 20) * 20,
					0,
					z + getPerlin(x, y, z, 19, 20) * 20,
					2,
					200))
				local choiceBiomeValue = -0.4
					+ (fractalize(mountainsOperation, x, y / 20, z, 8, 0.65) * 1.2)
					+ (rivulet * 0.2)
				local choiceBiomeSurface =
					(verticalGradientTurbulence < 0.275) and Enum.Material.Snow
					or (verticalGradientTurbulence < 0.35) and Enum.Material.Rock
					or (verticalGradientTurbulence < 0.4) and Enum.Material.Ground
					or (1 - verticalGradientTurbulence < waterLevel) and Enum.Material.Rock
					or (1 - verticalGradientTurbulence < waterLevel + 0.01) and Enum.Material.Mud
					or (1 - verticalGradientTurbulence < waterLevel + 0.015) and Enum.Material.Ground
					or Enum.Material.Grass
				local choiceBiomeFill = Enum.Material.Rock
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Lavascape] = function(x, y, z, verticalGradientTurbulence)
				local crackX = x + getPerlin(x, y * 0.25, z, 21, 8, true) * 5
				local crackY = y + getPerlin(x, y * 0.25, z, 22, 8, true) * 5
				local crackZ = z + getPerlin(x, y * 0.25, z, 23, 8, true) * 5
				local crack1 = ridgedFilter(getPerlin(
					crackX + getPerlin(x, y, z, 22, 30, true) * 30,
					crackY,
					crackZ + getPerlin(x, y, z, 24, 30, true) * 30,
					2,
					120))
				local crack2 = ridgedFilter(getPerlin(crackX, crackY, crackZ, 3, 40))
					* ((crack1 * 0.25) + 0.75)
				local crack3 = ridgedFilter(getPerlin(crackX, crackY, crackZ, 4, 20))
					* ((crack2 * 0.25) + 0.75)

				local generalHills = thresholdFilter(getPerlin(x, y, z, 9, 40), 0.25, 0.5)
					* getPerlin(x, y, z, 10, 60)

				local cracks = math.max(0,
					1 - thresholdFilter(crack1, 0.975, 0) - thresholdFilter(crack2, 0.925, 0) - thresholdFilter(crack3, 0.9, 0))

				local spireVec = CFrame.Angles(0.7, 0.7, 0) * Vector3.new(crackX, crackY, crackZ)
				local spires = thresholdFilter(getPerlin(spireVec.x / 40, spireVec.y / 300, spireVec.z / 30, 123, 1), 0.6, 0.4)

				local choiceBiomeValue = waterLevel + 0.02
					+ (cracks * (0.5 + generalHills * 0.5) * 0.02)
					+ (generalHills * 0.05)
					+ (spires * 0.3)
					+ ((1 - verticalGradientTurbulence > waterLevel + 0.01 or spires > 0) and 0.04 or 0) -- This lets it lip over water

				local choiceBiomeFill =
					(spires > 0) and Enum.Material.Rock
					or (cracks < 1) and Enum.Material.CrackedLava
					or Enum.Material.Basalt
				local choiceBiomeSurface =
					(choiceBiomeFill == Enum.Material.CrackedLava
						and 1 - verticalGradientTurbulence < waterLevel) and Enum.Material.Basalt
					or choiceBiomeFill
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,

			[Biome.Arctic] = function(x, y, z, verticalGradientTurbulence)
				local preBoundary = getPerlin(
					x + getPerlin(x, 0, z, 5, 8, true) * 5,
					y / 8,
					z + getPerlin(x, 0, z, 9, 8, true) * 5,
					2,
					20)
				local boundary = ridgedFilter(preBoundary)
				local roughChunks = getPerlin(x, y / 4, z, 436, 2)
				local boundaryMask = thresholdFilter(boundary, 0.8, 0.1)
				local boundaryTypeMask = getPerlin(x, 0, z, 6, 74) - 0.5
				local boundaryComp
				if boundaryTypeMask < 0 then
					-- Divergent
					boundaryComp = (boundary > 1 + (boundaryTypeMask * 0.5)) and -0.17 or 0
				else
					-- Convergent
					boundaryComp = boundaryMask * 0.1 * roughChunks * boundaryTypeMask
				end
				local choiceBiomeValue = 0.55
					+ (boundary * 0.05 * boundaryTypeMask)  -- Soft slope up or down to boundary
					+ boundaryComp                          -- Convergent/divergent effects
					+ (getPerlin(x, 0, z, 123, 25) * 0.025) -- Gentle rolling slopes

				local choiceBiomeSurface =
					(1 - verticalGradientTurbulence < waterLevel - 0.1) and Enum.Material.Glacier
					or (boundaryMask > 0.6 and boundaryTypeMask > 0.1 and roughChunks > 0.5) and Enum.Material.Glacier
					or Enum.Material.Snow
				local choiceBiomeFill = Enum.Material.Glacier
				return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
			end,
		}

		--  Returns (Material material, number occupancy, bool hasHitAirAboveSurface)
		processVoxel = function (x, y, z, sliceHeight, worldVoxelX, worldVoxelZ, weightPoints, biomeNoCave)
			local totalOffsetY = ((y -1) * Constants.VOXEL_RESOLUTION) + mapPosition.Y - (sliceHeight * Constants.VOXEL_RESOLUTION * 0.5) + baseLevelOffset

			local totalRegionHeight = genMaxY - genMinY
			local lower =  totalOffsetY - genMinY

			local verticalGradient = 1 - (lower / totalRegionHeight)
			local verticalGradientTurbulence = (verticalGradient * 0.9) + (0.1 * getPerlin(worldVoxelX, y, worldVoxelZ, 107, 15))

			local choiceValue = 0
			local choiceSurface = Enum.Material.CrackedLava
			local choiceFill = Enum.Material.Rock

			if verticalGradient > 0.65 or verticalGradient < 0.1 then
				-- Under surface of every biome, don't get biome data
				choiceValue = 0.5

			elseif #biomes == 1 then
				-- No need to do averaging if there's only 1 biome
				local biomeFunc = BiomeInfoFuncs[biomes[1]]
				if biomeFunc then
					choiceValue, choiceSurface, choiceFill = biomeFunc(worldVoxelX, y, worldVoxelZ, verticalGradientTurbulence)
				else
					choiceValue, choiceSurface, choiceFill = defaultBiomeValue, defaultBiomeSurface, defaultBiomeFill
				end
			else
				local averageValue = 0

				for biome, info in pairs(weightPoints) do
					local biomeFunc = BiomeInfoFuncs[biome]
					if biomeFunc then
						local biomeValue, biomeSurface, biomeFill = biomeFunc(worldVoxelX, y, worldVoxelZ, verticalGradientTurbulence)
						info.biomeValue = biomeValue
						info.biomeSurface = biomeSurface
						info.biomeFill = biomeFill
					else
						info.biomeValue = defaultBiomeValue
						info.biomeSurface = defaultBiomeSurface
						info.biomeFill = defaultBiomeFill
					end

					averageValue = averageValue + (info.biomeValue * info.weight)
				end

				for biome, info in pairs(weightPoints) do
					local value = findBiomeTransitionValue(biome, info.weight, info.biomeValue, averageValue)
					if value > choiceValue then
						choiceValue = value
						choiceSurface = info.biomeSurface
						choiceFill = info.biomeFill
					end
				end
			end

			local preCaveComp = (verticalGradient * 0.5) + (choiceValue * 0.5)
			local surface = preCaveComp > 0.5 - surfaceThickness and preCaveComp < 0.5 + surfaceThickness
			local caves = 0

			if haveCaves                                                                  -- User wants caves
				and (not biomeNoCave or verticalGradient > 0.65)                      -- Biome allows caves or we're deep enough
				and not (surface and (1 - verticalGradient) < waterLevel + 0.005)     -- Caves only breach surface above sea level
				and not (surface and (1 - verticalGradient) > waterLevel + 0.58) then -- Caves don't go too high through mountains

				local ridged2 = ridgedFilter(getPerlin(worldVoxelX, y, worldVoxelZ, 4, 30))
				local caves2 = thresholdFilter(ridged2, 0.84, 0.01)

				local ridged3 = ridgedFilter(getPerlin(worldVoxelX, y, worldVoxelZ, 5, 30))
				local caves3 = thresholdFilter(ridged3, 0.84, 0.01)

				local ridged4 = ridgedFilter(getPerlin(worldVoxelX, y, worldVoxelZ, 6, 30))
				local caves4 = thresholdFilter(ridged4, 0.84, 0.01)

				local caveOpenings = surface and thresholdFilter(getPerlin(worldVoxelX, 0, worldVoxelZ, 143, 62), 0.35, 0)
					or 0

				caves = caves2 * caves3 * caves4 - caveOpenings
				caves = caves < 0 and 0 or caves > 1 and 1 or caves
			end

			local comp = preCaveComp - caves
			local smoothedResult = thresholdFilter(comp, 0.5, mapHeight)

			if 1 - verticalGradient < waterLevel -- Below water level
				and preCaveComp <= 0.5       -- Above surface
				and smoothedResult <= 0 then -- No terrain
				smoothedResult = 1
				choiceSurface = Enum.Material.Water
				choiceFill = Enum.Material.Water
				surface = true
			end

			local finalOccupancy = y == 1 and 1
				or smoothedResult

			local finalMaterial = smoothedResult <= 0 and Enum.Material.Air
				or surface and choiceSurface
				or choiceFill

			local hasHitAirAboveSurface = surface and (finalOccupancy <= 0 or finalMaterial == Enum.Material.Air)

			return finalMaterial, finalOccupancy, hasHitAirAboveSurface
		end
	end

	local state = {}

	state.currentSlice = 0
	state.materialMap = materialMap
	state.occupancyMap = occupancyMap

	state.cornerWorldVoxel = cornerWorldVoxel

	state.sliceCount = sliceCount
	state.sliceWidth = sliceWidth
	state.sliceHeight = sliceHeight

	state.mapCFrame = mapCFrame
	state.mapPosition = mapPosition
	state.mapSize = mapSize

	state.biomes = biomes
	state.biomeSize = biomeSize
	state.biomePoints = biomePoints
	state.biomesCount = biomesCount

	state.biomeBlendPercent = biomeBlendPercent
	state.biomeBlendPercentInverse = biomeBlendPercentInverse

	state.voxelExtents = voxelExtents

	state.shapeFunc = shapeFunc

	state.getPerlin = getPerlin
	state.getNoise = getNoise
	state.BiomeInfoFuncs = BiomeInfoFuncs
	state.processVoxel = processVoxel

	local numVoxels = tostring(voxelSize.X * voxelSize.Y * voxelSize.Z)
	if FFlagTerrainToolsUseDevFramework then
		if analytics then
			analytics:report("generateTerrain", numVoxels, biomeSize, seed)
		end
	else
		AnalyticsService:SendEventDeferred("studio", "Terrain", "GenerateTerrain", {
			userId = StudioService:GetUserId(),
			numVoxels = numVoxels,
			biomeSize = biomeSize,
			seed = seed,
			studioSId = AnalyticsService:GetSessionId(),
			placeId = game.PlaceId,
		})
	end

	return state
end

local function regionForCurrentSlice(state)
	local voxelExtents = state.voxelExtents
	local mapPosition = state.mapPosition
	local x = state.currentSlice

	local regionOffsetX = x - voxelExtents.X
	-- Translate our voxel coordinates into world coordinates, offsetted by target position
	local regionStart = (Vector3.new(regionOffsetX - 1, -voxelExtents.Y, -voxelExtents.Z) * Constants.VOXEL_RESOLUTION)
		+ mapPosition
	local regionEnd = (Vector3.new(regionOffsetX, voxelExtents.Y, voxelExtents.Z) * Constants.VOXEL_RESOLUTION)
		+ mapPosition
	local sliceRegion = Region3.new(regionStart, regionEnd):ExpandToGrid(Constants.VOXEL_RESOLUTION)

	return sliceRegion
end

local function isLastSlice(state)
	return state.currentSlice == state.sliceCount
end

local function generationProgress(state)
	return state.currentSlice / state.sliceCount
end

local function generateSlice(state, terrainInstance)
	local x = state.currentSlice

	local materialMap
	local occupancyMap

	if terrainInstance then
		local currRegion = regionForCurrentSlice(state)
		materialMap, occupancyMap = terrainInstance:ReadVoxels(currRegion, Constants.VOXEL_RESOLUTION)
	else
		materialMap = state.materialMap
		occupancyMap = state.occupancyMap
	end

	local mapCFrame = state.mapCFrame
	local mapSize = state.mapSize
	local mapVoxelExtent = mapSize / Constants.VOXEL_RESOLUTION / 2

	local voxelExtents = state.voxelExtents
	local cornerWorldVoxel = state.cornerWorldVoxel
	local cornerWorldVoxelX = cornerWorldVoxel.X
	local cornerWorldVoxelZ = cornerWorldVoxel.Z

	local sliceHeight = state.sliceHeight
	local sliceWidth = state.sliceWidth

	local biomes = state.biomes
	local biomeSize = state.biomeSize
	local biomePoints = state.biomePoints
	local biomesCount = state.biomesCount

	local biomeBlendPercent = state.biomeBlendPercent
	local biomeBlendPercentInverse = state.biomeBlendPercentInverse

	local getPerlin = state.getPerlin
	local getNoise = state.getNoise
	local processVoxel = state.processVoxel
	local shapeFunc = state.shapeFunc

	local worldVoxelX = cornerWorldVoxelX + x - 1

	for z = 1, sliceWidth, 1 do
		local worldVoxelZ = cornerWorldVoxelZ + z - 1

		local cellToBiomeX = (worldVoxelX / biomeSize)
			+ (getPerlin(worldVoxelX, 0, worldVoxelZ, 233, biomeSize * 0.3) * 0.25)
			+ (getPerlin(worldVoxelX, 0, worldVoxelZ, 235, biomeSize * 0.05) * 0.075)
		local cellToBiomeZ = (worldVoxelZ / biomeSize)
			+ (getPerlin(worldVoxelX, 0, worldVoxelZ, 234, biomeSize * 0.3) * 0.25)
			+ (getPerlin(worldVoxelX, 0, worldVoxelZ, 236, biomeSize * 0.05) * 0.075)

		local closestDistanceSquared = 10000000

		local biomeNoCave = false
		local weightTotal = 0

		for vx = -1, 1, 1 do
			for vz = -1, 1, 1 do
				local gridPointX = math.floor(cellToBiomeX + vx + 0.5)
				local gridPointZ = math.floor(cellToBiomeZ + vz + 0.5)

				-- De-uniforming grid for voronoi
				local pointX = gridPointX + ((getNoise(gridPointX, gridPointZ, 53) - 0.5) * 0.75)
				local pointZ = gridPointZ + ((getNoise(gridPointX, gridPointZ, 73) - 0.5) * 0.75)

				local distSquared = (pointX - cellToBiomeX)^2 + (pointZ - cellToBiomeZ)^2
				if distSquared < closestDistanceSquared then
					closestDistanceSquared = distSquared
				end

				-- Turn vx = {-1, 0, 1}; vx = {-1, 0, 1} into [1, 9]
				local bp = biomePoints[(vx + 1) + (3 * (vz + 1)) + 1]
				bp.x = pointX
				bp.z = pointZ
				bp.distSquared = distSquared
				bp.biomeNoise = getNoise(gridPointX, gridPointZ)
			end
		end

		local weightPoints = table.create(biomesCount)
		for _, point in ipairs(biomePoints) do
			local weight = point.distSquared == closestDistanceSquared and 1
				or (((math.sqrt(closestDistanceSquared) / math.sqrt(point.distSquared)) - biomeBlendPercentInverse)
					/ biomeBlendPercent)
			if weight > 0 then
				-- Smooth the biome transition from linear to cubic InOut
				weight = weight^2.1
				weightTotal = weightTotal + weight

				-- Inverting the noise so that it is limited as (0, 1]
				local biome = biomes[math.ceil(biomesCount * (1 - point.biomeNoise))]

				local info = weightPoints[biome] or {weight = 0}
				info.weight = info.weight + weight
				weightPoints[biome] = info
			end
		end

		for biome, info in pairs(weightPoints) do
			info.weight = info.weight / weightTotal

			-- Biomes that don't have caves that breach the surface
			if biome == Biome.Arctic then
				biomeNoCave = true
			end
		end

		local hasHitAir = false
		for y = 1, sliceHeight, 1 do
			-- Keep calculating voxels until we hit the surface
			local regionPos = Vector3.new(x, y, z) - voxelExtents

			local targetOccupancy = shapeFunc(regionPos, mapCFrame, mapVoxelExtent)

			if targetOccupancy > 0 then
				local material, occupancy, hasHitAirAboveSurface = processVoxel(x, y, z,
					sliceHeight, worldVoxelX, worldVoxelZ, weightPoints, biomeNoCave)
				if hasHitAirAboveSurface then
					break
				end
				targetOccupancy = targetOccupancy == 1 and occupancy or targetOccupancy

				materialMap[1][y][z] = material
				occupancyMap[1][y][z] = math.max(targetOccupancy, occupancyMap[1][y][z])
			end
		end
	end

	return materialMap, occupancyMap
end

-- providing the terrainInstance implies you want to read from the terrainInstance rather
-- than overwriting the exist terrain
local function nextSlice(state, terrainInstance)
	if isLastSlice(state) then
		return nil, nil
	end
	state.currentSlice = state.currentSlice + 1
	return generateSlice(state, terrainInstance)
end


return {
	create = create,
	regionForCurrentSlice = regionForCurrentSlice,
	generateSlice = generateSlice,
	nextSlice = nextSlice,
	isLastSlice = isLastSlice,
	generationProgress = generationProgress,
}
