local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService("GuiService")

local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)

local THUMBSTICK_MOVE_DEADZONE = 0.6
local THUMBSTICK_MOVE_INITIAL_REPEAT_TIME = 0.5
local THUMBSTICK_MOVE_REPEAT_TIME = 0.12

local function makeSlider()
	local SliderFrameTemplate = Utilities.create'ImageLabel'
	{
		Name = 'SliderFrameTemplate';
		Position = UDim2.new(0.1, 0, 0, 70);
		Size = UDim2.new(0.8, 0, 0, 30);
		ZIndex = 5;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = '';
		ImageRectOffset = Vector2.new(0, 0);
		ImageRectSize = Vector2.new(0, 0);
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(0, 0, 0, 0);
	}

	local BackgroundBar = Utilities.create'ImageLabel'
	{
		Name = 'BackgroundBar';
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 0, 12);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/scale/slide bar.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(7, 5, 8, 7);
		Parent = SliderFrameTemplate;
	}

	Utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'slider bar';
		Parent = BackgroundBar;
	}
	local Dragger = Utilities.create'ImageLabel'
	{
		Name = 'Dragger';
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(0, 48, 0, 48);
		ZIndex = 5;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/scale/slider.png';
		ScaleType = Enum.ScaleType.Stretch;
		Parent = SliderFrameTemplate;
	}

	local Highlight = Utilities.create'ImageLabel'
	{
		Name = 'Highlight';
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(0, 96, 0, 96);
		ZIndex = 4;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/scale/slider-hover.png';
		ScaleType = Enum.ScaleType.Stretch;
		Parent = Dragger;
		Visible = false;
	}

	Utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'dragger-highlight';
		Parent = Highlight;
	}

	Utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'btn-slider';
		Parent = Dragger;
	}


	local DraggerSelector = Utilities.create'ImageLabel'
	{
		Name = "Selector";
		Image = "rbxasset://textures/ui/Shell/AvatarEditor/scale/slider-select.png";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 14, 1, 14);
		Position = UDim2.new(0, -7, 0, -7);
		ZIndex = Dragger.ZIndex + 1;
	}

	Utilities.create'ImageButton'
	{
		Name = 'DraggerButton';
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = 5;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = '';
		ImageRectOffset = Vector2.new(0, 0);
		ImageRectSize = Vector2.new(0, 0);
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(0, 0, 0, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Parent = Dragger;
		SelectionImageObject = DraggerSelector;
	}

	local FillBar = Utilities.create'ImageLabel'
	{
		Name = 'FillBar';
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, -5, 0.5, 0);
		Size = UDim2.new(0.5, 0, 0, 12);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/scale/slide bar-filled.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(7, 5, 8, 7);
		Parent = SliderFrameTemplate;
	}

	Utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'slider bar-on';
		Parent = FillBar;
	}

	Utilities.create'ImageLabel'
	{
		Name = 'DefaultLocationIndicator';
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(0, 24, 0, 24);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/AvatarEditorImages/circle_gray4@2x.png';
		ScaleType = Enum.ScaleType.Stretch;
		Parent = SliderFrameTemplate;
	}

	Utilities.create'TextLabel'
	{
		Name = 'TextLabel';
		Position = UDim2.new(0, 0, 0.5, -64);
		Size = UDim2.new(0.5, 0, 0, 25);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 1;
		Parent = SliderFrameTemplate;
		TextColor3 = Color3.new(1, 1, 1);
		TextXAlignment = Enum.TextXAlignment.Left;
		TextSize = LayoutInfo.SubHeaderFontSize;
		Font = LayoutInfo.RegularFont;
	}

	local dummySelection = Utilities.create'Frame'
	{
		BackgroundTransparency = 1;
	}

	Utilities.create'ImageButton'
	{
		Name = 'SliderButton';
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 10, 1, 0);
		ZIndex = 5;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = '';
		ImageRectOffset = Vector2.new(0, 0);
		ImageRectSize = Vector2.new(0, 0);
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(0, 0, 0, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Parent = SliderFrameTemplate;
		SelectionImageObject = dummySelection;
	}

	return SliderFrameTemplate
end

local this = {}


