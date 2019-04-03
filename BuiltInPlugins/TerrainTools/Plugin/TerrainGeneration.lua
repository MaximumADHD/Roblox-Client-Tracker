--Stickmasterluke

local module = {}

local GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)
local VerticallyScalingListFrame = require(script.Parent.Parent.Libs.VerticallyScalingListFrame)
local CollapsibleTitledSection = require(script.Parent.Parent.Libs.CollapsibleTitledSection)
local LabeledCheckbox = require(script.Parent.Parent.Libs.LabeledCheckbox)
local LabeledTextInput = require(script.Parent.Parent.Libs.LabeledTextInput)
local LabeledMultiChoice = require(script.Parent.Parent.Libs.LabeledMultiChoice)
local CustomTextButton = require(script.Parent.Parent.Libs.CustomTextButton)
local i18n = require(script.Parent.Parent.Libs.Localization)

local ProgressFrame = require(script.Parent.ProgressFrame)

local coreGui = game:GetService('CoreGui')
local changeHistoryService = game:GetService('ChangeHistoryService')
local terrain

local pluginGui
local screenGui

local terrainGenerationFrame 
local progressFrame 
local pauseButton
local cancelButton 
local barFill 


local kBiomesCheckboxHPadding = 24

local kBottomButtonsPadding = 20

local kProgressFrameObj = nil

