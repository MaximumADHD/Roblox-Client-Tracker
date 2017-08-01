local InputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRKeyboard = require(RobloxGui.Modules.VR.VirtualKeyboard)

local PANEL_OFFSET_CFRAME = CFrame.Angles(math.rad(-5), 0, 0) * CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(-15), 0, 0)

local UserGuiModule = {}
UserGuiModule.ModuleName = "UserGui"
UserGuiModule.KeepVRTopbarOpen = false
UserGuiModule.VRIsExclusive = false
UserGuiModule.VRClosesNonExclusive = false
VRHub:RegisterModule(UserGuiModule)

local userGuiPanel = Panel3D.Get(UserGuiModule.ModuleName)
userGuiPanel:SetType(Panel3D.Type.Fixed)
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
		local topbarPanel = Panel3D.Get("Topbar3D")
		local userGuiModuleCFrame = topbarPanel.localCF * PANEL_OFFSET_CFRAME

		userGuiPanel.localCF = userGuiModuleCFrame
		VRHub:FireModuleOpened(UserGuiModule.ModuleName)
	else
		VRHub:FireModuleClosed(UserGuiModule.ModuleName)
	end

	local success, msg = pcall(function()
		-- We need to hide the UserGui when typing on the keyboard so that the textbox doesn't sink events from the keyboard
		local showGui = GuiVisible and not KeyboardOpen
		CoreGui:SetUserGuiRendering(true, showGui and userGuiPanel:GetPart() or nil, Enum.NormalId.Front)
	end)
end

function UserGuiModule:Update()
	self:SetVisible(GuiVisible)
end

local function OnVREnabled(prop)
	if prop == 'VREnabled' then
		local guiPart = nil
		if InputService.VREnabled then
			if userGuiPanel.isVisible then
				guiPart = userGuiPanel:GetPart()
			end
		else
			userGuiPanel:SetVisible(false)
		end
		local success, msg = pcall(function()
			CoreGui:SetUserGuiRendering(InputService.VREnabled, guiPart, Enum.NormalId.Front)
		end)

		VRKeyboard.OpenedEvent:connect(function()
			KeyboardOpen = true
			UserGuiModule:Update()
		end)

		VRKeyboard.ClosedEvent:connect(function()
			KeyboardOpen = false
			UserGuiModule:Update()
		end)

	end
end
InputService.Changed:connect(OnVREnabled)
spawn(function() OnVREnabled("VREnabled") end)

return UserGuiModule
