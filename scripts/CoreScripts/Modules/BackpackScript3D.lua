--BackpackScript3D: VR port of backpack interface using a 3D panel
--written by 0xBAADF00D
local ICON_SIZE = 48
local ICON_SPACING = 52
local PIXELS_PER_STUD = 64

local SLOT_BORDER_SIZE = 0
local SLOT_BORDER_SELECTED_SIZE = 4
local SLOT_BORDER_COLOR = Color3.new(90/255, 142/255, 233/255)
local SLOT_BACKGROUND_COLOR = Color3.new(0.2, 0.2, 0.2)
local SLOT_HOVER_BACKGROUND_COLOR = Color3.new(90/255, 90/255, 90/255)

local HOPPERBIN_ANGLE = math.rad(-45)
local HOPPERBIN_ROTATION = CFrame.Angles(HOPPERBIN_ANGLE, 0, 0)
local HOPPERBIN_OFFSET = Vector3.new(0, 0, -5)

local HEALTHBAR_SPACE = 12
local HEALTHBAR_WIDTH = 82
local HEALTHBAR_HEIGHT = 5

local NAME_SPACE = 14

local Tools = {}
local ToolsList = {}
local slotIcons = {}

local BackpackScript = {}
local topbarEnabled = false

local player = game:GetService("Players").LocalPlayer
local currentHumanoid = nil
local CoreGui = game:GetService('CoreGui')
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
local Util = require(RobloxGui.Modules.Settings.Utility)

local ContextActionService = game:GetService("ContextActionService")

local BackpackPanel = Panel3D.Get("Backpack")
BackpackPanel:ResizeStuds(5, 2)
BackpackPanel:SetType(Panel3D.Type.Fixed, { CFrame = CFrame.new(0, 0, -5) })
BackpackPanel:SetVisible(true)

local toolsFrame = Instance.new("TextButton", BackpackPanel:GetGUI()) --prevent clicks falling through in case you have a rocket launcher and blow yourself up
toolsFrame.Text = ""
toolsFrame.Size = UDim2.new(1, 0, 0, ICON_SIZE)
toolsFrame.BackgroundTransparency = 1
toolsFrame.Selectable = false
local insetAdjustY = toolsFrame.AbsolutePosition.Y
toolsFrame.Position = UDim2.new(0, 0, 0, HEALTHBAR_SPACE + NAME_SPACE)

--Healthbar color function stolen from Topbar.lua
local HEALTH_BACKGROUND_COLOR = Color3.new(228/255, 236/255, 246/255)
local HEALTH_RED_COLOR = Color3.new(255/255, 28/255, 0/255)
local HEALTH_YELLOW_COLOR = Color3.new(250/255, 235/255, 0)
local HEALTH_GREEN_COLOR = Color3.new(27/255, 252/255, 107/255)

local healthbarBack = Instance.new("ImageLabel", BackpackPanel:GetGUI())
healthbarBack.ImageColor3 = HEALTH_BACKGROUND_COLOR
healthbarBack.BackgroundTransparency = 1
healthbarBack.ScaleType = Enum.ScaleType.Slice
healthbarBack.SliceCenter = Rect.new(10, 10, 10, 10)
healthbarBack.Name = "HealthbarContainer"
healthbarBack.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
local healthbarFront = Instance.new("ImageLabel", healthbarBack)
healthbarFront.ImageColor3 = HEALTH_GREEN_COLOR
healthbarFront.BackgroundTransparency = 1
healthbarFront.ScaleType = Enum.ScaleType.Slice
healthbarFront.SliceCenter = Rect.new(10, 10, 10, 10)
healthbarFront.Size = UDim2.new(1, 0, 1, 0)
healthbarFront.Position = UDim2.new(0, 0, 0, 0)
healthbarFront.Name = "HealthbarFill"
healthbarFront.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"

local playerName = Instance.new("TextLabel", BackpackPanel:GetGUI())
playerName.Name = "PlayerName"
playerName.BackgroundTransparency = 1
playerName.TextColor3 = Color3.new(1, 1, 1)
playerName.Text = player.Name
playerName.Font = Enum.Font.SourceSansBold
playerName.FontSize = Enum.FontSize.Size12
playerName.TextXAlignment = Enum.TextXAlignment.Left
playerName.Size = UDim2.new(1, 0, 0, NAME_SPACE)


BackpackScript.ToolAddedEvent = Instance.new("BindableEvent")


