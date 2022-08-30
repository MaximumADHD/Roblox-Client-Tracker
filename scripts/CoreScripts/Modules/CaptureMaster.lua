
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CaptureNotification = require(RobloxGui.Modules.CaptureNotification)
local shouldSaveScreenshotToAlbum = require(RobloxGui.Modules.shouldSaveScreenshotToAlbum)

export type CaptureMaster = {
	Start: (CaptureMaster) -> (),
	Capture: (CaptureMaster) -> (),
	DismissNotification: (CaptureMaster) -> (),
	ShowPermissionToast: (CaptureMaster) -> (),
	captureEvent: BindableEvent,
}

local CaptureMaster = {}
CaptureMaster.__index = CaptureMaster

function CaptureMaster.new(): CaptureMaster
	local self: any = {}
	setmetatable(self, CaptureMaster)
	self.init = false
	self.captureEvent = Instance.new("BindableEvent")
	self.permissionEvent = Instance.new("BindableEvent")
	if shouldSaveScreenshotToAlbum() then
		self.captureNotification = Roact.createElement(CaptureNotification, {
			permissionEvent = self.permissionEvent,
		})
	end

	return self
end

function CaptureMaster:Start()
	if self.init then
		return
	end

	self.init = true
	if shouldSaveScreenshotToAlbum() then
		self.captureNotificationInstance = Roact.mount(self.captureNotification, CoreGui, "RobloxCaptureNotificationGui")
	end
end

local master: CaptureMaster = CaptureMaster.new()

function CaptureMaster:DismissNotification()
	if not self.init then
		master:Start()
	elseif shouldSaveScreenshotToAlbum() then
		Roact.update(self.captureNotificationInstance, Roact.createElement(CaptureNotification, {
			permissionEvent = self.permissionEvent,
			forceDismissToast = {
				onDismissed = function()
					Roact.update(self.captureNotificationInstance, Roact.createElement(CaptureNotification, {
						permissionEvent = self.permissionEvent,
						forceDismissToast = nil,
					}))
				end,
			}
		}))
	end
end

function CaptureMaster:ShowPermissionToast()
	if not self.init then
		master:Start()
	end
	self.permissionEvent:Fire()
end

function CaptureMaster:Capture()
	self:DismissNotification()
	self.captureEvent:Fire()
end

return master
