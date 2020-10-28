local UserInputService = game:GetService("UserInputService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GamepadButtonImage = {
	[Enum.KeyCode.ButtonX] = "rbxasset://textures/ui/Controls/xboxX.png",
	[Enum.KeyCode.ButtonY] = "rbxasset://textures/ui/Controls/xboxY.png",
	[Enum.KeyCode.ButtonA] = "rbxasset://textures/ui/Controls/xboxA.png",
	[Enum.KeyCode.ButtonB] = "rbxasset://textures/ui/Controls/xboxB.png",
	[Enum.KeyCode.DPadLeft] = "rbxasset://textures/ui/Controls/dpadLeft.png",
	[Enum.KeyCode.DPadRight] = "rbxasset://textures/ui/Controls/dpadRight.png",
	[Enum.KeyCode.DPadUp] = "rbxasset://textures/ui/Controls/dpadUp.png",
	[Enum.KeyCode.DPadDown] = "rbxasset://textures/ui/Controls/dpadDown.png",
	[Enum.KeyCode.ButtonSelect] = "rbxasset://textures/ui/Controls/xboxmenu.png",
	[Enum.KeyCode.ButtonL1] = "rbxasset://textures/ui/Controls/xboxLS.png",
	[Enum.KeyCode.ButtonR1] = "rbxasset://textures/ui/Controls/xboxRS.png",
}

local function createMainFrame()
	local frame = Instance.new("Frame")
	frame.Name = "ProximityPrompts"
	frame.BackgroundTransparency = 1
	frame.Size = UDim2.fromScale(1, 1)
	frame.Position = UDim2.fromScale(0, 0)
	frame.Parent = RobloxGui
	return frame
end

local function createProgressBarGradient(parent, leftSide)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromScale(0.5, 1)
	frame.Position = UDim2.fromScale(leftSide and 0 or 0.5, 0)
	frame.BackgroundTransparency = 1
	frame.ClipsDescendants = true
	frame.Parent = parent

	local image = Instance.new("ImageLabel")
	image.BackgroundTransparency = 1
	image.Size = UDim2.fromScale(2, 1)
	image.Position = UDim2.fromScale(leftSide and 0 or -1, 0)
	image.Image = "rbxasset://textures/ui/Controls/RadialFill.png"
	image.Parent = frame

	local gradient = Instance.new("UIGradient")
	gradient.Transparency = NumberSequence.new {
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(.4999, 0),
		NumberSequenceKeypoint.new(.5, 1),
		NumberSequenceKeypoint.new(1, 1)
	}
	gradient.Rotation = leftSide and 180 or 0
	gradient.Parent = image

	return gradient
end

local function createCircularProgressBar()
	local bar = Instance.new("Frame")
	bar.Name = "CircularProgressBar"
	bar.Size = UDim2.fromOffset(58, 58)
	bar.AnchorPoint = Vector2.new(0.5, 0.5)
	bar.Position = UDim2.fromScale(0.5, 0.5)
	bar.BackgroundTransparency = 1

	local gradient1 = createProgressBarGradient(bar, true)
	local gradient2 = createProgressBarGradient(bar, false)

	local progress = Instance.new("NumberValue")
	progress.Name = "Progress"
	progress.Parent = bar
	progress.Changed:Connect(function(value)
		local angle = math.clamp(value * 360, 0, 360)
		gradient1.Rotation = math.clamp(angle, 180, 360)
		gradient2.Rotation = math.clamp(angle, 0, 180)
	end)

	return bar
end

