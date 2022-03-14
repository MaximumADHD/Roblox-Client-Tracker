--!nocheck

local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRKeyboard = require(RobloxGui.Modules.VR.VirtualKeyboard)
local UserInputService = game:GetService("UserInputService")

local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)

local UserGuiModule = {}
UserGuiModule.ModuleName = "UserGui"
UserGuiModule.KeepVRTopbarOpen = false
UserGuiModule.VRIsExclusive = false
UserGuiModule.VRClosesNonExclusive = false
VRHub:RegisterModule(UserGuiModule)

local userGuiPanel = Panel3D.Get(UserGuiModule.ModuleName)
if FFlagEnableNewVrSystem then
	userGuiPanel:SetType(Panel3D.Type.NewStandard)
else
	userGuiPanel:SetType(Panel3D.Type.Standard)
end
userGuiPanel:ResizeStuds(4, 4, 128)
userGuiPanel:SetVisible(false)

VRHub.ModuleOpened.Event:connect(function(moduleName)
	if moduleName ~= UserGuiModule.ModuleName then
		local module = VRHub:GetModule(moduleName)
		if module.VRClosesNonExclusive and userGuiPanel:IsVisible() then
			UserGuiModule:SetVisible(false)
		end
	end
end)

local KeyboardOpen = false
local GuiVisible = false

function UserGuiModule:SetVisible(visible)
	GuiVisible = visible
	userGuiPanel:SetVisible(GuiVisible)
	
	if GuiVisible then
		VRHub:FireModuleOpened(UserGuiModule.ModuleName)
	else
		VRHub:FireModuleClosed(UserGuiModule.ModuleName)
	end

	-- We need to hide the UserGui when typing on the keyboard so that the textbox doesn't sink events from the keyboard
	local showGui = GuiVisible and not KeyboardOpen
	CoreGui:SetUserGuiRendering(true, showGui and userGuiPanel:GetPart() or nil, Enum.NormalId.Front)
end

function UserGuiModule:IsVisible()
	return GuiVisible
end

function UserGuiModule:Update()
	self:SetVisible(GuiVisible)
end

local function OnVREnabledChanged()
	if not VRService.VREnabled then
		userGuiPanel:SetVisible(false)
		CoreGui:SetUserGuiRendering(false, nil, Enum.NormalId.Front)
	end
end
VRService:GetPropertyChangedSignal("VREnabled"):connect(OnVREnabledChanged)
OnVREnabledChanged()

VRKeyboard.OpenedEvent:connect(function()
	KeyboardOpen = true
	UserGuiModule:Update()
end)

VRKeyboard.ClosedEvent:connect(function()
	KeyboardOpen = false
	UserGuiModule:Update()
end)

local function onGuiSelection()
	-- the new VR System using a wand instead of the gamepad to interact with the 2D UI on a 3D panel
	if FFlagEnableNewVrSystem then
		if GamepadService.GamepadCursorEnabled then
			VRHub.LaserPointer:setMode(VRHub.LaserPointer.Mode.Pointer)
			UserGuiModule:SetVisible(true)
			userGuiPanel:ForcePositionUpdate(false)
		else
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide

			VRHub.LaserPointer:setMode(VRHub.LaserPointer.Mode.Disabled)
			UserGuiModule:SetVisible(false)
			CoreGui:SetUserGuiRendering(false, nil, Enum.NormalId.Front) -- go back to "normal" ui
			userGuiPanel:ForcePositionUpdate(true)
		end
	end
end 
GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"):Connect(onGuiSelection)

if not FFlagEnableNewVrSystem then
	UserGuiModule:SetVisible(true)
end

return UserGuiModule