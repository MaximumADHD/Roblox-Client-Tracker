--!nonstrict

-- Services
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local AdService = game:GetService("AdService")
local CoreGui = game:GetService("CoreGui")

-- Constants
local FADE_IN_TIME = 0.5
local SLIDE_SHUT_DELAY = 0.25
local SLIDE_TIME = 1
local FADE_OUT_TIME = 3

-- Variables
local colorCorrection = nil
local runCount = 0

-- UI objects
local teleportEffectGui = Instance.new("ScreenGui")
teleportEffectGui.Name = "TeleportEffectGui"
teleportEffectGui.IgnoreGuiInset = true
teleportEffectGui.Enabled = false
teleportEffectGui.DisplayOrder = 100000
teleportEffectGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local topFrame = Instance.new("Frame")
topFrame.Name = "TopFrame"
topFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
topFrame.BorderSizePixel = 0
topFrame.AnchorPoint = Vector2.new(0.5, 1)
topFrame.Position = UDim2.new(0.5, 0, 0, 0)
topFrame.Size = UDim2.new(1, 0, 1, 0)
topFrame.ZIndex = 100000
topFrame.Parent = teleportEffectGui
local bottomFrame = topFrame:Clone()
bottomFrame.AnchorPoint = Vector2.new(0.5, 0)
bottomFrame.Position = UDim2.new(0.5, 0, 1, 0)
bottomFrame.Parent = teleportEffectGui
teleportEffectGui.Parent = CoreGui

function cover()
	runCount += 1
	local thisRunCount = runCount

	if colorCorrection then
		if colorCorrection.Parent then
			colorCorrection:Destroy()
		end
		colorCorrection = nil
	end
	colorCorrection = Instance.new("ColorCorrectionEffect")
	colorCorrection.Name = "TeleportColorCorrectionEffect"
	colorCorrection.Parent = Lighting

	TweenService:Create(
		colorCorrection,
		TweenInfo.new(FADE_IN_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
		{ ["Brightness"] = 1 }
	):Play()

	task.delay(SLIDE_SHUT_DELAY, function()
		if thisRunCount ~= runCount then
			return
		end
		if teleportEffectGui and teleportEffectGui.Parent then
			teleportEffectGui.Enabled = true
		end
		if topFrame and topFrame.Parent and bottomFrame and bottomFrame.Parent then
			TweenService:Create(
				topFrame,
				TweenInfo.new(SLIDE_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{ ["Position"] = UDim2.new(0.5, 0, 0.5, 0) }
			):Play()
			TweenService:Create(
				bottomFrame,
				TweenInfo.new(SLIDE_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{ ["Position"] = UDim2.new(0.5, 0, 0.5, 0) }
			):Play()
		end
	end)
end

function uncover()
	runCount += 1
	local thisRunCount = runCount

	if colorCorrection and colorCorrection.Parent then
		TweenService:Create(
			colorCorrection,
			TweenInfo.new(FADE_OUT_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ ["Brightness"] = 0 }
		):Play()
	end
	if topFrame and topFrame.Parent and bottomFrame and bottomFrame.Parent then
		TweenService:Create(
			topFrame,
			TweenInfo.new(FADE_OUT_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ ["Position"] = UDim2.new(0.5, 0, 0, 0) }
		):Play()
		TweenService:Create(
			bottomFrame,
			TweenInfo.new(FADE_OUT_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ ["Position"] = UDim2.new(0.5, 0, 1, 0) }
		):Play()
	end

	-- Clean up
	task.delay(FADE_OUT_TIME, function()
		if thisRunCount ~= runCount then
			return
		end
		if colorCorrection then
			if colorCorrection.Parent then
				colorCorrection:Destroy()
			end
			colorCorrection = nil
		end
		if teleportEffectGui and teleportEffectGui.Parent then
			teleportEffectGui.Enabled = false
		end
	end)
end

AdService.AdTeleportInitiated:Connect(cover)
AdService.AdTeleportEnded:Connect(uncover)
