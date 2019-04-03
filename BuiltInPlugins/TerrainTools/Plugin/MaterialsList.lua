local MaterialsListClass = {}

GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)
local i18n = require(script.Parent.Parent.Libs.Localization)

local kMaterialCellSize = 31
local kMaterialCellPadding = 9

local kMaterialTooltipHeight = 30
local kHighlightSize = 4
local kHighlightColor = Color3.fromRGB(117, 167, 246)

MaterialsListClass.MaterialsTable = {	--Interface order is defined by order here
	{
		enum = Enum.Material.Grass, 
		image = "rbxasset://textures/TerrainTools/mtrl_grass.png", 
		text = "Studio.TerrainEditor.Materials.Grass", 
	},
	{
		enum = Enum.Material.Sand, 
		image = "rbxasset://textures/TerrainTools/mtrl_sand.png", 
		text = "Studio.TerrainEditor.Materials.Sand", 
	},
	{
		enum = Enum.Material.Rock,
		image = "rbxasset://textures/TerrainTools/mtrl_rock.png", 
		text = "Studio.TerrainEditor.Materials.Rock", 
	},
	{
		enum = Enum.Material.Water, 
		image = "rbxasset://textures/TerrainTools/mtrl_water.png",
		forceIgnoreWater = true, 
		forceIgnoreWaterTo = false, 
		text = "Studio.TerrainEditor.Materials.Water", 
	},
	{
		enum = Enum.Material.Ground, 
		image = "rbxasset://textures/TerrainTools/mtrl_ground.png", 
		text = "Studio.TerrainEditor.Materials.Ground", 
	},
	{
		enum = Enum.Material.Sandstone, 
		image = "rbxasset://textures/TerrainTools/mtrl_sandstone.png", 
		text = "Studio.TerrainEditor.Materials.Sandstone", 
	},
	{
		enum = Enum.Material.Slate, 
		image = "rbxasset://textures/TerrainTools/mtrl_slate.png", 
		text = "Studio.TerrainEditor.Materials.Slate", 
	},
	{
		enum = Enum.Material.Snow, 
		image = "rbxasset://textures/TerrainTools/mtrl_snow.png", 
		text = "Studio.TerrainEditor.Materials.Snow", 
	},
	{
		enum = Enum.Material.Mud, 
		image = "rbxasset://textures/TerrainTools/mtrl_mud.png", 
		text = "Studio.TerrainEditor.Materials.Mud", 
	},
	{
		enum = Enum.Material.Brick, 
		image = "rbxasset://textures/TerrainTools/mtrl_brick.png", 
		forceSnapToGrid = true, 
		text = "Studio.TerrainEditor.Materials.Brick", 
	},
	{
		enum = Enum.Material.Concrete, 
		image = "rbxasset://textures/TerrainTools/mtrl_concrete.png", 
		text = "Studio.TerrainEditor.Materials.Concrete", 
	},
	{
		enum = Enum.Material.Glacier, 
		image = "rbxasset://textures/TerrainTools/mtrl_glacier.png", 
		text = "Studio.TerrainEditor.Materials.Glacier", 
	},
	{
		enum = Enum.Material.WoodPlanks, 
		image = "rbxasset://textures/TerrainTools/mtrl_woodplanks.png", 
		forceSnapToGrid = true, 
		text = "Studio.TerrainEditor.Materials.WoodPlanks", 
	},
	{
		enum = Enum.Material.CrackedLava, 
		image = "rbxasset://textures/TerrainTools/mtrl_crackedlava.png", 
		text = "Studio.TerrainEditor.Materials.CrackedLava", 
	},
	{
		enum = Enum.Material.Basalt, 
		image = "rbxasset://textures/TerrainTools/mtrl_basalt.png", 
		text = "Studio.TerrainEditor.Materials.Basalt", 
	},
	{
		enum = Enum.Material.Ice,
		image = "rbxasset://textures/TerrainTools/mtrl_ice.png", 
		text = "Studio.TerrainEditor.Materials.Ice", 
	},
	{
		enum = Enum.Material.Salt, 
		image = "rbxasset://textures/TerrainTools/mtrl_salt.png", 
		text = "Studio.TerrainEditor.Materials.Salt", 
	},
	{
		enum = Enum.Material.Cobblestone, 
		image = "rbxasset://textures/TerrainTools/mtrl_cobblestone.png", 
		text = "Studio.TerrainEditor.Materials.Cobblestone", 
	},
	{
		enum = Enum.Material.Limestone, 
		image = "rbxasset://textures/TerrainTools/mtrl_limestone.png", 
		text = "Studio.TerrainEditor.Materials.Limestone", 
	},
	{
		enum = Enum.Material.Asphalt, 
		image = "rbxasset://textures/TerrainTools/mtrl_asphalt.png",
		text = "Studio.TerrainEditor.Materials.Asphalt", 
	},
	{
		enum = Enum.Material.LeafyGrass, 
		image = "rbxasset://textures/TerrainTools/mtrl_leafygrass.png",
		text = "Studio.TerrainEditor.Materials.LeafyGrass", 
	},
	{
		enum = Enum.Material.Pavement, 
		image = "rbxasset://textures/TerrainTools/mtrl_pavement.png",
		text = "Studio.TerrainEditor.Materials.Pavement", 
	},
}