local function createPrompt(prompt, inputType)

	local tweensForButtonHoldBegin = {}
	local tweensForButtonHoldEnd = {}
	local tweensForTriggered = {}
	local tweensForTriggerEnded = {}
	local tweenInfoInFullDuration = TweenInfo.new(prompt.HoldDuration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local tweenInfoOutHalfSecond = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tweenInfoFast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tweenInfoQuick = TweenInfo.new(0.06, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

	local actionTextSize = TextService:GetTextSize(prompt.ActionText, 19, Enum.Font.GothamSemibold, Vector2.new(1000, 1000))
	local objectTextSize = TextService:GetTextSize(prompt.ObjectText, 14, Enum.Font.GothamSemibold, Vector2.new(1000, 1000))
	local maxTextWidth = math.max(actionTextSize.X, objectTextSize.X)
	local promptHeight = 72
	local promptWidth = 72
	local textPaddingLeft = 72
	if prompt.ActionText ~= nil and prompt.ActionText ~= '' then
		promptWidth = maxTextWidth + textPaddingLeft + 24
	end

	local promptUI = Instance.new("BillboardGui")
	promptUI.Name = "Prompt"
	promptUI.Adornee = prompt.Parent
	promptUI.AlwaysOnTop = true
	promptUI.Size = UDim2.fromOffset(promptWidth, promptHeight)
	promptUI.SizeOffset = Vector2.new(prompt.UIOffset.X / promptUI.Size.Width.Offset, prompt.UIOffset.Y / promptUI.Size.Height.Offset)

	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromScale(1, 1)
	frame.BackgroundTransparency = 0.2
	frame.BackgroundColor3 = Color3.new(0.07, 0.07, 0.07)
	frame.Parent = promptUI

	local roundedCorner = Instance.new("UICorner")
	roundedCorner.Parent = frame

	local inputFrame = Instance.new("Frame")
	inputFrame.Name = "InputFrame"
	inputFrame.Size = UDim2.fromScale(1, 1)
	inputFrame.BackgroundTransparency = 1
	inputFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY
	inputFrame.Parent = frame

	local resizeableInputFrame = Instance.new("Frame")
	resizeableInputFrame.Size = UDim2.fromScale(1, 1)
	resizeableInputFrame.Position = UDim2.fromScale(0.5, 0.5)
	resizeableInputFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	resizeableInputFrame.BackgroundTransparency = 1
	resizeableInputFrame.Parent = inputFrame

	local inputFrameScaler = Instance.new("UIScale")
	inputFrameScaler.Parent = resizeableInputFrame

	local inputFrameScaleFactor = inputType == Enum.ProximityPromptInputType.Touch and 1.6 or 1.33
	table.insert(tweensForButtonHoldBegin, TweenService:Create(inputFrameScaler, tweenInfoFast, { Scale = inputFrameScaleFactor }))
	table.insert(tweensForButtonHoldEnd, TweenService:Create(inputFrameScaler, tweenInfoFast, { Scale = 1 }))

	if prompt.ActionText ~= nil and prompt.ActionText ~= '' then
		local actionText = Instance.new("TextLabel")
		actionText.Name = "ActionText"
		actionText.Position = UDim2.new(0.5, textPaddingLeft - promptWidth/2, 0, 0)
		actionText.Size = UDim2.fromScale(1, 1)
		actionText.Font = Enum.Font.GothamSemibold
		actionText.TextSize = 19
		actionText.BackgroundTransparency = 1
		actionText.TextColor3 = Color3.new(1, 1, 1)
		actionText.TextXAlignment = Enum.TextXAlignment.Left
		actionText.Text = prompt.ActionText
		actionText.Parent = frame
		table.insert(tweensForButtonHoldBegin, TweenService:Create(actionText, tweenInfoFast, { TextTransparency = 1 }))
		table.insert(tweensForButtonHoldEnd, TweenService:Create(actionText, tweenInfoFast, { TextTransparency = 0 }))
		table.insert(tweensForTriggered, TweenService:Create(actionText, tweenInfoFast, { TextTransparency = 1 }))
		table.insert(tweensForTriggerEnded, TweenService:Create(actionText, tweenInfoFast, { TextTransparency = 0 }))

		if prompt.ObjectText ~= nil and prompt.ObjectText ~= '' then
			actionText.Position = UDim2.new(0.5, textPaddingLeft - promptWidth/2, 0, 9)

			local objectText = Instance.new("TextLabel")
			objectText.Name = "ObjectText"
			objectText.Position = UDim2.new(0.5, textPaddingLeft - promptWidth/2, 0, -10)
			objectText.Size = UDim2.fromScale(1, 1)
			objectText.Font = Enum.Font.GothamSemibold
			objectText.TextSize = 14
			objectText.BackgroundTransparency = 1
			objectText.TextColor3 = Color3.new(0.7, 0.7, 0.7)
			objectText.TextXAlignment = Enum.TextXAlignment.Left
			objectText.Text = prompt.ObjectText
			objectText.Parent = frame
			table.insert(tweensForButtonHoldBegin, TweenService:Create(objectText, tweenInfoFast, { TextTransparency = 1 }))
			table.insert(tweensForButtonHoldEnd, TweenService:Create(objectText, tweenInfoFast, { TextTransparency = 0 }))
			table.insert(tweensForTriggered, TweenService:Create(objectText, tweenInfoFast, { TextTransparency = 1 }))
			table.insert(tweensForTriggerEnded, TweenService:Create(objectText, tweenInfoFast, { TextTransparency = 0 }))
		end

		table.insert(tweensForButtonHoldBegin, TweenService:Create(frame, tweenInfoFast, { Size = UDim2.fromScale(0.5, 1), BackgroundTransparency = 1 }))
		table.insert(tweensForButtonHoldEnd, TweenService:Create(frame, tweenInfoFast, { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 0.2 }))
		table.insert(tweensForTriggered, TweenService:Create(frame, tweenInfoFast, { Size = UDim2.fromScale(0.5, 1), BackgroundTransparency = 1 }))
		table.insert(tweensForTriggerEnded, TweenService:Create(frame, tweenInfoFast, { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 0.2 }))
	else
		table.insert(tweensForButtonHoldBegin, TweenService:Create(frame, tweenInfoFast, { BackgroundTransparency = 1 }))
		table.insert(tweensForButtonHoldEnd, TweenService:Create(frame, tweenInfoFast, { BackgroundTransparency = 0.2 }))
		table.insert(tweensForTriggered, TweenService:Create(frame, tweenInfoFast, { BackgroundTransparency = 1 }))
		table.insert(tweensForTriggerEnded, TweenService:Create(frame, tweenInfoFast, { BackgroundTransparency = 0.2 }))
	end

	local roundFrame = Instance.new("Frame")
	roundFrame.Name = "RoundFrame"
	roundFrame.Size = UDim2.fromOffset(48, 48)

	roundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	roundFrame.Position = UDim2.fromScale(0.5, 0.5)
	roundFrame.BackgroundTransparency = 0.5
	roundFrame.Parent = resizeableInputFrame

	local roundedFrameCorner = Instance.new("UICorner")
	roundedFrameCorner.CornerRadius = UDim.new(0.5, 0)
	roundedFrameCorner.Parent = roundFrame

	table.insert(tweensForTriggered, TweenService:Create(roundFrame, tweenInfoQuick, { BackgroundTransparency = 1 }))
	table.insert(tweensForTriggerEnded, TweenService:Create(roundFrame, tweenInfoQuick, { BackgroundTransparency = 0.5 }))

	if inputType == Enum.ProximityPromptInputType.Gamepad then
		if GamepadButtonImage[prompt.GamepadKeyCode] then
			local icon = Instance.new("ImageLabel")
			icon.Name = "ButtonImage"
			icon.AnchorPoint = Vector2.new(0.5, 0.5)
			icon.Size = UDim2.fromOffset(24, 24)
			icon.Position = UDim2.fromScale(0.5, 0.5)
			icon.BackgroundTransparency = 1
			icon.Image = GamepadButtonImage[prompt.GamepadKeyCode]
			icon.Parent = resizeableInputFrame
			table.insert(tweensForTriggered, TweenService:Create(icon, tweenInfoQuick, { ImageTransparency = 1 }))
			table.insert(tweensForTriggerEnded, TweenService:Create(icon, tweenInfoQuick, { ImageTransparency = 0 }))
		end
	elseif inputType == Enum.ProximityPromptInputType.Touch then
		local buttonImage = Instance.new("ImageLabel")
		buttonImage.Name = "ButtonImage"
		buttonImage.BackgroundTransparency = 1
		buttonImage.Size = UDim2.fromOffset(25, 31)
		buttonImage.AnchorPoint = Vector2.new(0.5, 0.5)
		buttonImage.Position = UDim2.fromScale(0.5, 0.5)
		buttonImage.Image = "rbxasset://textures/ui/Controls/TouchTapIcon.png"
		buttonImage.Parent = resizeableInputFrame

		table.insert(tweensForTriggered, TweenService:Create(buttonImage, tweenInfoQuick, { ImageTransparency = 1 }))
		table.insert(tweensForTriggerEnded, TweenService:Create(buttonImage, tweenInfoQuick, { ImageTransparency = 0 }))
	else
		local buttonImage = Instance.new("ImageLabel")
		buttonImage.Name = "ButtonImage"
		buttonImage.BackgroundTransparency = 1
		buttonImage.Size = UDim2.fromOffset(28, 30)
		buttonImage.AnchorPoint = Vector2.new(0.5, 0.5)
		buttonImage.Position = UDim2.fromScale(0.5, 0.5)
		buttonImage.Image = "rbxasset://textures/ui/Controls/key_single.png"
		buttonImage.Parent = resizeableInputFrame
		table.insert(tweensForTriggered, TweenService:Create(buttonImage, tweenInfoQuick, { ImageTransparency = 1 }))
		table.insert(tweensForTriggerEnded, TweenService:Create(buttonImage, tweenInfoQuick, { ImageTransparency = 0 }))

		local buttonText = Instance.new("TextLabel")
		buttonText.Name = "ButtonText"
		buttonText.Position = UDim2.fromOffset(-1, -1)
		buttonText.Size = UDim2.fromScale(1, 1)
		buttonText.Font = Enum.Font.GothamSemibold
		buttonText.TextSize = 14
		buttonText.BackgroundTransparency = 1
		buttonText.TextColor3 = Color3.new(1, 1, 1)
		buttonText.TextXAlignment = Enum.TextXAlignment.Center
		buttonText.Text = UserInputService:GetStringForKeyCode(prompt.KeyboardKeyCode)
		buttonText.Parent = resizeableInputFrame
		table.insert(tweensForTriggered, TweenService:Create(buttonText, tweenInfoQuick, { TextTransparency = 1 }))
		table.insert(tweensForTriggerEnded, TweenService:Create(buttonText, tweenInfoQuick, { TextTransparency = 0 }))
	end

	if inputType == Enum.ProximityPromptInputType.Touch or prompt.ClickablePrompt then
		local button = Instance.new("TextButton")
		button.BackgroundTransparency = 1
		button.TextTransparency = 1
		button.Size = UDim2.fromScale(1, 1)
		button.Parent = promptUI

		button.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
				prompt:InputHoldBegin()
			end
		end)
		button.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
				prompt:InputHoldEnd()
			end
		end)

		promptUI.Active = true
	end

	if prompt.HoldDuration > 0 then
		local circleBar = createCircularProgressBar()
		circleBar.Parent = resizeableInputFrame
		table.insert(tweensForButtonHoldBegin, TweenService:Create(circleBar.Progress, tweenInfoInFullDuration, { Value = 1 }))
		table.insert(tweensForButtonHoldEnd, TweenService:Create(circleBar.Progress, tweenInfoOutHalfSecond, { Value = 0 }))
	end

	return promptUI, tweensForButtonHoldBegin, tweensForButtonHoldEnd, tweensForTriggered, tweensForTriggerEnded
