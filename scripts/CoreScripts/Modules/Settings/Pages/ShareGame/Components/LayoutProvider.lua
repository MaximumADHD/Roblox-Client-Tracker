local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local SetDeviceOrientation = require(CorePackages.Workspace.Packages.DeviceOrientationRodux).Actions.SetDeviceOrientation
local SetIsSmallTouchScreen = require(ShareGame.Actions.SetIsSmallTouchScreen)
local SetDeviceLayout = require(ShareGame.Actions.SetDeviceLayout)

-- Magic values derived from CoreScripts/Modules/Settings/Utility.lua
local SMALL_DEVICE_HEIGHT = 500
local SMALL_DEVICE_WIDTH = 700

local LayoutProvider = Roact.Component:extend("LayoutProvider")

function LayoutProvider:didMount()
	if workspace.CurrentCamera then
		self:setObservedCamera(workspace.CurrentCamera)
	end

	self.cameraChangedListener = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		if workspace.CurrentCamera then
			self:setObservedCamera(workspace.CurrentCamera)
		end
	end)
end

function LayoutProvider:willUnmount()
	if self.cameraChangedListener then
		self.cameraChangedListener:Disconnect()
	end

	if self.viewportSizeListener then
		self.viewportSizeListener:Disconnect()
	end
end

function LayoutProvider:setObservedCamera(camera)
	if self.viewportSizeListener then
		self.viewportSizeListener:Disconnect()
	end

	-- Listen for changes to ViewportSize and update DeviceInfo accordingly
	self:checkAllDeviceInfo(camera.ViewportSize)
	self.viewportSizeListener = camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
		-- Hacky code awaits underlying mechanism fix.
		-- Viewport will get a 0,0,1,1 rect before it is properly set.
		local viewportSize = camera.ViewportSize
		if viewportSize.X <= 1 or viewportSize.Y <= 1 then
			return
		end

		self:checkAllDeviceInfo(viewportSize)
	end)
end

function LayoutProvider:checkDeviceOrientation(viewportSize)
	local deviceOrientation = viewportSize.X > viewportSize.Y and Constants.DeviceOrientation.LANDSCAPE
		or Constants.DeviceOrientation.PORTRAIT

	if self._deviceOrientation ~= deviceOrientation then
		self._deviceOrientation = deviceOrientation
		self.props.setDeviceOrientation(deviceOrientation)
	end
end

function LayoutProvider:checkDeviceIsSmallTouchScreen(viewportSize)
	local isSmallTouchScreen = UserInputService.TouchEnabled
		and (viewportSize.X < SMALL_DEVICE_WIDTH or viewportSize.Y < SMALL_DEVICE_HEIGHT)

	if self._isSmallTouchScreen ~= isSmallTouchScreen then
		self._isSmallTouchScreen = isSmallTouchScreen
		self.props.setIsSmallTouchScreen(self._isSmallTouchScreen)
	end
end

function LayoutProvider:checkDeviceLayout()
	local deviceLayout

	if self._isSmallTouchScreen then
		if self._deviceOrientation == Constants.DeviceOrientation.LANDSCAPE then
			deviceLayout = Constants.DeviceLayout.PHONE_LANDSCAPE
		else
			deviceLayout = Constants.DeviceLayout.PHONE_PORTRAIT
		end
	elseif UserInputService.TouchEnabled then
		if self._deviceOrientation == Constants.DeviceOrientation.LANDSCAPE then
			deviceLayout = Constants.DeviceLayout.TABLET_LANDSCAPE
		else
			deviceLayout = Constants.DeviceLayout.TABLET_PORTRAIT
		end
	else
		deviceLayout = Constants.DeviceLayout.DESKTOP
	end

	if self._deviceLayout ~= deviceLayout then
		self._deviceLayout = deviceLayout
		self.props.setDeviceLayout(self._deviceLayout)
	end
end

function LayoutProvider:checkAllDeviceInfo(viewportSize)
	self:checkDeviceOrientation(viewportSize)
	self:checkDeviceIsSmallTouchScreen(viewportSize)
	self:checkDeviceLayout()
end

function LayoutProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local connector = RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		setDeviceOrientation = function(orientation)
			return dispatch(SetDeviceOrientation(orientation))
		end,
		setIsSmallTouchScreen = function(isSmall)
			return dispatch(SetIsSmallTouchScreen(isSmall))
		end,
		setDeviceLayout = function(deviceLayout)
			return dispatch(SetDeviceLayout(deviceLayout))
		end,
	}
end)

return connector(LayoutProvider)