local healthColorToPosition = {
	[Vector3.new(HEALTH_RED_COLOR.r, HEALTH_RED_COLOR.g, HEALTH_RED_COLOR.b)] = 0.1;
	[Vector3.new(HEALTH_YELLOW_COLOR.r, HEALTH_YELLOW_COLOR.g, HEALTH_YELLOW_COLOR.b)] = 0.5;
	[Vector3.new(HEALTH_GREEN_COLOR.r, HEALTH_GREEN_COLOR.g, HEALTH_GREEN_COLOR.b)] = 0.8;
}
local min = 0.1
local minColor = HEALTH_RED_COLOR
local max = 0.8
local maxColor = HEALTH_GREEN_COLOR

local function HealthbarColorTransferFunction(healthPercent)
	if healthPercent < min then
		return minColor
	elseif healthPercent > max then
		return maxColor
	end

	-- Shepard's Interpolation
	local numeratorSum = Vector3.new(0,0,0)
	local denominatorSum = 0
	for colorSampleValue, samplePoint in pairs(healthColorToPosition) do
		local distance = healthPercent - samplePoint
		if distance == 0 then
			-- If we are exactly on an existing sample value then we don't need to interpolate
			return Color3.new(colorSampleValue.x, colorSampleValue.y, colorSampleValue.z)
		else
			local wi = 1 / (distance*distance)
			numeratorSum = numeratorSum + wi * colorSampleValue
			denominatorSum = denominatorSum + wi
		end
	end
	local result = numeratorSum / denominatorSum
	return Color3.new(result.x, result.y, result.z)
end
---

local backpackEnabled = true
local healthbarEnabled = true

local function UpdateLayout()
	local width, height = 100, 100
	local borderSize = (ICON_SPACING - ICON_SIZE) / 2

	local x = borderSize
	local y = 0
	for _, tool in ipairs(ToolsList) do
		local slot = Tools[tool]
		if slot then
			slot.icon.Position = UDim2.new(0, x, 0, y)
			x = x + ICON_SPACING
		end
	end

	if #ToolsList == 0 then
		width = HEALTHBAR_WIDTH
		height = HEALTHBAR_SPACE + NAME_SPACE
		BackpackPanel.showCursor = false
	else
		width = #ToolsList * ICON_SPACING
		height = ICON_SIZE + HEALTHBAR_SPACE + NAME_SPACE
		BackpackPanel.showCursor = true
	end

	BackpackPanel:ResizePixels(width, height)

	playerName.Position = UDim2.new(0, borderSize, 0, 0)

	healthbarBack.Position = UDim2.new(0, borderSize, 0, NAME_SPACE + (HEALTHBAR_SPACE - HEALTHBAR_HEIGHT) / 2)
	healthbarBack.Size = UDim2.new(0, HEALTHBAR_WIDTH, 0, HEALTHBAR_HEIGHT)
end

local function UpdateHealth(humanoid)
	local percentHealth = humanoid.Health / humanoid.MaxHealth
	if percentHealth ~= percentHealth then
		percentHealth = 1
	end
	healthbarFront.BackgroundColor3 = HealthbarColorTransferFunction(percentHealth)
	healthbarFront.Size = UDim2.new(percentHealth, 0, 1, 0)
end

local function SetTransparency(transparency)
	for i, v in pairs(Tools) do
		v.bg.ImageTransparency = transparency
		v.image.ImageTransparency = transparency
		v.text.TextTransparency = transparency
	end

	playerName.TextTransparency = transparency
	healthbarBack.ImageTransparency = transparency
	healthbarFront.ImageTransparency = transparency
end

local function OnHotbarEquipPrimary(actionName, state, obj)
	if state ~= Enum.UserInputState.Begin then
		return
	end
	for tool, slot in pairs(Tools) do
		if slot.hovered then
			slot.OnClick()
			return
		end
	end
end

local function EnableHotbarInput(enable)
	if not backpackEnabled then
		enable = false
	end
	if not currentHumanoid then
		return
	end
	if enable then
		ContextActionService:BindCoreAction("HotbarEquipPrimary", OnHotbarEquipPrimary, false, Enum.KeyCode.ButtonA, Enum.KeyCode.ButtonR2, Enum.UserInputType.MouseButton1)
	else
		ContextActionService:UnbindCoreAction("HotbarEquipPrimary")
	end
end

