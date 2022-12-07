--!nonstrict
local VRService 		= game:GetService("VRService")
local Players 			= game:GetService("Players")
local UserInputService 	= game:GetService("UserInputService")
local CoreGui 			= game:GetService("CoreGui")
local CorePackages		= game:GetService("CorePackages")

local RobloxGui 		= CoreGui.RobloxGui
local ViveController 	= require(RobloxGui.Modules.VR.Controllers.ViveController)
local RiftController 	= require(RobloxGui.Modules.VR.Controllers.RiftController)
local IndexController 	= require(RobloxGui.Modules.VR.Controllers.IndexController)
local VRUtil			= require(RobloxGui.Modules.VR.VRUtil)

local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")
local GetFFlagUIBloxVRApplyHeadScale =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxVRApplyHeadScale

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
	self.currentVRDeviceName = EngineFeatureEnableVRUpdate3 and VRService.VRDeviceName or nil
	self.modelIsInWorkspace = false

	self.onVRDeviceChangedConn = nil
	self.onCurrentCameraChangedConn = nil
	self.onUserCFrameEnabledChangedConn = nil
	self.onInputBeganConn = nil
	self.onInputChangedConn = nil
	self.onInputEndedConn = nil

	-- these models are not destroyed and instead stored because creation is expensive
	self.controllerModel = nil -- the model for device controller

	return self
end

-- creates the controller model and stores it in self.controllerModel
function VRControllerModel:createControllerModel()
	if self.currentVRDeviceName:match("Vive") then
		self.controllerModel = ViveController.new(self.userCFrame)
	elseif self.currentVRDeviceName:match("Rift") then
		self.controllerModel = RiftController.new(self.userCFrame)
	elseif self.currentVRDeviceName:match("Index") then
		self.controllerModel = IndexController.new(self.userCFrame)
	else
		self.controllerModel = RiftController.new(self.userCFrame)
	end
end

function VRControllerModel:setModelType(vrDeviceName)
	if not EngineFeatureEnableVRUpdate3 and vrDeviceName ~= self.currentVRDeviceName then
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

-- sets currentModel based on VRDeviceName
function VRControllerModel:setCurrentModel()
	-- if current model, remove from workspace (but not destroyed)
	if self.currentModel then
		self:setModelInWorkspace(false)
	end

	if not self.controllerModel then
		self:createControllerModel()
	end
	self.currentModel = self.controllerModel

	--If the controller is enabled, put the model into the workspace
	if self.enabled then
		self:setModelInWorkspace(VRService:GetUserCFrameEnabled(self.userCFrame))
	end
end

function VRControllerModel:setModelInWorkspace(inWorkspace)
	if not self.currentModel then
		return
	end

	if inWorkspace ~= self.modelIsInWorkspace then
		self.modelIsInWorkspace = inWorkspace
		if EngineFeatureEnableVRUpdate3 then
			if self.currentModel.model then
				if self.modelIsInWorkspace then
					self.currentModel.model.Parent = workspace
				else
					self.currentModel.model.Parent = nil
				end
			else
				self.currentModel:setInWorkspace(inWorkspace)
			end
		else
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
end

function VRControllerModel:setEnabled(enabled)
	if enabled ~= self.enabled then
		self.enabled = enabled
		
		if self.enabled then
			if EngineFeatureEnableVRUpdate3 then
				self:setCurrentModel()
			else
				--Connect events
				self.onVRDeviceChangedConn = VRService:GetPropertyChangedSignal("VRDeviceName"):connect(function()
					self:setModelType(VRService.VRDeviceName)
				end)
				self:setModelType(VRService.VRDeviceName)
			end

			self.onCurrentCameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
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
		if GetFFlagUIBloxVRApplyHeadScale() then
			local cframe = VRUtil.GetUserCFrameWorldSpace(self.userCFrame)
			self.currentModel:setCFrameAndScale(cframe, (workspace.CurrentCamera :: Camera).HeadScale)
		else
			local camera = workspace.CurrentCamera

			local cameraCFrame = camera.CFrame
			local controllerCFrame = VRService:GetUserCFrame(self.userCFrame)
			local cframe = cameraCFrame * controllerCFrame
			self.currentModel:setCFrame(cframe)
		end
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