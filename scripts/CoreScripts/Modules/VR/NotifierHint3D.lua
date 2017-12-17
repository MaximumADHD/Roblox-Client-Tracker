-- NotifierHint3D.lua --
-- Written by Kip Turner, copyright ROBLOX 2016 --

local NotifierHint = {}

local CoreGui = game:GetService('CoreGui')
local RunService = game:GetService('RunService')

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Util = require(RobloxGui.Modules.Settings.Utility)


local NotificationObject = Util:Create'ImageLabel'
{
	Name = 'NotificationObject';
	-- These numbers are a bit funny to fit the screen of ROBLOX VR
	Position = UDim2.new(0.5, -860, 1, -1 - 300);
	Size = UDim2.new(0, 1700,0, 700 + 300);
	BackgroundTransparency = 1;
	Image = "rbxasset://textures/ui/VR/notifier_glow.png";
	ImageTransparency = 0;
	BorderSizePixel = 0;
}

NotifierHint.DEFAULT_DURATION = 5

local function CreateNotificationEffect()
	local this = {}

	local speed = 2.5
	local MAX_OPACITY = 0.5
	local WAVE_START_SHIFT = math.pi/2

	local renderConn = nil

	function this:Init(duration)
		local start = tick()
		local endTime = start + duration

		if renderConn then
			renderConn:disconnect()
			renderConn = nil
		end
		renderConn = RunService.RenderStepped:connect(function()
			local now = tick()
			if now >= endTime then
				self:Cancel()
				return
			end
			NotificationObject.Parent = RobloxGui
			local tweenPositionOnSineWave = math.sin((tick() - start) * speed + WAVE_START_SHIFT)
			-- Restrict the sine wave to only positive values
			tweenPositionOnSineWave = (tweenPositionOnSineWave + 1) / 2
			-- Keep the transparency in the range
			NotificationObject.ImageTransparency = tweenPositionOnSineWave * (1 - MAX_OPACITY) + MAX_OPACITY
		end)
	end

	function this:Cancel()
		if renderConn then
			renderConn:disconnect()
			renderConn = nil
		end
		NotificationObject.Parent = nil
	end

	return this
end

local NotifierEffect = CreateNotificationEffect()

function NotifierHint:BeginNotification(duration)
	self:CancelNotification()
	NotifierEffect:Init(duration or self.DEFAULT_DURATION)
end

function NotifierHint:CancelNotification()
	NotifierEffect:Cancel()
end




return NotifierHint
