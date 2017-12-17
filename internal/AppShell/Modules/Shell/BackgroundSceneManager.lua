-- Starts and manages the background 3D scene
local RobloxGui = game:GetService('CoreGui').RobloxGui
local ShellModules = script.Parent

local ContentProvider = game:GetService('ContentProvider')
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)

local CameraManager = require(ShellModules.CameraManager)
local EventHub = require(ShellModules.EventHub)
local SoundManager = require(ShellModules.SoundManager)
local Utility = require(ShellModules.Utility)

local SceneManager = {}

-- set up the image before 3D background is displayed
local BackgroundImage = Utility.Create'ImageLabel'
{
	Name = 'BackgroundImage';
	Size = UDim2.new(1, 0, 1, 0);
	BackgroundTransparency = 0;
	BackgroundColor3 = Color3.new(29/255, 47/255, 61/255);
	BorderSizePixel = 0;
	Image = 'rbxasset://textures/ui/Shell/Background/Home_screen_01.png';
	Parent = RobloxGui;
}

-- We may want to move this to rodux flow later
EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "authSuccessCameraControl", function(isNewLinkedAccount)
	CameraManager:DisableCameraControl()
end);

if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(function()
		CameraManager:EnableCameraControl()
	end)
end

-- start up background music
local backgroundSound = SoundManager:Play('BackgroundLoop', 0.33, true)
if backgroundSound then
	local bgmLoopConn = nil
	bgmLoopConn = backgroundSound.DidLoop:connect(function(soundId, loopCount)
		if loopCount > 0 then
			bgmLoopConn = Utility.DisconnectEvent(bgmLoopConn)
			if backgroundSound then
				SoundManager:TweenSound(backgroundSound, 0.1, 3)
			end
		end
	end)
end

-- Check for 3D Background being loaded, then start it up
local CROSSFADE_DURATION = 1.5
spawn(function()
	while ContentProvider.RequestQueueSize > 0 do
		wait(0.01)
	end

	CameraManager:EnableCameraControl()
	spawn(function()
		CameraManager:CameraMoveToAsync()
	end)
	Utility.PropertyTweener(BackgroundImage, 'BackgroundTransparency', 0, 1, CROSSFADE_DURATION,  Utility.EaseInOutQuad, true)
	Utility.PropertyTweener(BackgroundImage, 'ImageTransparency', 0, 1, CROSSFADE_DURATION,  Utility.EaseInOutQuad, true, function()
		BackgroundImage:Destroy()
	end)
end)

return SceneManager