local function AddTool(tool)
	if Tools[tool] then
		return
	end

	local slot = {}
	Tools[tool] = slot
	table.insert(ToolsList, tool)

	slot.hovered = false
	slot.tool = tool

	slot.icon = Instance.new("TextButton", toolsFrame)
	slot.icon.Text = ""
	slot.icon.Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE)
	slot.icon.BackgroundColor3 = Color3.new(0, 0, 0)
	slot.icon.Selectable = true
	slot.icon.BackgroundTransparency = 1
	slotIcons[tool] = slot.icon

	slot.bg = Instance.new("ImageLabel", slot.icon)
	slot.bg.Position = UDim2.new(0, -1, 0, -1)
	slot.bg.Size = UDim2.new(1, 2, 1, 2)
	slot.bg.Image = "rbxasset://textures/ui/VR/rectBackground.png"
	slot.bg.ScaleType = Enum.ScaleType.Slice
	slot.bg.SliceCenter = Rect.new(10, 10, 10, 10)
	slot.bg.BackgroundTransparency = 1

	slot.image = Instance.new("ImageLabel", slot.icon)
	slot.image.Position = UDim2.new(0, 1, 0, 1)
	slot.image.Size = UDim2.new(1, -2, 1, -2)
	slot.image.BackgroundTransparency = 1
	slot.image.Selectable = false

	slot.text = Instance.new("TextLabel", slot.icon)
	slot.text.Position = UDim2.new(0, 1, 0, 1)
	slot.text.Size = UDim2.new(1, -2, 1, -2)
	slot.text.BackgroundTransparency = 1
	slot.text.TextColor3 = Color3.new(1, 1, 1)
	slot.text.Font = Enum.Font.SourceSans
	slot.text.FontSize = Enum.FontSize.Size12
	slot.text.ClipsDescendants = true
	slot.text.Selectable = false

	local selectionObject = Util:Create'ImageLabel'
	{
		Name = 'SelectionObject';
		Size = UDim2.new(1,0,1,0);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png";
		ImageTransparency = 0;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(12,12,52,52);
		BorderSizePixel = 0;
	}
	slot.icon.SelectionImageObject = selectionObject

	local function updateToolData()
		slot.image.Image = tool.TextureId
		slot.text.Text = tool.TextureId == "" and tool.Name or ""
	end
	updateToolData()

	slot.OnClick = function()
		if not player.Character then return end
		local humanoid = player.Character:FindFirstChild("Humanoid")
		if not humanoid then return end

		local inBackpack = tool.Parent == player.Backpack
		humanoid:UnequipTools()
		if inBackpack then
			humanoid:EquipTool(tool)
		end
	end

	slot.icon.MouseButton1Click:connect(slot.OnClick)
	slot.OnEnter = function()
		slot.hovered = true
	end
	slot.OnLeave = function()
		slot.hovered = false
	end
--	slot.icon.MouseEnter:connect(slot.OnEnter)
--	slot.icon.MouseLeave:connect(slot.OnLeave)

	tool.Changed:connect(function(prop)
		if prop == "Parent" then
			if tool.Parent == player:FindFirstChild("Backpack") then
				slot.bg.Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE) --temporary hold-over until new backpack design comes along (can't use border with this antialiased frame stand-in)
				slot.bg.Position = UDim2.new(0, 0, 0, 0)
			elseif tool.Parent == player.Character then
				slot.bg.Size = UDim2.new(0, ICON_SIZE + 8, 0, ICON_SIZE + 8)
				slot.bg.Position = UDim2.new(0, -4, 0, -4)
			end
		elseif prop == "TextureId" or prop == "Name" then
			updateToolData()
		end
	end)

	UpdateLayout()

	BackpackScript.ToolAddedEvent:Fire(tool)
end

local humanoidChangedEvent = nil
local humanoidAncestryChangedEvent = nil
local function RegisterHumanoid(humanoid)
	currentHumanoid = humanoid
	if humanoidChangedEvent then
		humanoidChangedEvent:disconnect()
		humanoidChangedEvent = nil
	end
	if humanoidAncestryChangedEvent then
		humanoidAncestryChangedEvent:disconnect()
		humanoidAncestryChangedEvent = nil
	end
	if humanoid then
		humanoidChangedEvent = humanoid.HealthChanged:connect(function() UpdateHealth(humanoid) end)
		humanoidAncestryChangedEvent = humanoid.AncestryChanged:connect(function(child, parent)
			if child == humanoid and parent ~= player.Character then
				RegisterHumanoid(nil)
			end
		end)
		UpdateHealth(humanoid)
	end
end

local function OnChildAdded(child)
	if child:IsA("Tool") or child:IsA("HopperBin") then
		AddTool(child)
	end
	if child:IsA("Humanoid") and child.Parent == player.Character then
		RegisterHumanoid(child)
	end
end

local function RemoveTool(tool)
	if not Tools[tool] then
		return
	end
	Tools[tool].icon:Destroy()
	for i, v in ipairs(ToolsList) do
		if v == tool then
			table.remove(ToolsList, i)
			break
		end
	end
	Tools[tool] = nil
	slotIcons[tool] = nil
	UpdateLayout()
end

local function OnChildRemoved(child)
	if child:IsA("Tool") or child:IsA("HopperBin") then
		if Tools[child] then
			if child.Parent ~= player:FindFirstChild("Backpack") and child.Parent ~= player.Character then
				RemoveTool(child)
			end
		end
	end
end