end

local function onLoad()

	local gui = createMainFrame()

	ProximityPromptService.PromptShown:Connect(function(prompt, inputType)
		if prompt.Style == Enum.ProximityPromptStyle.Custom then
			return
		end

		local promptUI, tweensForButtonHoldBegin, tweensForButtonHoldEnd, tweensForTriggered, tweensForTriggerEnded = createPrompt(prompt, inputType)
		promptUI.Parent = gui

		local holdBeganConnection
		local holdEndedConnection
		local triggeredConnection
		local triggerEndedConnection

		if prompt.HoldDuration > 0 then
			holdBeganConnection = prompt.PromptButtonHoldBegan:connect(function()
				for _, tween in ipairs(tweensForButtonHoldBegin) do
					tween:Play()
				end
			end)

			holdEndedConnection = prompt.PromptButtonHoldEnded:connect(function()
				for _, tween in ipairs(tweensForButtonHoldEnd) do
					tween:Play()
				end
			end)
		end

		triggeredConnection = prompt.Triggered:connect(function()
			for _, tween in ipairs(tweensForTriggered) do
				tween:Play()
			end
		end)

		triggerEndedConnection = prompt.TriggerEnded:connect(function()
			for _, tween in ipairs(tweensForTriggerEnded) do
				tween:Play()
			end
		end)

		prompt.PromptHidden:Wait()

		if holdBeganConnection then
			holdBeganConnection:Disconnect()
		end

		if holdEndedConnection then
			holdEndedConnection:Disconnect()
		end

		triggeredConnection:Disconnect()
		triggerEndedConnection:Disconnect()

		promptUI.Parent = nil
    end)
end

onLoad()