MaterialsListClass.__index = MaterialsListClass
------------------------------------------
-- 
-- Public functions
--
------------------------------------------
-- Constructor
function MaterialsListClass.new()
	local self = {}
	setmetatable(self, MaterialsListClass)

	self._currentMaterialSelection = MaterialsListClass.MaterialsTable[1]
	self._callbackOnSelectionChanged = nil
	self._materialsFrame = nil
	self._activeToolTip = Instance.new("StringValue")

	self:_MakeMaterialsFrame()

	return self
end


function MaterialsListClass:SetCallbackOnSelectionChanged(callback)
	self._callbackOnSelectionChanged = callback
end

function MaterialsListClass:GetCurrentMaterialSelection()
	return self._currentMaterialSelection
end

function MaterialsListClass:GetMaterialsFrame()
	return self._materialsFrame
end

function MaterialsListClass:SetMaterialSelection(newMaterialSelection)
	self._currentMaterialSelection = newMaterialSelection

	if (self._callbackOnSelectionChanged) then 
		self._callbackOnSelectionChanged()
	end

	for _, v in pairs(self._materialsFrame:GetChildren()) do
		if string.sub(v.Name,1,14) == 'MaterialButton' then
			if v.Name == 'MaterialButton' .. self._currentMaterialSelection.enum.Name then
				v.BackgroundTransparency = .1
			else
				v.BackgroundTransparency = 1
			end
		end
	end
end

function MaterialsListClass:SetMaterialSelectionUsingEnum(foundMaterial)
	for _, materialTable in pairs(MaterialsListClass.MaterialsTable) do
		if materialTable.enum == foundMaterial then
			self:SetMaterialSelection(materialTable)
			break
		end
	end
end

------------------------------------------
-- 
-- Private functions
--
------------------------------------------

function MaterialsListClass:_MakeMaterialsFrame()
	self._materialsFrame = GuiUtilities.MakeFrame("MaterialsFrame")

	local uiGridLayout = Instance.new("UIGridLayout")
	uiGridLayout.CellSize = UDim2.new(0,kMaterialCellSize,0,kMaterialCellSize)
	uiGridLayout.CellPadding = UDim2.new(0,kMaterialCellPadding,0,kMaterialCellPadding)
	uiGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	uiGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiGridLayout.Parent = self._materialsFrame

	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingTop = UDim.new(0, GuiUtilities.kStandardVMargin)
	uiPadding.PaddingBottom = UDim.new(0, GuiUtilities.kStandardVMargin)
	uiPadding.PaddingLeft = UDim.new(0, GuiUtilities.StandardLineLabelLeftMargin)
	uiPadding.PaddingRight = UDim.new(0, GuiUtilities.StandardLineLabelLeftMargin)
	uiPadding.Parent = self._materialsFrame

	for i, materialSubTable in pairs(MaterialsListClass.MaterialsTable) do
		self:_AddNewMaterialsButton(materialSubTable)
	end

	GuiUtilities.AdjustHeightDynamicallyToLayout(self._materialsFrame, 
		uiGridLayout, 
		2 * GuiUtilities.kStandardVMargin)

	return self._materialsFrame
end