local kBiomeData = {}
function setupBiomeData()
	if (#kBiomeData == 0) then 		
		kBiomeData = {
			Mountains = {
				LayoutOrder = 1,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeMountains"),
			},
			Canyons = {
				LayoutOrder = 2,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeCanyons"),
			},
			Dunes = {
				LayoutOrder = 3,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeDunes"),
			},
			Arctic = {
				LayoutOrder = 4,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeArctic"),
			},
			Lavaflow = {
				LayoutOrder = 5,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeLavaflow"),
			},
			Hills = {
				LayoutOrder = 6,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeHills"),
			},
			Plains = {
				LayoutOrder = 7,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomePlains"),
			},
			Marsh = {
				LayoutOrder = 8,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeMarsh"),
			},
			Water = {
				LayoutOrder = 9,
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeWater"),
			},
		}
	end
end


local kBiomeSizeChoices = {}
function setupBiomeSizeChoices()
	if (#kBiomeSizeChoices == 0) then 		
		kBiomeSizeChoices = {
			{
				Id = "Small", 
				Data = 50, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeSizeSmall")
			},
			{
				Id = "Medium", 
				Data = 100, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeSizeMedium")
			},
			{
				Id = "Large", 
				Data = 200, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeSizeLarge")
			},
			{
				Id = "Massive", 
				Data = 500, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.BiomeSizeMassive")
			},
		}
	end
end

local kMapSizeChoices = {}
function setupMapSizeChoices()
	if (#kMapSizeChoices == 0) then 		
		kMapSizeChoices = {
			{
				Id = "Small", 
				Data = 128, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.MapSizeSmall")
			},
			{
				Id = "Medium", 
				Data = 256, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.MapSizeMedium")
			},
			{
				Id = "Large", 
				Data = 512, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.MapSizeLarge")
			},
			{
				Id = "Massive", 
				Data = 1024, 
				Text = i18n.TranslateId("Studio.TerrainEditor.Generate.MapSizeMassive")
			},
		}
	end
end

local kSelectedBiomes = {
	['Mountains'] = true,
	['Canyons'] = false,
	['Dunes'] = false,
	['Arctic'] = false,
	['Lavaflow'] = false,
	['Hills'] = true,
	['Plains'] = true,
	['Marsh'] = false,
	['Water'] = false,
}


local on = false
local mouse = nil
local generating = false
local clearing = false
local paused = false
local cancelIt = false

local noise = math.noise
local min = math.min
local max = math.max
local sin = math.sin
local cos = math.cos
local floor = math.floor
local ceil = math.ceil
local sqrt = math.sqrt
local randomseed = math.randomseed
local random = math.random
local pi = math.pi
local tau = math.pi*2


---------Directly used in Generation---------
local masterSeed = 618033988
local mapWidth = 256
local mapHeight = 128
local biomeSize = 100
local generateCaves = false
local waterLevel = .48
local surfaceThickness = .018
local biomes = {}
---------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

local rock = Enum.Material.Rock
local snow = Enum.Material.Snow
local ice = Enum.Material.Glacier
local grass = Enum.Material.Grass
local ground = Enum.Material.Ground
local mud = Enum.Material.Mud
local slate = Enum.Material.Slate
local concrete = Enum.Material.Concrete
local lava = Enum.Material.CrackedLava
local basalt = Enum.Material.Basalt
local air = Enum.Material.Air
local sand = Enum.Material.Sand
local sandstone = Enum.Material.Sandstone
local water = Enum.Material.Water

local fill = rock

local range = {}
randomseed(6180339)
theseed={}
for i=1,999 do
	table.insert(theseed,math.random())
end

local function MakeMapSettingsFrame()
	-- Height will be adjusted.
	local mapSettingsObj = CollapsibleTitledSection.new('MapSettingsFrame', 
	  i18n.TranslateId('Studio.TerrainEditor.Generate.MapSettings'), 
	  true, 
	  true)

	-- The 'Map size' dropdown.
	-- The "Size" dropdown.	
	setupMapSizeChoices()
	local sizeMultiChoiceObj = LabeledMultiChoice.new("MapSize", 
		i18n.TranslateId('Studio.TerrainEditor.Generate.MapSize'),
	 	kMapSizeChoices)
	sizeMultiChoiceObj:SetValueChangedFunction(function(index) 
		mapWidth = kMapSizeChoices[index].Data
	end)
	sizeMultiChoiceObj:SetSelectedIndex(2)
		
	-- The 'Seed' text box.
	local seedTextBoxObj = LabeledTextInput.new("Seed", 
		i18n.TranslateId('Studio.TerrainEditor.Generate.Seed'), 
		masterSeed)
	local seedFrame = seedTextBoxObj:GetFrame()
	local function computeMasterSeed(text)
		local compositeNumber = 0
		for i=1,#text do
			local character = string.sub(text,i,i)
			local number = tonumber(character)
			if number then
				compositeNumber = (compositeNumber+6)*(number+5)
			else
				compositeNumber = (compositeNumber+7)*(string.byte(character)+3)
			end
			compositeNumber = compositeNumber%61803	--yes, this does need to be done after every character iteration, otherwise number loses precision by the end
		end
		masterSeed = compositeNumber
	end
	seedTextBoxObj:SetValueChangedFunction(computeMasterSeed)
	computeMasterSeed(tostring(masterSeed))

	-- The 'Caves' check box.
	local cavesObj = LabeledCheckbox.new("CavesFrame",
		i18n.TranslateId('Studio.TerrainEditor.Generate.Caves'), 
		generateCaves)
	cavesObj:SetValueChangedFunction(function(value)
		generateCaves = value
	end)

	-- Make contents of collapsible frame an auto-scaling list.
	GuiUtilities.MakeFrameAutoScalingList(mapSettingsObj:GetContentsFrame())

	-- Add these as striped fields in parent 
	GuiUtilities.AddStripedChildrenToListFrame(mapSettingsObj:GetContentsFrame(), 
		{sizeMultiChoiceObj:GetFrame(), seedFrame, cavesObj:GetFrame()})

	return mapSettingsObj:GetSectionFrame()
end

local function AddBiomeCheckbox(parentFrame, biomeId)
	local checkboxObj = LabeledCheckbox.new(biomeId, kBiomeData[biomeId].Text, kSelectedBiomes[biomeId])
	checkboxObj:SetValueChangedFunction(function(value)
		kSelectedBiomes[biomeId] = value
	end)
	checkboxObj:UseSmallSize()
	checkboxObj:GetFrame().LayoutOrder = kBiomeData[biomeId].LayoutOrder
	checkboxObj:GetFrame().Parent = parentFrame
end

local function MakeBiomesCheckboxes()
	local frame = GuiUtilities.MakeFrame("Checkboxes")

	local padding = Instance.new("UIPadding")
	padding.PaddingLeft = UDim.new(0, GuiUtilities.StandardLineLabelLeftMargin)
	padding.PaddingRight = UDim.new(0, GuiUtilities.StandardLineLabelLeftMargin)
	padding.Parent = frame
	
	-- Make a grid to put checkboxes in.
	local uiGridLayout = Instance.new("UIGridLayout")
	uiGridLayout.CellSize = LabeledCheckbox.kMinFrameSize
	uiGridLayout.CellPadding = UDim2.new(0, 
		kBiomesCheckboxHPadding,
		0,
		GuiUtilities.kStandardVMargin)
	uiGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	uiGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	uiGridLayout.Parent = frame
	uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder

	setupBiomeData()
	for biomeId, biomeData in pairs(kBiomeData) do 
		AddBiomeCheckbox(frame, biomeId)
	end

		-- Sync size with content size.
	GuiUtilities.AdjustHeightDynamicallyToLayout(frame, uiGridLayout)

	return frame
end

local function MakeBiomesCheckboxesWithTitle()
	local vsl = VerticallyScalingListFrame.new("bcwt")
	vsl:AddBottomPadding()
	
	local titleLabel = GuiUtilities.MakeFrameWithSubSectionLabel("Title", 
		i18n.TranslateId('Studio.TerrainEditor.Generate.Biomes'))
	vsl:AddChild(titleLabel)

	-- Container for cells.
	local cellFrame = MakeBiomesCheckboxes()
	vsl:AddChild(cellFrame)

	return vsl:GetFrame()
end

local function MakeBiomesSettingsFrame()
	-- Height will be updated dynamically.
	local biomesSettingsObj = CollapsibleTitledSection.new('BiomesSettingsFrame', 
	    i18n.TranslateId('Studio.TerrainEditor.Generate.BiomesSettings'), 
		true, 
		true)
	
	-- The "Size" dropdown.	
	setupBiomeSizeChoices()
	local sizeMultiChoiceObj = LabeledMultiChoice.new("SizeFrame", 
		i18n.TranslateId('Studio.TerrainEditor.Generate.BiomeSize'),
	 	kBiomeSizeChoices)
	sizeMultiChoiceObj:SetValueChangedFunction(function(index) 
		biomeSize = kBiomeSizeChoices[index].Data
	end)
	sizeMultiChoiceObj:SetSelectedIndex(2)

	-- The "Biomes" checkbox frame.
	local biomeCheckboxesFrame = MakeBiomesCheckboxesWithTitle()
	
	-- Make contents of collapsible frame an auto-scaling list.
	GuiUtilities.MakeFrameAutoScalingList(biomesSettingsObj:GetContentsFrame())

	-- add these as striped fields in parent.
	GuiUtilities.AddStripedChildrenToListFrame(biomesSettingsObj:GetContentsFrame(), {sizeMultiChoiceObj:GetFrame(), 
		biomeCheckboxesFrame})

	return biomesSettingsObj:GetSectionFrame()
end

local function MakeButtonsFrame()
	local frame = GuiUtilities.MakeFixedHeightFrame("Buttons", GuiUtilities.kBottomButtonsFrameHeight)
	frame.BackgroundTransparency = 1

	local clearButtonObj = CustomTextButton.new("ClearButton", 
		i18n.TranslateId('Studio.TerrainEditor.Generate.ButtonClear'))
	clearButtonObj:getButton().Parent = frame
	clearButtonObj:getButton().Size = UDim2.new(0, GuiUtilities.kBottomButtonsWidth, 0, GuiUtilities.kBottomButtonsHeight)
	clearButtonObj:getButton().Position = UDim2.new(0.5, -GuiUtilities.kBottomButtonsWidth - kBottomButtonsPadding/2,
		 1, -GuiUtilities.kBottomButtonsHeight)

	local generateButtonObj = CustomTextButton.new("GenerateButton", 
		i18n.TranslateId('Studio.TerrainEditor.Generate.ButtonGenerate'))
	generateButtonObj:getButton().Parent = frame
	generateButtonObj:getButton().Size = UDim2.new(0, GuiUtilities.kBottomButtonsWidth, 0, GuiUtilities.kBottomButtonsHeight)
	generateButtonObj:getButton().Position = UDim2.new(0.5, kBottomButtonsPadding/2, 
		1, -GuiUtilities.kBottomButtonsHeight)
	
	return frame
end

function MakeTerrainGenerationFrame()
	-- Create top level container.  
	-- It has no title bar.
	local verticallyScalingListFrameObj = VerticallyScalingListFrame.new("GenerationFrame")
	local verticallyScalingListFrame = verticallyScalingListFrameObj:GetFrame()

	local mapSettingsFrame = MakeMapSettingsFrame()
	mapSettingsFrame.Parent = verticallyScalingListFrame
	mapSettingsFrame.LayoutOrder = 1

	local biomesSettingsFrame = MakeBiomesSettingsFrame()
	biomesSettingsFrame.Parent = verticallyScalingListFrame
	biomesSettingsFrame.LayoutOrder = 2

	local buttonsFrame = MakeButtonsFrame()
	buttonsFrame.Parent = verticallyScalingListFrame
	buttonsFrame.LayoutOrder = 3

	return verticallyScalingListFrame
end

module.FirstTimeSetup = function(mouse, thePluginGui, theContentFrame)
	mouse = theMouse
	pluginGui = thePluginGui
	contentFrame = theContentFrame

	screenGui = Instance.new("ScreenGui")
	screenGui.Name = "TerrainBrushGui"

	-- Add Terrain Generation Frame(s)
	terrainGenerationFrame = MakeTerrainGenerationFrame()
	terrainGenerationFrame.Parent = contentFrame

	kProgressFrameObj = ProgressFrame.new()
	progressFrame = kProgressFrameObj:GetFrame()
	progressFrame.Parent = screenGui

	pauseButton = kProgressFrameObj:GetPauseButton()
	cancelButton = kProgressFrameObj:GetCancelButton()
	barFill = kProgressFrameObj:GetFill()

	pauseButton.MouseButton1Down:connect(function()
		paused = not paused
		updatePausedButton()
	end)
	
	cancelButton.MouseButton1Down:connect(function()
		if not cancelIt then
			cancelIt = true
			print('Canceled')
		end
	end)

	terrainGenerationFrame.Buttons.GenerateButton.MouseButton1Down:connect(function()
		-- A frame delay allows time for the button image to visually respond before the generation starts chugging away with processing.
		wait()
		generate()
	end)
	
	terrainGenerationFrame.Buttons.ClearButton.MouseButton1Down:connect(function()
		clearTerrain()
	end)
end

function checkRange(v)
	if not range.min or v < range.min then
		range.min = v
	end
	if not range.max or v > range.max then
		range.max = v
	end
end

local function getPerlin(x,y,z,seed,scale,raw)
	local seed = seed or 0
	local scale = scale or 1
	if not raw then
		return noise(x/scale+(seed*17)+masterSeed,y/scale-masterSeed,z/scale-seed*seed)*.5 + .5 -- accounts for bleeding from interpolated line
	else
		return noise(x/scale+(seed*17)+masterSeed,y/scale-masterSeed,z/scale-seed*seed)
	end
end


local function getNoise(x,y,z,seed1)
	local x = x or 0
	local y = y or 0
	local z = z or 0
	local seed1 = seed1 or 7
	local wtf=x+y+z+seed1+masterSeed + (masterSeed-x)*(seed1+z) + (seed1-y)*(masterSeed+z)		-- + x*(y+z) + z*(masterSeed+seed1) + seed1*(x+y)			--x+y+z+seed1+masterSeed + x*y*masterSeed-y*z+(z+masterSeed)*x	--((x+y)*(y-seed1)*seed1)-(x+z)*seed2+x*11+z*23-y*17
	return theseed[(floor(wtf%(#theseed)))+1]
end

local function thresholdFilter(value, bottom, size)
	if value <= bottom then
		return 0
	elseif value >= bottom+size then
		return 1
	else
		return (value-bottom)/size
	end
end

local function ridgedFilter(value)	--absolute and flip for ridges. and normalize
	return value<.5 and value*2 or 2-value*2
end

local function ridgedFlippedFilter(value)					--unflipped
	return value < .5 and 1-value*2 or value*2-1
end

local function advancedRidgedFilter(value, cutoff)
	local cutoff = cutoff or .5
	value = value - cutoff
	return 1 - (value < 0 and -value or value) * 1/(1-cutoff)
end


local function fractalize(operation,x,y,z, operationCount, scale, offset, gain)
	local operationCount = operationCount or 3
	local scale = scale or .5
	local offset = 0
	local gain = gain or 1
	local totalValue = 0
	local totalScale = 0
	for i=1, operationCount do
		local thisScale = scale^(i-1)
		totalScale = totalScale + thisScale
		totalValue = totalValue + (offset + gain * operation(x,y,z,i))*thisScale
	end
	return totalValue/totalScale
end


local function mountainsOperation(x,y,z,i)
	return ridgedFilter(getPerlin(x,y,z,100+i,(1/i)*160))
end

local canyonBandingMaterial = {rock,mud,sand,sand,sandstone,sandstone,sandstone,sandstone,sandstone,sandstone,}

local function findBiomeInfo(choiceBiome,x,y,z,verticalGradientTurbulence)
	local choiceBiomeValue = .5
	local choiceBiomeSurface = grass
	local choiceBiomeFill = rock
	if choiceBiome == 'City' then
		choiceBiomeValue = .55
		choiceBiomeSurface = concrete
		choiceBiomeFill = slate
	elseif choiceBiome == 'Water' then
		choiceBiomeValue = .36+getPerlin(x,y,z,2,50)*.08
		choiceBiomeSurface = 
			(1-verticalGradientTurbulence < .44 and slate)
			or sand
	elseif choiceBiome == 'Marsh' then
		local preLedge = getPerlin(x+getPerlin(x,0,z,5,7,true)*10+getPerlin(x,0,z,6,30,true)*50,0,z+getPerlin(x,0,z,9,7,true)*10+getPerlin(x,0,z,10,30,true)*50,2,70)	--could use some turbulence
		local grassyLedge = thresholdFilter(preLedge,.65,0)
		local largeGradient = getPerlin(x,y,z,4,100)
		local smallGradient = getPerlin(x,y,z,3,20)
		local smallGradientThreshold = thresholdFilter(smallGradient,.5,0)
		choiceBiomeValue = waterLevel-.04
			+preLedge*grassyLedge*.025
			+largeGradient*.035
			+smallGradient*.025
		choiceBiomeSurface =
			(grassyLedge >= 1 and grass)
			or (1-verticalGradientTurbulence < waterLevel-.01 and mud)
			or (1-verticalGradientTurbulence < waterLevel+.01 and ground)
			or grass
		choiceBiomeFill = slate
	elseif choiceBiome == 'Plains' then
		local rivulet = ridgedFlippedFilter(getPerlin(x+getPerlin(x,y,z,17,40)*25,0,z+getPerlin(x,y,z,19,40)*25,2,200))
		local rivuletThreshold = thresholdFilter(rivulet,.01,0)

		local rockMap = thresholdFilter(ridgedFlippedFilter(getPerlin(x,0,z,101,7)),.3,.7)		--rocks
			 * thresholdFilter(getPerlin(x,0,z,102,50),.6,.05)									--zoning

		choiceBiomeValue = .5			--.51
		+getPerlin(x,y,z,2,100)*.02		--.05
		+rivulet*.05					--.02
		+rockMap*.05		--.03
		+rivuletThreshold*.005

		local verticalGradient = 1-((y-1)/(mapHeight-1))
		local surfaceGradient = verticalGradient*.5 + choiceBiomeValue*.5
		local thinSurface = surfaceGradient > .5-surfaceThickness*.4 and surfaceGradient < .5+surfaceThickness*.4
		choiceBiomeSurface =
			(rockMap>0 and rock)
			or (not thinSurface and mud)
			or (thinSurface and rivuletThreshold <=0 and water)
			or (1-verticalGradientTurbulence < waterLevel-.01 and sand)
			or grass
		choiceBiomeFill =
			(rockMap>0 and rock)
			or sandstone
	elseif choiceBiome == 'Canyons' then
		local canyonNoise = ridgedFlippedFilter(getPerlin(x,0,z,2,200))
		local canyonNoiseTurbed = ridgedFlippedFilter(getPerlin(x+getPerlin(x,0,z,5,20,true)*20,0,z+getPerlin(x,0,z,9,20,true)*20,2,200))
		local sandbank = thresholdFilter(canyonNoiseTurbed,0,.05)
		local canyonTop = thresholdFilter(canyonNoiseTurbed,.125,0)
		local mesaSlope = thresholdFilter(canyonNoise,.33,.12)
		local mesaTop = thresholdFilter(canyonNoiseTurbed,.49,0)
		choiceBiomeValue = .42
			+getPerlin(x,y,z,2,70)*.05
			+canyonNoise*.05
			+sandbank*.04										--canyon bottom slope
			+thresholdFilter(canyonNoiseTurbed,.05,0)*.08		--canyon cliff
			+thresholdFilter(canyonNoiseTurbed,.05,.075)*.04	--canyon cliff top slope
			+canyonTop*.01										--canyon cliff top ledge

			+thresholdFilter(canyonNoiseTurbed,.0575,.2725)*.01	--plane slope

			+mesaSlope*.06			--mesa slope
			+thresholdFilter(canyonNoiseTurbed,.45,0)*.14		--mesa cliff
			+thresholdFilter(canyonNoiseTurbed,.45,.04)*.025	--mesa cap
			+mesaTop*.02										--mesa top ledge
		choiceBiomeSurface =
			(1-verticalGradientTurbulence < waterLevel+.015 and sand)		--this for biome blending in to lakes
			or (sandbank>0 and sandbank<1 and sand)							--this for canyonbase sandbanks
			--or (canyonTop>0 and canyonTop<=1 and mesaSlope<=0 and grass)		--this for grassy canyon tops
			--or (mesaTop>0 and mesaTop<=1 and grass)							--this for grassy mesa tops
			or sandstone
		choiceBiomeFill = canyonBandingMaterial[ceil((1-getNoise(1,y,2))*10)]
	elseif choiceBiome == 'Hills' then
		local rivulet = ridgedFlippedFilter(getPerlin(x+getPerlin(x,y,z,17,20)*20,0,z+getPerlin(x,y,z,19,20)*20,2,200))^(1/2)
		local largeHills = getPerlin(x,y,z,3,60)
		choiceBiomeValue = .48
			+largeHills*.05
				+(.05
				+largeHills*.1
				+getPerlin(x,y,z,4,25)*.125)
				*rivulet
		local surfaceMaterialGradient = (1-verticalGradientTurbulence)*.9 + rivulet*.1
		choiceBiomeSurface =
			(surfaceMaterialGradient < waterLevel-.015 and mud)
			or (surfaceMaterialGradient < waterLevel and ground)
			or grass
		choiceBiomeFill = slate
	elseif choiceBiome == 'Dunes' then
		local duneTurbulence = getPerlin(x,0,z,227,20)*24
		local layer1 = ridgedFilter(getPerlin(x,0,z,201,40))
		local layer2 = ridgedFilter(getPerlin(x/10+duneTurbulence,0,z+duneTurbulence,200,48))
		choiceBiomeValue = .4+.1*(layer1 + layer2)
		choiceBiomeSurface = sand
		choiceBiomeFill = sandstone
	elseif choiceBiome == 'Mountains' then
		local rivulet = ridgedFlippedFilter(getPerlin(x+getPerlin(x,y,z,17,20)*20,0,z+getPerlin(x,y,z,19,20)*20,2,200))
		choiceBiomeValue = -.4		--.3
			+fractalize(mountainsOperation,x,y/20,z, 8, .65)*1.2
			+rivulet*.2
		choiceBiomeSurface =
			(verticalGradientTurbulence < .275 and snow)
			or (verticalGradientTurbulence < .35 and rock)
			or (verticalGradientTurbulence < .4 and ground)
			or (1-verticalGradientTurbulence < waterLevel and rock)
			or (1-verticalGradientTurbulence < waterLevel+.01 and mud)
			or (1-verticalGradientTurbulence < waterLevel+.015 and ground)
			or grass
	elseif choiceBiome == 'Lavaflow' then
		local crackX = x+getPerlin(x,y*.25,z,21,8,true)*5
		local crackY = y+getPerlin(x,y*.25,z,22,8,true)*5
		local crackZ = z+getPerlin(x,y*.25,z,23,8,true)*5
		local crack1 = ridgedFilter(getPerlin(crackX+getPerlin(x,y,z,22,30,true)*30,crackY,crackZ+getPerlin(x,y,z,24,30,true)*30,2,120))
		local crack2 = ridgedFilter(getPerlin(crackX,crackY,crackZ,3,40))*(crack1*.25+.75)
		local crack3 = ridgedFilter(getPerlin(crackX,crackY,crackZ,4,20))*(crack2*.25+.75)

		local generalHills = thresholdFilter(getPerlin(x,y,z,9,40),.25,.5)*getPerlin(x,y,z,10,60)

		local cracks = max(0,1-thresholdFilter(crack1,.975,0)-thresholdFilter(crack2,.925,0)-thresholdFilter(crack3,.9,0))

		local spireVec = CFrame.Angles(.7,.7,0)*Vector3.new(crackX,crackY,crackZ)
		local spires = thresholdFilter(getPerlin(spireVec.x/40,spireVec.y/300,spireVec.z/30,123,1),.6,.4)

		choiceBiomeValue = waterLevel+.02
			+cracks*(.5+generalHills*.5)*.02
			+generalHills*.05
			+spires*.3
			+((1-verticalGradientTurbulence > waterLevel+.01 or spires>0) and .04 or 0)			--This lets it lip over water

		choiceBiomeFill = (spires>0 and rock) or (cracks<1 and lava) or basalt
		choiceBiomeSurface = (choiceBiomeFill == lava and 1-verticalGradientTurbulence < waterLevel and basalt) or choiceBiomeFill
	elseif choiceBiome == 'Arctic' then
		local preBoundary = getPerlin(x+getPerlin(x,0,z,5,8,true)*5,y/8,z+getPerlin(x,0,z,9,8,true)*5,2,20)
		--local cliffs = thresholdFilter(preBoundary,.5,0)
		local boundary = ridgedFilter(preBoundary)
		local roughChunks = getPerlin(x,y/4,z,436,2)
		local boundaryMask = thresholdFilter(boundary,.8,.1)	--,.7,.25)
		local boundaryTypeMask = getPerlin(x,0,z,6,74)-.5
		local boundaryComp = 0
		if boundaryTypeMask < 0 then							--divergent
			boundaryComp = (boundary > (1+boundaryTypeMask*.5) and -.17 or 0)
							--* boundaryTypeMask*-2
		else													--convergent
			boundaryComp = boundaryMask*.1*roughChunks
							* boundaryTypeMask
		end
		choiceBiomeValue = .55
			+boundary*.05*boundaryTypeMask		--.1	--soft slope up or down to boundary
			+boundaryComp								--convergent/divergent effects
			+getPerlin(x,0,z,123,25)*.025	--*cliffs	--gentle rolling slopes

		choiceBiomeSurface = (1-verticalGradientTurbulence < waterLevel-.1 and ice) or (boundaryMask>.6 and boundaryTypeMask>.1 and roughChunks>.5 and ice) or snow
		choiceBiomeFill = ice
	end
	return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
end

function findBiomeTransitionValue(biome,weight,value,averageValue)
	if biome == 'Arctic' then
		return (weight>.2 and 1 or 0)*value
	elseif biome == 'Canyons' then
		return (weight>.7 and 1 or 0)*value
	elseif biome == 'Mountains' then
		local weight = weight^3			--This improves the ease of mountains transitioning to other biomes
		return averageValue*(1-weight)+value*weight
	else
		return averageValue*(1-weight)+value*weight
	end
end

function updatePausedButton()
	pauseButton.Style = paused and 'RobloxRoundButton' or 'RobloxRoundDefaultButton'
	pauseButton.Text = paused and 'Resume' or 'Pause'
end

function generate()
	terrain = workspace.Terrain
	if not generating and not clearing and terrain then
		generating = true
		paused = false
		updatePausedButton()
		cancelIt = false
		progressFrame.Visible = true

		local mapWidth = mapWidth
		local biomeSize = biomeSize
		local biomeBlendPercent = .25	--(biomeSize==50 or biomeSize == 100) and .5 or .25
		local biomeBlendPercentInverse = 1-biomeBlendPercent
		local biomeBlendDistortion = biomeBlendPercent
		local smoothScale = .5/mapHeight

		local startTime = tick()
		biomes = {}
		for i,v in pairs(kSelectedBiomes) do
			if v then
				table.insert(biomes,i)
			end
		end
		if #biomes<=0 then
			table.insert(biomes,'Hills')
		end
		--local oMap = {}
		--local mMap = {}
		for x = 1, mapWidth do
			local oMapX = {}
			--oMap[x] = oMapX
			local mMapX = {}
			--mMap[x] = mMapX
			for z = 1, mapWidth do
				local biomeNoCave = false
				local cellToBiomeX = x/biomeSize + getPerlin(x,0,z,233,biomeSize*.3)*.25 + getPerlin(x,0,z,235,biomeSize*.05)*.075
				local cellToBiomeZ = z/biomeSize + getPerlin(x,0,z,234,biomeSize*.3)*.25 + getPerlin(x,0,z,236,biomeSize*.05)*.075
				local closestPoint = Vector3.new(0,0,0)
				local closestDistance = 1000000
				local biomePoints = {}
				for vx=-1,1 do
					for vz=-1,1 do
						local gridPointX = floor(cellToBiomeX+vx+.5)
						local gridPointZ = floor(cellToBiomeZ+vz+.5)
						--local pointX, pointZ = getBiomePoint(gridPointX,gridPointZ)
						local pointX = gridPointX+(getNoise(gridPointX,gridPointZ,53)-.5)*.75	--de-uniforming grid for vornonoi
						local pointZ = gridPointZ+(getNoise(gridPointX,gridPointZ,73)-.5)*.75

						local dist = sqrt((pointX-cellToBiomeX)^2 + (pointZ-cellToBiomeZ)^2)
						if dist < closestDistance then
							closestPoint = Vector3.new(pointX,0,pointZ)
							closestDistance = dist
						end
						table.insert(biomePoints,{
							x = pointX,
							z = pointZ,
							dist = dist,
							biomeNoise = getNoise(gridPointX,gridPointZ),
							weight = 0
						})
					end
				end
				local weightTotal = 0
				local weightPoints = {}
				for _,point in pairs(biomePoints) do
					local weight = point.dist == closestDistance and 1 or ((closestDistance / point.dist)-biomeBlendPercentInverse)/biomeBlendPercent
					if weight > 0 then
						local weight = weight^2.1		--this smooths the biome transition from linear to cubic InOut
						weightTotal = weightTotal + weight
						local biome = biomes[ceil(#biomes*(1-point.biomeNoise))]	--inverting the noise so that it is limited as (0,1]. One less addition operation when finding a random list index
						weightPoints[biome] = {
							weight = weightPoints[biome] and weightPoints[biome].weight + weight or weight
						}
					end
				end
				for biome,info in pairs(weightPoints) do
					info.weight = info.weight / weightTotal
					if biome == 'Arctic' then		--biomes that don't have caves that breach the surface
						biomeNoCave = true
					end
				end


				for y = 1, mapHeight do
					local oMapY = oMapX[y] or {}
					oMapX[y] = oMapY
					local mMapY = mMapX[y] or {}
					mMapX[y] = mMapY

					--[[local oMapY = {}
					oMapX[y] = oMapY
					local mMapY = {}
					mMapX[z] = mMapY]]


					local verticalGradient = 1-((y-1)/(mapHeight-1))
					local caves = 0
					local verticalGradientTurbulence = verticalGradient*.9 + .1*getPerlin(x,y,z,107,15)
					local choiceValue = 0
					local choiceSurface = lava
					local choiceFill = rock
	
					if verticalGradient > .65 or verticalGradient < .1 then
						--under surface of every biome; don't get biome data; waste of time.
						choiceValue = .5
					elseif #biomes == 1 then
						choiceValue, choiceSurface, choiceFill = findBiomeInfo(biomes[1],x,y,z,verticalGradientTurbulence)
					else
						local averageValue = 0
						--local findChoiceMaterial = -getNoise(x,y,z,19)
						for biome,info in pairs(weightPoints) do
							local biomeValue, biomeSurface, biomeFill = findBiomeInfo(biome,x,y,z,verticalGradientTurbulence)
							info.biomeValue = biomeValue
							info.biomeSurface = biomeSurface
							info.biomeFill = biomeFill
							local value = biomeValue * info.weight
							averageValue = averageValue + value
							--[[if findChoiceMaterial < 0 and findChoiceMaterial + weight >= 0 then
								choiceMaterial = biomeMaterial
							end
							findChoiceMaterial = findChoiceMaterial + weight]]
						end
						for biome,info in pairs(weightPoints) do
							local value = findBiomeTransitionValue(biome,info.weight,info.biomeValue,averageValue)
							if value > choiceValue then
								choiceValue = value
								choiceSurface = info.biomeSurface
								choiceFill = info.biomeFill
							end
						end
					end

					local preCaveComp = verticalGradient*.5 + choiceValue*.5

					local surface = preCaveComp > .5-surfaceThickness and preCaveComp < .5+surfaceThickness

					if generateCaves																--user wants caves
						and (not biomeNoCave or verticalGradient > .65)								--biome allows caves or deep enough
							and not (surface and (1-verticalGradient) < waterLevel+.005)			--caves only breach surface above waterlevel
								and not (surface and (1-verticalGradient) > waterLevel+.58) then	--caves don't go too high so that they don't cut up mountain tops
									local ridged2 = ridgedFilter(getPerlin(x,y,z,4,30))
									local caves2 = thresholdFilter(ridged2,.84,.01)
									local ridged3 = ridgedFilter(getPerlin(x,y,z,5,30))
									local caves3 = thresholdFilter(ridged3,.84,.01)
									local ridged4 = ridgedFilter(getPerlin(x,y,z,6,30))
									local caves4 = thresholdFilter(ridged4,.84,.01)
									local caveOpenings = (surface and 1 or 0) * thresholdFilter(getPerlin(x,0,z,143,62),.35,0)	--.45
									caves = caves2 * caves3 * caves4 - caveOpenings
									caves = caves < 0 and 0 or caves > 1 and 1 or caves
					end

					local comp = preCaveComp - caves

					local smoothedResult = thresholdFilter(comp,.5,smoothScale)

					---below water level				  -above surface		-no terrain
					if 1-verticalGradient < waterLevel and preCaveComp <= .5 and smoothedResult <= 0 then
						smoothedResult = 1
						choiceSurface = water
						choiceFill = water
						surface = true
					end

					oMapY[z] = (y == 1 and 1) or smoothedResult
					mMapY[z] = (y == 1 and lava) or (smoothedResult <= 0 and air) or (surface and choiceSurface) or choiceFill
				end
			end

			local regionStart = Vector3.new(mapWidth*-2+(x-1)*4,mapHeight*-2,mapWidth*-2)
			local regionEnd = Vector3.new(mapWidth*-2+x*4,mapHeight*2,mapWidth*2)
			local mapRegion = Region3.new(regionStart, regionEnd)
			terrain:WriteVoxels(mapRegion, 4, {mMapX}, {oMapX})

			local completionPercent = x/mapWidth
			barFill.Size = UDim2.new(completionPercent,0,1,0)

			wait()
			while paused and not cancelIt do
				wait()
			end
			if cancelIt then
				break
			end
		end
		changeHistoryService:SetWaypoint('Terrain Generation')
		progressFrame.Visible = false
		generating = false
		print('Generation Complete',tick()-startTime)
	end
end


module.On = function(theTool)
	screenGui.Parent = coreGui
	terrainGenerationFrame.Visible = true
	on = true
end

module.Off = function()
	on = false
	screenGui.Parent = nil
	terrainGenerationFrame.Visible = false
end

function clearTerrain()
	terrain = workspace.Terrain
	if not generating and not clearing and terrain then
		clearing = true
		terrain:Clear()
		changeHistoryService:SetWaypoint('Terrain Clear')
		clearing = false
	end
end


return module


