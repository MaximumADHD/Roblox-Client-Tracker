--!nonstrict

local VRService = game:GetService("VRService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui.RobloxGui
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRKeyboard = require(RobloxGui.Modules.VR.VirtualKeyboard)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local FFlagVRLetRaycastsThroughUI = require(CoreGuiModules.Flags.FFlagVRLetRaycastsThroughUI)

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")
local GetFFlagUIBloxVRApplyHeadScale =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxVRApplyHeadScale

local FFlagFixPurchasePromptInVR = game:GetEngineFeature("FixPurchasePromptInVR")

local UserGuiModule = {}
UserGuiModule.ModuleName = "UserGui"
UserGuiModule.KeepVRTopbarOpen = false
UserGuiModule.VRIsExclusive = false
UserGuiModule.VRClosesNonExclusive = false
UserGuiModule.SetVisible = nil
VRHub:RegisterModule(UserGuiModule)

local VR_MENU_KEY = "VRMenu"
local userPanelSize = Vector2.new(4, 3)
local newPanelSize = Vector2.new(2.66, 2)

local vrMenuOpen = false

local userGuiPanel = Panel3D.Get(UserGuiModule.ModuleName)
userGuiPanel:SetType(Panel3D.Type.NewStandard)
if FFlagVRLetRaycastsThroughUI then
	userGuiPanel:GetPart().CanQuery = false
end

-- this matches the core ui rect in ScreenGui
local panelSizeX
local panelSizeY
if GetFFlagUIBloxVRApplyHeadScale() then
	panelSizeX = 2.7978
	panelSizeY = panelSizeX * 0.75
else
-- ROBLOX FIXME: Should this be CurrentCamera?
	panelSizeX = (workspace :: any).Camera.HeadScale * 2.7978
	panelSizeY = panelSizeX * 0.75
end

local userPanelSize = Vector2.new(panelSizeX, panelSizeY)
userGuiPanel:ResizeStuds(userPanelSize.x, userPanelSize.y, 128)

userGuiPanel:SetVisible(false)

local userGuiTimeout = 0

-- new panel that is semi-attached to the camera orientation
local plPanel = nil
if EngineFeatureEnableVRUpdate3 then
	plPanel = Panel3D.Get("PositionLocked")
	plPanel:SetType(Panel3D.Type.PositionLocked)
	if FFlagVRLetRaycastsThroughUI then
		-- This panel doesn't use a SurfaceGui, so it doesn't need raycasts to interact with it.
		-- We don't want to potentially block any developer raycasts, so opt out of raycasts and other spatial queries.
		plPanel:GetPart().CanQuery = false
	end
		
	if GetFFlagUIBloxVRApplyHeadScale() then
		plPanel:ResizeStuds(newPanelSize.x, newPanelSize.y, 128)
	else
	local headScale = workspace.CurrentCamera and workspace.CurrentCamera.HeadScale or 1
	plPanel:ResizeStuds(newPanelSize.x * headScale, newPanelSize.y * headScale, 128)
	end
	plPanel:SetVisible(false)
	plPanel.showCursor = true
end

VRHub.ModuleOpened.Event:connect(function(moduleName)
	if moduleName ~= UserGuiModule.ModuleName then
		local module = VRHub:GetModule(moduleName)
		if module.VRClosesNonExclusive and userGuiPanel:IsVisible() then
			UserGuiModule:SetVisible(false, nil)
		end
	end
end)

local KeyboardOpen = false
local GuiVisible = false

function UserGuiModule:SetVisible(visible, panel)
	GuiVisible = visible
	if EngineFeatureEnableVRUpdate3 then
		if panel then
			panel:SetVisible(GuiVisible)
		end
	else 
		userGuiPanel:SetVisible(visible)
	end
	
	if GuiVisible then
		VRHub:FireModuleOpened(UserGuiModule.ModuleName)
	else
		VRHub:FireModuleClosed(UserGuiModule.ModuleName)
	end

	-- We need to hide the UserGui when typing on the keyboard so that the textbox doesn't sink events from the keyboard
	local showGui = GuiVisible and not KeyboardOpen
	if EngineFeatureEnableVRUpdate3 then
		CoreGui:SetUserGuiRendering(true, showGui and panel and panel:GetPart() or nil, Enum.NormalId.Front)
	else
		CoreGui:SetUserGuiRendering(true, showGui and userGuiPanel and userGuiPanel:GetPart() or nil, Enum.NormalId.Front)
	end
end


function UserGuiModule:IsVisible()
	return GuiVisible
end

function UserGuiModule:Update()
	self:SetVisible(GuiVisible)
end

-- this function picks the target UI panel based on the setup/controls
local function onGuiSelection()
	-- we are using a expanding/collapsing panel that is following the camera orientation
	if EngineFeatureEnableVRUpdate3 then
		-- make sure the right laser pointer hand is set
		VRHub.LaserPointer:updateInputUserCFrame()

		-- remove headScale with FFlagUIBloxVRApplyHeadScale
		local headScale
		if GetFFlagUIBloxVRApplyHeadScale() then
			headScale = 1
		else
			headScale = workspace.CurrentCamera and workspace.CurrentCamera.HeadScale or 1
		end
		if VRHub.ShowTopBar then
			UserGuiModule:SetVisible(true, plPanel) -- UI interactive on wrist
			plPanel.initialCFLerp = 1
			plPanel:ForcePositionUpdate(true)
			plPanel.distance = 2.5 * headScale

			if not vrMenuOpen then
				plPanel:StartLerp(newPanelSize * headScale)
				vrMenuOpen = true
			end
		else -- interaction off
			plPanel:StartLerp(newPanelSize * 0.25 * headScale)
			UserGuiModule:SetVisible(false, plPanel)

			GuiService.SelectedObject = nil
			vrMenuOpen = false
		end
	end
end 

if EngineFeatureEnableVRUpdate3 then
	VRHub.ShowTopBarChanged.Event:connect(onGuiSelection)
	GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(onGuiSelection)
	VRService.UserCFrameEnabled:Connect(onGuiSelection)
	if FFlagFixPurchasePromptInVR then
		GuiService.PurchasePromptShown:Connect(function()
			-- Purchase prompt pops up while UI is hidden should force UI to show up
			if not VRHub.ShowTopBar then
				VRHub:SetShowTopBar(true)
			end
		end)
	end

	local InGameMenu = require(RobloxGui.Modules.InGameMenu)
	local function handleAction(actionName, inputState, inputObject)
		if actionName == "OpenVRMenu" and inputState == Enum.UserInputState.Begin then
			if not VRHub.ShowTopBar then
				VRHub:SetShowTopBar(true)
			else
				VRHub:SetShowTopBar(false)
				InGameMenu.closeInGameMenu()
			end
		end

		if actionName == "OpenIGMenu" and inputState == Enum.UserInputState.Begin then
			if not VRHub.ShowTopBar then
				VRHub:SetShowTopBar(true)
			end

			if not InGameMenu.getOpen() then
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			end
		end
	end
	ContextActionService:BindAction("OpenVRMenu", handleAction, false, Enum.KeyCode.ButtonSelect)
	ContextActionService:BindAction("OpenIGMenu", handleAction, false, Enum.KeyCode.ButtonStart)
end

local function OnVREnabledChanged()
	if not VRService.VREnabled then
		userGuiPanel:SetVisible(false)
		CoreGui:SetUserGuiRendering(false, nil, Enum.NormalId.Front)
	else
		if EngineFeatureEnableVRUpdate3 then
			UserGuiModule:SetVisible(false, userGuiPanel)
			UserGuiModule:SetVisible(true, plPanel)
		else
			-- this function picks the target UI panel based on the setup/controls
			local function onGuiSelection()
				-- make sure the right laser pointer hand is set
				VRHub.LaserPointer:updateInputUserCFrame()

				-- the new VR System using a wand instead of the gamepad to interact with the 2D UI on a 3D panel
				if VRHub.ShowTopBar then
					UserGuiModule:SetVisible(true) -- UI fixed in front of camera
				else -- interaction off
					UserGuiModule:SetVisible(false) 
					CoreGui:SetUserGuiRendering(false, nil, Enum.NormalId.Front) -- go back to "normal" ui rendering
				end
			end

			VRHub.ShowTopBarChanged.Event:connect(onGuiSelection)
			GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(onGuiSelection)
			VRService.UserCFrameEnabled:Connect(onGuiSelection)
			if FFlagFixPurchasePromptInVR then
				GuiService.PurchasePromptShown:Connect(function()
					-- Purchase prompt pops up while UI is hidden should force UI to show up
					if not VRHub.ShowTopBar then
						VRHub:SetShowTopBar(true)
					end
				end)
			end

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
		end
		
		VRHub:SetShowTopBar(true)
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

if EngineFeatureEnableVRUpdate3 then
	VRHub:SetShowTopBar(true)
	onGuiSelection()
end

return UserGuiModule