function MaterialsListClass:_AddNewMaterialsButton(materialSubTable)
	local newMaterialButton = Instance.new('ImageButton')
	newMaterialButton.Name = 'MaterialButton' .. materialSubTable.enum.Name
	newMaterialButton.BorderSizePixel = kHighlightSize
	newMaterialButton.BorderColor3 = kHighlightColor
	newMaterialButton.BackgroundColor3 = Color3.new(.2, 1, 1)
	newMaterialButton.BackgroundTransparency = 1
	newMaterialButton.Image = materialSubTable.image
	newMaterialButton.Size = UDim2.new(0, 35, 0, 35)

	newMaterialButton.MouseButton1Down:connect(function()
		self:SetMaterialSelection(materialSubTable)
	end)

	newMaterialButton.Parent = self._materialsFrame
	-- Add spaces to names
		self:_MakeToolTip(newMaterialButton,
			i18n.TranslateId(materialSubTable.text)) 
end

function MaterialsListClass:_MakeToolTip(guiElement, text)
	local Name = tostring(guiElement:GetFullName() .. text)

	local Frame = Instance.new("Frame")
	Frame.BackgroundTransparency = 0.3
	Frame.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame.Size = UDim2.new(0, 100, 0, kMaterialTooltipHeight)
	Frame.SizeConstraint = "RelativeYY"
	Frame.ZIndex = guiElement.ZIndex + 1
	Frame.Style = "DropShadow"
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	-- We will set position down below...

	-- Parent to main frame so it doesn't get clipped by anything.
	Frame.Parent = GuiUtilities.kMainFrame

	self._tweakingTooltipFrame = nil

	-- Tooltips are positioned as children of main screen.
	-- The buttons they describe are in a scroll widget, so they can 
	-- move around.
	-- So we need to watch the buttons and dynmically reposition.
	-- Also, we need to worry about slopping over right/left edges.
	local function updateTooltipPosition()
		-- Don't let this be re-entrant.
		if (self._tweakingTooltipFrame == Frame) then 
			return
		end
		self._tweakingTooltipFrame = Frame

		local materialSquareAbsPosition = guiElement.AbsolutePosition
		local materialSquareAbsSize = guiElement.AbsoluteSize

		local absSize = Frame.AbsoluteSize

		local targetLocationX = materialSquareAbsPosition.X + materialSquareAbsSize.X/2
		local targetLocationY = materialSquareAbsPosition.Y - kMaterialTooltipHeight/2

		local containerSize = self._materialsFrame.AbsoluteSize

		-- Worry about slopping over either side.
		if (targetLocationX < absSize.X/2) then 
			targetLocationX = absSize.X/2
		end

		if (targetLocationX > containerSize.X - absSize.X/2) then 
			targetLocationX = containerSize.X - absSize.X/2
		end

		Frame.Position = UDim2.new(0, targetLocationX, 0, targetLocationY)

		self._tweakingTooltipFrame = nil
	end
	Frame:GetPropertyChangedSignal("AbsolutePosition"):connect(updateTooltipPosition)
	Frame:GetPropertyChangedSignal("AbsoluteSize"):connect(updateTooltipPosition)
	guiElement:GetPropertyChangedSignal("AbsolutePosition"):connect(updateTooltipPosition)
	updateTooltipPosition()

	local TextLabel = Instance.new("TextLabel", Frame)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextXAlignment = "Left"
	TextLabel.Text = text
	TextLabel.BorderSizePixel = 0
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.Size = UDim2.new(1, -30, 1, 0);
	TextLabel.Position = UDim2.new(0, 10, 0, 0);
	TextLabel.FontSize = "Size10"
	TextLabel.ZIndex = Frame.ZIndex
	TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
	TextLabel.TextStrokeTransparency = 0.87

	Frame.Visible = false

	guiElement.MouseEnter:connect(function()
		self._activeToolTip.Value = Name
		Frame.Visible = true
		Frame.Size = UDim2.new(0, math.ceil(TextLabel.TextBounds.X + 36), Frame.Size.Y.Scale, Frame.Size.Y.Offset)
	end)
	self._activeToolTip.Changed:connect(function()
		if self._activeToolTip.Value ~= Name then
			Frame.Visible = false
		end
	end)
	guiElement.MouseLeave:connect(function()
		Frame.Visible = false
	end)
end

return MaterialsListClass


