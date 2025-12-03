--!nonstrict

local AnalyticsService = game:GetService("RbxAnalyticsService")
local VRService = game:GetService("VRService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui.RobloxGui
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local Panel3D = require(CorePackages.Workspace.Packages.VrCommon).Panel3D
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRKeyboard = require(RobloxGui.Modules.VR.VirtualKeyboard)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local IsSpatialRobloxGuiEnabled = require(RobloxGui.Modules.VR.IsSpatialRobloxGuiEnabled)

local CorePackages = game:GetService("CorePackages")
local VRModule = require(CorePackages.Workspace.Packages.VrCompatibility)
local VRAppConstants = VRModule.VRConstants

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local FFlagEnableUIManagerPackgify = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUIManagerPackgify
local PanelType
local UIManager
if FFlagEnableUIManagerPackgify then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	PanelType = VrSpatialUi.Constants.PanelType
	UIManager = VrSpatialUi.UIManager
else
	local UIManagerFolder = CoreGuiModules:WaitForChild("UIManager")
	local Constants = require(UIManagerFolder.Constants)
	PanelType = Constants.PanelType
	UIManager = require(UIManagerFolder.UIManager)
end
local MENU_LONG_PRESS_DURATION_IN_SECOND = 1
-- this var moves the gui and bottom bar together
local GetFIntVRScaleGuiDistance = require(RobloxGui.Modules.Flags.GetFIntVRScaleGuiDistance) or 100
local scaleGuiDistance = GetFIntVRScaleGuiDistance() * 0.01
local FFlagFixVRActionBinding = game:DefineFastFlag("FixVRActionBinding", false)

if not VRService.VREnabled then
	warn("UserGui should not be required while not in VR")
	return nil
end

-- Ensure we have the desired target framerate for experiences.
-- SVR-685 and SVR-686 would simplify this implementation
local EXPERIENCE_QUEST_REFRESH_RATE = 90
VRService.QuestDisplayRefreshRate = EXPERIENCE_QUEST_REFRESH_RATE

local UserGuiModule = {}
UserGuiModule.ModuleName = "UserGui"
UserGuiModule.KeepVRTopbarOpen = false
UserGuiModule.VRIsExclusive = false
UserGuiModule.VRClosesNonExclusive = false
UserGuiModule.SetVisible = nil
VRHub:RegisterModule(UserGuiModule)

local VR_MENU_KEY = "VRMenu"
local userPanelSize = Vector2.new(4, 3)
local newPanelSize = Vector2.new(2.66 * scaleGuiDistance, 2 * scaleGuiDistance)

local vrMenuOpen = false

local userGuiPanel = Panel3D.Get(UserGuiModule.ModuleName)
userGuiPanel:SetType(Panel3D.Type.NewStandard)
userGuiPanel:GetPart().CanQuery = false

-- this matches the core ui rect in ScreenGui
local panelSizeX = 2.7978
local panelSizeY = panelSizeX * 0.75
local userPanelSize = Vector2.new(panelSizeX, panelSizeY)
userGuiPanel:ResizeStuds(userPanelSize.x, userPanelSize.y, 128)

userGuiPanel:SetVisible(false)

local userGuiTimeout = 0

local plPanel
if IsSpatialRobloxGuiEnabled then
	plPanel = Panel3D.Get(VRAppConstants.PositionLockedPanelName)
	config = {}
	local panelCreationProps = {
		panelType = PanelType.RobloxGui,
	}
	config.uiManagerPanelPart = (UIManager.getInstance():createUI(panelCreationProps)).panelObject :: Part
	plPanel:SetType(Panel3D.Type.UIManagerManaged, config)
else
	plPanel = Panel3D.Get(VRAppConstants.PositionLockedPanelName)
	plPanel:SetType(Panel3D.Type.PositionLocked)
end
-- This panel doesn't use a SurfaceGui, so it doesn't need raycasts to interact with it.
-- We don't want to potentially block any developer raycasts, so opt out of raycasts and other spatial queries.
plPanel:GetPart().CanQuery = false

plPanel:ResizeStuds(newPanelSize.x, newPanelSize.y, 128)
plPanel:SetVisible(false)
plPanel.showCursor = true

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
	if panel then
		panel:SetVisible(GuiVisible)
	end

	if GuiVisible then
		VRHub:FireModuleOpened(UserGuiModule.ModuleName)
	else
		VRHub:FireModuleClosed(UserGuiModule.ModuleName)
	end

	-- We need to hide the UserGui when typing on the keyboard so that the textbox doesn't sink events from the keyboard
	local showGui = GuiVisible and not KeyboardOpen
	if IsSpatialRobloxGuiEnabled then
		CoreGui:SetUserGuiRendering(true, showGui and panel and panel:GetPart() or nil, Enum.NormalId.Back)
	else
		CoreGui:SetUserGuiRendering(true, showGui and panel and panel:GetPart() or nil, Enum.NormalId.Front)
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
	-- make sure the right laser pointer hand is set
	VRHub.LaserPointer:updateInputUserCFrame()

	if VRHub.ShowTopBar then
		UserGuiModule:SetVisible(true, plPanel) -- UI interactive on wrist
		plPanel.initialCFLerp = 1
		plPanel:ForcePositionUpdate(true)
		plPanel.distance = 2.5 * scaleGuiDistance

		if not vrMenuOpen then
			plPanel:StartLerp(newPanelSize)
			vrMenuOpen = true
		end
	else -- interaction off
		plPanel:StartLerp(newPanelSize * 0.25)
		UserGuiModule:SetVisible(false, plPanel)

		GuiService.SelectedObject = nil
		vrMenuOpen = false
	end
end

VRHub.ShowTopBarChanged.Event:connect(onGuiSelection)
GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(onGuiSelection)
VRService.UserCFrameEnabled:Connect(onGuiSelection)
GuiService.PurchasePromptShown:Connect(function()
	-- Purchase prompt pops up while UI is hidden should force UI to show up
	if not VRHub.ShowTopBar then
		VRHub:SetShowTopBar(true)
	end
end)

local function onGuiSelectedObjectChanged(newObject)
	if (GuiService.SelectedObject or GuiService.SelectedCoreObject) and not VRHub.ShowTopBar then
		VRHub:SetShowTopBar(true)
	end
	GuiService.SelectedObject = nil
	GuiService.SelectedCoreObject = nil
end

GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(onGuiSelectedObjectChanged)
GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(onGuiSelectedObjectChanged)

local InGameMenu = require(RobloxGui.Modules.InGameMenu)

local function onVRMenuClicked(actionName)
	if actionName == "OpenVRMenu" then
		if not VRHub.ShowTopBar then
			VRHub:SetShowTopBar(true)

			AnalyticsService:ReportCounter("VR-BindAction-ToggleGui-On")
		else
			VRHub:SetShowTopBar(false)
			InGameMenu.closeInGameMenu()

			AnalyticsService:ReportCounter("VR-BindAction-ToggleGui-Off")
		end
	end

	if actionName == "OpenIGMenu" then
		if not VRHub.ShowTopBar then
			VRHub:SetShowTopBar(true)
		end

		if not InGameMenu.getOpen() then
			InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
		end
	end
end

local function handleAction(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		onVRMenuClicked(actionName)
	end
end

if isInExperienceUIVREnabled then
	local InputHandlers = require(CorePackages.Packages.InputHandlers)
	local isPressed = false
	local isLongPressed = false

	function UserGuiModule:isInputNeededForOpenVRMenu(inputObject)
		return inputObject.KeyCode == Enum.KeyCode.ButtonSelect
	end

	function UserGuiModule:getOpenVRMenuHandler()
		local handleInputCallback = InputHandlers.handleInput({
			onPress = function()
				isPressed = true
				isLongPressed = false
			end,
			hold = {
				durationSeconds = MENU_LONG_PRESS_DURATION_IN_SECOND,
				onComplete = function()
					isLongPressed = true
					UIManager.getInstance():resetDragAndDrop()
				end,
				allowReleaseAfterHold = true,
			},
			onRelease = function()
				if not isLongPressed then
					onVRMenuClicked("OpenVRMenu")
				end
				isPressed = false
				isLongPressed = false
			end,
		})
		return function(actionName, inputState, inputObject)
			local event = {
				eventData = {
					UserInputState = inputState,
				},
			}
			handleInputCallback(event)
		end
	end
end

if FFlagFixVRActionBinding or isInExperienceUIVREnabled then
	if isInExperienceUIVREnabled then
		ContextActionService:BindCoreAction(
			"OpenVRMenu",
			UserGuiModule:getOpenVRMenuHandler(),
			false,
			Enum.KeyCode.ButtonSelect
		)
	else
		ContextActionService:BindCoreAction("OpenVRMenu", handleAction, false, Enum.KeyCode.ButtonSelect)
	end
else
	ContextActionService:BindAction("OpenVRMenu", handleAction, false, Enum.KeyCode.ButtonSelect)
end
ContextActionService:BindAction("OpenIGMenu", handleAction, false, Enum.KeyCode.ButtonStart)

local function OnVREnabledChanged()
	if not VRService.VREnabled then
		userGuiPanel:SetVisible(false)
		CoreGui:SetUserGuiRendering(false, nil, Enum.NormalId.Front)
	else
		UserGuiModule:SetVisible(false, userGuiPanel)
		UserGuiModule:SetVisible(true, plPanel)
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

VRHub:SetShowTopBar(true)
onGuiSelection()

function UserGuiModule:getPanel()
	return plPanel
end

return UserGuiModule
