-- TODO: Clean up this file along with FFlagXboxAvatarEditor

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Lighting = game:GetService('Lighting')
local Utility = require(ShellModules:FindFirstChild('Utility'))

local PostProcessing = {}

local Brightness = 0.3
local Contrast = 0.5
local Saturation = -1
local TintColor = Color3.new(20.0/255.0, 43.0/255.0, 60.0/255.0)

local MotionBlurIntensity = 10

-- create post processing objects
local ColorCorrection = Utility.Create'ColorCorrectionEffect'
{
	Brightness = Brightness;
	Contrast = Contrast;
	Saturation = Saturation;
	TintColor = TintColor;
	Enabled = true;
	Parent = Lighting;
}

local Blur = Utility.Create'BlurEffect'
{
	Size = MotionBlurIntensity;
	Enabled = true;
	Parent = Lighting;
}

function PostProcessing.TransitionIn(time)
	Utility.PropertyTweener(ColorCorrection, 'Contrast', ColorCorrection.Contrast, Contrast, time, Utility.EaseInOutQuad, true)
	Utility.PropertyTweener(Blur, 'Size', Blur.Size, MotionBlurIntensity, time, Utility.EaseInOutQuad, true)
end

function PostProcessing.TransitionOut(time)
	Utility.PropertyTweener(ColorCorrection, 'Contrast', Contrast, -1, time, Utility.EaseInOutQuad, true)
	Utility.PropertyTweener(Blur, 'Size', MotionBlurIntensity, 50, time, Utility.EaseInOutQuad, true)
end

function PostProcessing.SetEnabled(nowEnabled)
	ColorCorrection.Enabled = nowEnabled
	Blur.Enabled = nowEnabled
end

return PostProcessing