local function OnCharacterAdded(character)
	local backpack = player:WaitForChild("Backpack")

	for i, v in ipairs(character:GetChildren()) do
		if v:IsA("Humanoid") then
			RegisterHumanoid(v)
			break
		end
	end

	for tool, v in pairs(Tools) do
		RemoveTool(tool)
	end
	Tools = {}
	ToolsList = {}

	character.ChildAdded:connect(OnChildAdded)
	character.ChildRemoved:connect(OnChildRemoved)

	for i, v in ipairs(backpack:GetChildren()) do
		OnChildAdded(v)
	end

	backpack.ChildAdded:connect(OnChildAdded)
	backpack.ChildRemoved:connect(OnChildRemoved)
end

player.CharacterAdded:connect(OnCharacterAdded)
if player.Character then
	spawn(function() OnCharacterAdded(player.Character) end)
end

local function OnHotbarEquip(actionName, state, obj)
	if not backpackEnabled then
		return
	end
	local character = player.Character
	if not character then
		return
	end
	if not currentHumanoid then
		return
	end
	if state ~= Enum.UserInputState.Begin then
		return
	end
	if #ToolsList == 0 then
		return
	end
	local current = 0
	for i, v in pairs(ToolsList) do
		if v.Parent == character then
			current = i
		end
	end
	currentHumanoid:UnequipTools()
	if obj.KeyCode == Enum.KeyCode.ButtonR1 then
		current = current + 1
		if current > #ToolsList then
			current = 1
		end
	else
		current = current - 1
		if current < 1 then
			current = #ToolsList
		end
	end
	currentHumanoid:EquipTool(ToolsList[current])
end

local function OnCoreGuiChanged(coreGuiType, enabled)
	-- Check for enabling/disabling the whole thing
	if coreGuiType == Enum.CoreGuiType.Backpack or coreGuiType == Enum.CoreGuiType.All then
		backpackEnabled = enabled
		UpdateLayout()
		if enabled then
			ContextActionService:BindCoreAction("HotbarEquip2", OnHotbarEquip, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
			toolsFrame.Parent = BackpackPanel:GetGUI()
		else
			ContextActionService:UnbindCoreAction("HotbarEquip2")
			toolsFrame.Parent = nil
		end
	end

	if coreGuiType == Enum.CoreGuiType.Health or coreGuiType == Enum.CoreGuiType.All then
		healthbarEnabled = enabled
		UpdateLayout()
		if enabled then
			healthbarBack.Parent = BackpackPanel:GetGUI()
		else
			healthbarBack.Parent = nil
		end
	end
end

local StarterGui = game:GetService("StarterGui")
StarterGui.CoreGuiChangedSignal:connect(OnCoreGuiChanged)
OnCoreGuiChanged(Enum.CoreGuiType.Backpack, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack))
OnCoreGuiChanged(Enum.CoreGuiType.Backpack, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All))

OnCoreGuiChanged(Enum.CoreGuiType.Health, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Health))
OnCoreGuiChanged(Enum.CoreGuiType.Health, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All))

local panelLocalCF = CFrame.Angles(math.rad(-5), 0, 0) * CFrame.new(0, 1.75, 0) * CFrame.Angles(math.rad(-5), 0, 0)

function BackpackPanel:PreUpdate(cameraCF, cameraRenderCF, userHeadCF, lookRay)
	--the backpack panel needs to go in front of the user when they look at it.
	--if they aren't looking, we should be updating self.localCF

	local topbarPanel = Panel3D.Get("Topbar3D")
	local panelOriginCF = topbarPanel.localCF or CFrame.new()
	self.localCF = panelOriginCF * panelLocalCF
end

function BackpackPanel:OnUpdate()
	SetTransparency(self.transparency)

	local hovered, tool = BackpackPanel:FindHoveredGuiElement(slotIcons)
	if hovered and tool then
		local slot = Tools[tool]
		if not slot.hovered then
			slot.OnEnter()
		end
		for i, v in pairs(Tools) do
			if v.hovered and v ~= slot then
				v.OnLeave()
			end
		end
	end
end

function BackpackPanel:OnMouseEnter(x, y)
	EnableHotbarInput(true)
end
function BackpackPanel:OnMouseLeave(x, y)
	EnableHotbarInput(false)
end

local VRHub = require(RobloxGui.Modules.VR.VRHub)
VRHub.ModuleOpened.Event:connect(function(moduleName)
	local module = VRHub:GetModule(moduleName)
	if module.VRIsExclusive then
		BackpackPanel:SetVisible(false)
	end
end)
VRHub.ModuleClosed.Event:connect(function(moduleName)
	BackpackPanel:SetVisible(true)
end)


BackpackPanel:LinkTo("Topbar3D")

return BackpackScript