function this.renderSlider(name, title, changedFunction, currentPercent, intervals, defaultValue)
	local slider = makeSlider()
	slider.TextLabel.Text = title
	slider.Name = 'Slider'..name

	local dragger = slider:WaitForChild('Dragger')
	local draggerButton = dragger:WaitForChild('DraggerButton')	-- Specific buttons for larger or custom hitboxes.
	local sliderButton = slider:WaitForChild('SliderButton')
	local lastValue = currentPercent
	if intervals then
		intervals = intervals - 1
		lastValue = math.floor((currentPercent * intervals) + .5)
	end

	if intervals and intervals > 0 and defaultValue then
		slider.DefaultLocationIndicator.Position = UDim2.new(defaultValue/intervals, 0, 0.5, 0);
	else
		slider.DefaultLocationIndicator.Visible = false
	end

	local function updateSlider()
		local percent = lastValue
		if intervals then
			percent = lastValue/intervals
		end
		if intervals and intervals > 0 and defaultValue then
			if lastValue >= defaultValue then
				slider.DefaultLocationIndicator.Image = 'rbxasset://textures/AvatarEditorImages/circle_blue@2x.png'
			else
				slider.DefaultLocationIndicator.Image = 'rbxasset://textures/AvatarEditorImages/circle_gray4@2x.png'
			end
		end
		dragger.Position = UDim2.new(percent, 0, .5, 0)
		slider.FillBar.Size = UDim2.new(percent, 8, 0, 15)
		if changedFunction then
			changedFunction(name, lastValue)
		end
	end
	updateSlider()

	local function handle(dir)
		if slider then
			lastValue = math.max(0, math.min(intervals, lastValue + dir))
			updateSlider()
		end
	end

	local moveListen, renderStepListen = nil, nil
	local lastMoveDirection = 0
	local repeatMoveTimer = nil
	local fastRepeatMoveTimer = nil
	local function reset()
		moveListen = Utilities.disconnectEvent(moveListen)
		renderStepListen = Utilities.disconnectEvent(renderStepListen)
		lastMoveDirection = 0
		repeatMoveTimer = nil
		fastRepeatMoveTimer = nil
	end


	draggerButton.SelectionGained:Connect(function()
		local canDrag = true
		local highlight
		if dragger and dragger.Parent then
			highlight = dragger:FindFirstChild('Highlight')
			if highlight then
				highlight.Visible = true
			end
		end
		local function inputChanged(input, gameProcessedEvent)
			if input.KeyCode == Enum.KeyCode.Thumbstick1 then
				if input.UserInputState == Enum.UserInputState.Change then
					if canDrag then
						local newMoveDirection = input.Position.X
						if math.abs(newMoveDirection) > THUMBSTICK_MOVE_DEADZONE then
							local newMoveDirection = newMoveDirection > 0 and 1 or -1
							if lastMoveDirection ~= newMoveDirection then
								repeatMoveTimer = tick()
								fastRepeatMoveTimer = nil
								lastMoveDirection = newMoveDirection
								handle(lastMoveDirection)
							end
						else --thumbstick is not pressed(under THUMBSTICK_MOVE_DEADZONE, reset timer and lastMoveDirection)
							lastMoveDirection = 0
							repeatMoveTimer = nil
							fastRepeatMoveTimer = nil
						end
					end
				end
			end
		end

		reset()
		moveListen = UserInputService.InputChanged:connect(inputChanged)
		renderStepListen = game:GetService("RunService").RenderStepped:connect(function()
			if lastMoveDirection == 0 or repeatMoveTimer == nil then
				return
			end
			local curTime = tick()
			if curTime - repeatMoveTimer >= THUMBSTICK_MOVE_INITIAL_REPEAT_TIME then
				if not fastRepeatMoveTimer or curTime - fastRepeatMoveTimer >= THUMBSTICK_MOVE_REPEAT_TIME then
					fastRepeatMoveTimer = curTime
					handle(lastMoveDirection)
				end
			end
		end)
	end)

	draggerButton.SelectionLost:Connect(function()
		local dragger = slider:FindFirstChild('Dragger')
		if dragger then
			local highlight = dragger:FindFirstChild('Highlight')
			if highlight then
				highlight.Visible = false
			end
		end
		reset()
	end)

	--sliderButton transfers the selection to draggerButton
	sliderButton.SelectionGained:Connect(function()
		GuiService.SelectedCoreObject = draggerButton
	end)

	draggerButton.NextSelectionLeft = draggerButton
	draggerButton.NextSelectionRight = draggerButton
	sliderButton.NextSelectionLeft = sliderButton
	sliderButton.NextSelectionRight = sliderButton
	sliderButton.NextSelectionUp = sliderButton
	sliderButton.NextSelectionDown = sliderButton

	slider.Visible = true
	return slider
end

return this
