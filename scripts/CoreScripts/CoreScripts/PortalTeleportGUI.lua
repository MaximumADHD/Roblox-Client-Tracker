--!nonstrict

-- Services
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local AdService = game:GetService("AdService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

-- Constants
local FADE_IN_TIME = 0.5
local SLIDE_SHUT_DELAY = 0.25
local SLIDE_TIME = 1
local DETAILS_FADE_IN_TIME = 3
local FADE_OUT_TIME = 3
local REDERSTEP_NAME = "PortalLoadingSpinner"

-- Variables
local colorCorrection = nil
local runCount = 0
local pi = math.pi

-- Modules
local RobloxGui = CoreGui.RobloxGui
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts

-- UI objects
local teleportEffectGui = Instance.new("ScreenGui")
teleportEffectGui.Name = "TeleportEffectGui"
teleportEffectGui.IgnoreGuiInset = true
teleportEffectGui.Enabled = false
teleportEffectGui.DisplayOrder = 7	-- Just above topbar
teleportEffectGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
teleportEffectGui.Parent = CoreGui

local topFrame = Instance.new("Frame")
topFrame.Name = "TopFrame"
topFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
topFrame.BorderSizePixel = 0
topFrame.AnchorPoint = Vector2.new(0.5, 1)
topFrame.Position = UDim2.new(0.5, 0, 0, 0)
topFrame.Size = UDim2.new(1, 0, 1, 0)
topFrame.ZIndex = 1
topFrame.Parent = teleportEffectGui
local bottomFrame = topFrame:Clone()
bottomFrame.AnchorPoint = Vector2.new(0.5, 0)
bottomFrame.Position = UDim2.new(0.5, 0, 1, 0)
bottomFrame.Parent = teleportEffectGui

local spinnerContainer = Instance.new("Frame")
spinnerContainer.Name = "SpinnerContainer"
spinnerContainer.ZIndex = 2
spinnerContainer.BackgroundTransparency = 1
spinnerContainer.AnchorPoint = Vector2.new(1, 1)
spinnerContainer.Size = UDim2.new(.125, 0, .125, 0)
spinnerContainer.Position = UDim2.new(1, 0, 1, 0)
spinnerContainer.Parent = teleportEffectGui
local spinnerAspectRatio = Instance.new("UIAspectRatioConstraint")
spinnerAspectRatio.AspectRatio = 1
spinnerAspectRatio.Parent = spinnerContainer
local spinner = Instance.new("ImageLabel")
spinner.Name = "SpinnerRobloxTilt"
spinner.BackgroundTransparency = 1
spinner.ImageTransparency = 1
spinner.Image = "rbxasset://textures/loading/robloxTilt.png"
spinner.ZIndex = 2
spinner.AnchorPoint = Vector2.new(.5, .5)
spinner.Size = UDim2.new(1, 0, 1, 0)
spinner.Position = UDim2.new(0, 0, 0, 0)
spinner.Parent = spinnerContainer
local spinnerAspectRatio = Instance.new("UIAspectRatioConstraint")
spinnerAspectRatio.AspectRatio = 1
spinnerAspectRatio.Parent = spinner

local textLabel = Instance.new("TextLabel")
textLabel.Text = RobloxTranslator:FormatByKey("CoreScripts.Ads.Label.Teleporting")
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextTransparency = 1
textLabel.BackgroundTransparency = 1
textLabel.ZIndex = 2
textLabel.AnchorPoint = Vector2.new(.5, .5)
textLabel.Size = UDim2.new(.6, 0, 0, 48)
textLabel.Position = UDim2.new(.5, 0, .5, 0)
textLabel.Font = AppFonts.default:getDefault()
textLabel.TextScaled = true
textLabel.Parent = teleportEffectGui



local spinnerBound = false
function spinSpinner()
	if not spinnerBound then
		spinnerBound = true
		local startTime = os.clock()
		RunService:BindToRenderStep(REDERSTEP_NAME, Enum.RenderPriority.Last.Value, function()
			if spinner and spinner.Parent then
				local spinTime = os.clock() - startTime
				local cycle = (spinTime/4)%1
				local turns = 0
				local scale = 0
				if cycle <= .75 then
					scale = math.cos(pi*(cycle/.75))*-.5+.5
					turns = 2.25
				else
					scale = math.cos(pi+pi*((cycle-.75)/.25))*-.5+.5
					turns = .25
				end
				local size = 1 + scale*.25
				spinner.Size = UDim2.new(size, 0, size, 0)
				spinner.Rotation = 360 * scale * turns
			else
				stopSpinner()
			end
		end)
	end
end
function stopSpinner()
	RunService:UnbindFromRenderStep(REDERSTEP_NAME)
	spinnerBound = false
end

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
	
	task.delay(SLIDE_SHUT_DELAY+SLIDE_TIME, function()
		if thisRunCount ~= runCount then
			return
		end
		if spinner and spinner.Parent then
			TweenService:Create(
				spinner,
				TweenInfo.new(DETAILS_FADE_IN_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{ ["ImageTransparency"] = 0 }
			):Play()
			spinSpinner()
		end
		if textLabel and textLabel.Parent then
			TweenService:Create(
				textLabel,
				TweenInfo.new(DETAILS_FADE_IN_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{ ["TextTransparency"] = 0 }
			):Play()
		end
	end)
end

function uncover()
	runCount += 1
	local thisRunCount = runCount
	
	if spinner and spinner.Parent then
		TweenService:Create(
			spinner,
			TweenInfo.new(FADE_OUT_TIME*.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ ["ImageTransparency"] = 1 }
		):Play()
	end
	if textLabel and textLabel.Parent then
		TweenService:Create(
			textLabel,
			TweenInfo.new(FADE_OUT_TIME*.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ ["TextTransparency"] = 1 }
		):Play()
	end
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
		stopSpinner()
	end)
end

AdService.AdTeleportInitiated:Connect(cover)
AdService.AdTeleportEnded:Connect(uncover)
