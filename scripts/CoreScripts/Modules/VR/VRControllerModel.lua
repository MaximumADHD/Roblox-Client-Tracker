local VRService 		= game:GetService("VRService")
local Players 			= game:GetService("Players")
local UserInputService 	= game:GetService("UserInputService")
local CoreGui 			= game:GetService("CoreGui")

local RobloxGui 		= CoreGui.RobloxGui
local ViveController 	= require(RobloxGui.Modules.VR.Controllers.ViveController)

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players.Changed:wait()
	LocalPlayer = Players.LocalPlayer
end

local VRControllerModel = {}
VRControllerModel.__index = VRControllerModel

function VRControllerModel.new(userCFrame)
	local self = setmetatable({}, VRControllerModel)
	self.userCFrame = userCFrame
	self.enabled = false
	self.currentModel = nil
	self.currentVRDeviceName = nil
	self.modelIsInWorkspace = false

	self.onVRDeviceChangedConn = nil
	self.onCurrentCameraChangedConn = nil
	self.onUserCFrameEnabledChangedConn = nil
	self.onInputBeganConn = nil
	self.onInputChangedConn = nil
	self.onInputEndedConn = nil

	return self
end

function VRControllerModel:setModelType(vrDeviceName)
	if vrDeviceName ~= self.currentVRDeviceName then
		self.currentVRDeviceName = vrDeviceName

		if self.currentModel then
			self.currentModel:destroy()
			self.currentModel = nil
		end
		if self.currentVRDeviceName:match("Vive") then
			self.currentModel = ViveController.new(self.userCFrame)
		elseif self.currentVRDeviceName:match("Oculus") then
			--todo: add an Oculus touch controller model
			--self.currentModel = OculusTouchController.new(self.userCFrame)
		end

		--If the controller is enabled, put the model into the workspace
		if self.enabled then
			self:setModelInWorkspace(VRService:GetUserCFrameEnabled(self.userCFrame))
		end
	end
end

function VRControllerModel:setModelInWorkspace(inWorkspace)
	if not self.currentModel then
		return
	end
	if inWorkspace ~= self.modelIsInWorkspace then
		self.modelIsInWorkspace = inWorkspace
		if self.modelIsInWorkspace then
			local camera = workspace.CurrentCamera
			local folder = camera:FindFirstChild("VRCoreEffectParts")
			if folder then
				self.currentModel.model.Parent = folder
			end
		else
			self.currentModel.model.Parent = nil
		end
	end
end

function VRControllerModel:setEnabled(enabled)
	if enabled ~= self.enabled then
		self.enabled = enabled
		
		if self.enabled then
			--Connect events
			self.onVRDeviceChangedConn = VRService:GetPropertyChangedSignal("VRDeviceName"):connect(function()
				self:setModelType(VRService.VRDeviceName)
			end)
			self:setModelType(VRService.VRDeviceName)

			self.onCurrentCameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):connect(function()
				self:setModelInWorkspace(VRService:GetUserCFrameEnabled(self.userCFrame))
			end)

			self.onUserCFrameEnabledChangedConn = VRService.UserCFrameEnabled:connect(function(userCFrame, enabled)
				if userCFrame == self.userCFrame then
					self:setModelInWorkspace(enabled)
				end
			end)

			self.onInputBeganConn = UserInputService.InputBegan:connect(function(...) self:onInputBegan(...) end)
			self.onInputChangedConn = UserInputService.InputChanged:connect(function(...) self:onInputChanged(...) end)
			self.onInputEndedConn = UserInputService.InputEnded:connect(function(...) self:onInputEnded(...) end)

			--Put the model in the workspace
			self:setModelInWorkspace(VRService:GetUserCFrameEnabled(self.userCFrame))
		else
			--Disconnect events
			if self.onVRDeviceChangedConn then self.onVRDeviceChangedConn:disconnect() self.onVRDeviceChangedConn = nil end
			if self.onCurrentCameraChangedConn then self.onCurrentCameraChangedConn:disconnect() self.onCurrentCameraChangedConn = nil end
			if self.onUserCFrameEnabledChangedConn then self.onUserCFrameEnabledChangedConn:disconnect() self.onUserCFrameEnabledChangedConn = nil end
			if self.onInputBeganConn then self.onInputBeganConn:disconnect() self.onInputBeganConn = nil end
			if self.onInputChangedConn then self.onInputChangedConn:disconnect() self.onInputChangedConn = nil end
			if self.onInputEndedConn then self.onInputEndedConn:disconnect() self.onInputEndedConn = nil end

			--Remove the model from the workspace
			if self.currentModel then
				self:setModelInWorkspace(false)
			end
		end
	end
end

function VRControllerModel:update(dt)
	if not self.enabled then
		return
	end

	if self.currentModel then
		local camera = workspace.CurrentCamera

		local cameraCFrame = camera.CFrame
		local controllerCFrame = VRService:GetUserCFrame(self.userCFrame)
		local cframe = cameraCFrame * controllerCFrame
		self.currentModel:setCFrame(cframe)
	end
end

function VRControllerModel:onInputBegan(inputObject, wasProcessed)
	if not self.enabled or not self.modelIsInWorkspace then
		return
	end
	if self.currentModel then
		self.currentModel:onInputBegan(inputObject)
	end
end

function VRControllerModel:onInputChanged(inputObject, wasProcessed)
	if not self.enabled or not self.modelIsInWorkspace then
		return
	end
	if self.currentModel then
		self.currentModel:onInputChanged(inputObject)
	end
end

function VRControllerModel:onInputEnded(inputObject, wasProcessed)
	if self.currentModel then
		self.currentModel:onInputEnded(inputObject)
	end
end

return VRControllerModel