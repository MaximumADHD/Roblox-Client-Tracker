--[[
	Provides the Camera's CFrame property to various components.

	This is used for distance checking to ensure we can render things based on
	where the camera is in the world.
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Constants = require(script.Parent.Parent.Constants)

local CameraContext = Roact.createContext()

local CameraProvider = Roact.Component:extend("CameraProvider")

function CameraProvider:init()
	self.currentCamera = nil

	self.state = {
		value = CFrame.new()
	}

	self.cameraCFrameChanged = function()
		local cframe = self.currentCamera.CFrame
		local difference = (self.state.value.Position - cframe.Position).Magnitude

		if difference > Constants.CAMERA_CHANGED_EPSILON then
			self:setState({
				value = cframe
			})
		end
	end
end

function CameraProvider:render()
	return Roact.createElement(CameraContext.Provider, {
		value = self.state.value
	}, self.props[Roact.Children])
end

function CameraProvider:updateCamera()
	local camera = workspace.CurrentCamera

	if camera then
		self.currentCamera = camera
		self.cameraChangedConn = camera:GetPropertyChangedSignal("CFrame"):Connect(self.cameraCFrameChanged)
		self.cameraCFrameChanged()
	end
end

function CameraProvider:didMount()
	self:updateCamera()

	self.cameraPropChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		if self.cameraChangedConn then
			self.cameraChangedConn:Disconnect()
		end

		self:updateCamera()
	end)
end

function CameraProvider:willUnmount()
	if self.cameraChangedConn then
		self.cameraChangedConn:Disconnect()
	end
	self.cameraPropChangedConn:Disconnect()
end

return {
	Provider = CameraProvider,
	Consumer = CameraContext.Consumer
}
