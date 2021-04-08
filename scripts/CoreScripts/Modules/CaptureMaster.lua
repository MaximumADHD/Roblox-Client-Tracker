
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CaptureNotification = require(RobloxGui.Modules.CaptureNotification)
local shouldSaveScreenshotToAlbum = require(RobloxGui.Modules.shouldSaveScreenshotToAlbum)

local CaptureMaster = {}
CaptureMaster.__index = CaptureMaster

function CaptureMaster.new()
	local self = {}
	setmetatable(self, CaptureMaster)
	self.init = false
	self.captureEvent = Instance.new("BindableEvent")
	if shouldSaveScreenshotToAlbum() then
		self.captureNotification = Roact.createElement(CaptureNotification)
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

local master = CaptureMaster.new()

function CaptureMaster:Capture()
	if not self.init then
		master:Start()
	elseif shouldSaveScreenshotToAlbum() then
		Roact.update(self.captureNotificationInstance, Roact.createElement(CaptureNotification, {
			forceDismissToast = {
				onDismissed = function()
					Roact.update(self.captureNotificationInstance, Roact.createElement(CaptureNotification, {
						forceDismissToast = nil,
					}))
				end,
			}
		}))
	end

	self.captureEvent:Fire()
end

return master
