--!nocheck

local VRService = game:GetService("VRService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRKeyboard = require(RobloxGui.Modules.VR.VirtualKeyboard)

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)
local EngineFeatureEnableVRUpdate2 = game:GetEngineFeature("EnableVRUpdate2")

local UserGuiModule = {}
UserGuiModule.ModuleName = "UserGui"
UserGuiModule.KeepVRTopbarOpen = false
UserGuiModule.VRIsExclusive = false
UserGuiModule.VRClosesNonExclusive = false
VRHub:RegisterModule(UserGuiModule)

local VR_MENU_KEY = "VRMenu"

local userGuiPanel = Panel3D.Get(UserGuiModule.ModuleName)
if FFlagEnableNewVrSystem then
	userGuiPanel:SetType(Panel3D.Type.NewStandard)
else
	userGuiPanel:SetType(Panel3D.Type.Standard)
end

if EngineFeatureEnableVRUpdate2 then
	-- this matches the core ui rect in ScreenGui
	local panelSizeX = workspace.Camera.HeadScale * 2.7978
	local panelSizeY = panelSizeX * 0.75

	local userPanelSize = Vector2.new(panelSizeX, panelSizeY)
	userGuiPanel:ResizeStuds(userPanelSize.x, userPanelSize.y, 128)
else
	userGuiPanel:ResizeStuds(4, 4, 128)
end
userGuiPanel:SetVisible(false)

local userGuiTimeout = 0

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
	userGuiPanel:SetVisible(visible)
	
	if GuiVisible then
		VRHub:FireModuleOpened(UserGuiModule.ModuleName)
	else
		VRHub:FireModuleClosed(UserGuiModule.ModuleName)
	end

	-- We need to hide the UserGui when typing on the keyboard so that the textbox doesn't sink events from the keyboard
	local showGui = GuiVisible and not KeyboardOpen
	CoreGui:SetUserGuiRendering(true, showGui and userGuiPanel and userGuiPanel:GetPart() or nil, Enum.NormalId.Front)
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
	else
		if EngineFeatureEnableVRUpdate2 then
			-- this function picks the target UI panel based on the setup/controls
			local function onGuiSelection()
				-- make sure the right laser pointer hand is set
				VRHub.LaserPointer:updateInputUserCFrame()

				if VRHub.vrGuiLockEnabled then
					return -- nothing to do
				end

				-- the new VR System using a wand instead of the gamepad to interact with the 2D UI on a 3D panel
				if FFlagEnableNewVrSystem then

					if VRHub.ShowTopBar then
						UserGuiModule:SetVisible(true) -- UI fixed in front of camera
					else -- interaction off
						UserGuiModule:SetVisible(false) 
						CoreGui:SetUserGuiRendering(false, nil, Enum.NormalId.Front) -- go back to "normal" ui rendering
					end

				end
			end 

			VRHub.ShowTopBarChanged.Event:connect(onGuiSelection)
			GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(onGuiSelection)
			VRService.UserCFrameEnabled:Connect(onGuiSelection)

			RunService.RenderStepped:Connect(function(step)
				if userGuiPanel.isVisible and userGuiPanel.isLookedAt then
					userGuiTimeout = 0.5
				end

				if not (userGuiPanel.isVisible and userGuiPanel.isLookedAt) then
					if userGuiTimeout > 0 then
						userGuiTimeout -= step
					else
						GuiService:SetMenuIsOpen(false, VR_MENU_KEY)
					end
				end

				VRHub:SetShowTopBar(GuiService.MenuIsOpen)
			end)

			local function handleAction(actionName, inputState, inputObject)
				if actionName == "VrOpenMenu" and inputState == Enum.UserInputState.Begin then
					if GuiService.MenuIsOpen == false then
						GuiService:SetMenuIsOpen(true, VR_MENU_KEY)
						userGuiTimeout = 1
					else
						GuiService:SetMenuIsOpen(false, VR_MENU_KEY)
					end
				end
			end
			ContextActionService:BindCoreAction("VrOpenMenu", handleAction, false, Enum.KeyCode.ButtonStart, Enum.KeyCode.ButtonSelect)
		else
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
		end
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

if not FFlagEnableNewVrSystem then
	UserGuiModule:SetVisible(true)
end

return UserGuiModule
