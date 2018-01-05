local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local userInputService = game:GetService('UserInputService')

local utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)

local AvatarEditorHideSliderHighlightOnInit = Flags:GetFlag("AvatarEditorHideSliderHighlightOnInit")
local AvatarEditorSliderUIAdjustments = Flags:GetFlag("AvatarEditorSliderUIAdjustments")

local function makeSlider()
	local SliderFrameTemplate = utilities.create'ImageButton'
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

	local BackgroundBar = utilities.create'ImageButton'
	{
		Name = 'BackgroundBar';
		Position = UDim2.new(0, 0, 0.5, -3);
		Size = UDim2.new(1, 0, 0, 6);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/AvatarEditorImages/Sheet.png';
		ImageRectOffset = Vector2.new(6, 1);
		ImageRectSize = Vector2.new(7, 6);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(3, 2, 4, 4);
		Parent = SliderFrameTemplate;
	}

	utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'slider bar';
		Parent = BackgroundBar;
	}

	local Dragger = utilities.create'ImageButton'
	{
		Name = 'Dragger';
		Position = UDim2.new(0.5, -16, 0.5, -16);
		Size = UDim2.new(0, 32, 0, 32);
		ZIndex = 5;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/AvatarEditorImages/Sheet.png';
		ImageRectOffset = Vector2.new(1934, 31);
		ImageRectSize = Vector2.new(32, 32);
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(0, 0, 0, 0);
		Parent = SliderFrameTemplate;
	}

	local Highlight = utilities.create'ImageButton'
	{
		Name = 'Highlight';
		Position = UDim2.new(0.5, -24, 0.5, -24);
		Size = UDim2.new(0, 48, 0, 48);
		ZIndex = 4;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/AvatarEditorImages/Sheet.png';
		ImageRectOffset = Vector2.new(627, 69);
		ImageRectSize = Vector2.new(48, 48);
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(0, 0, 0, 0);
		Parent = Dragger;
	}

	if AvatarEditorHideSliderHighlightOnInit then
		Highlight.Visible = false
	end

	utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'dragger-highlight';
		Parent = Highlight;
	}

	utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'btn-slider';
		Parent = Dragger;
	}

	utilities.create'ImageButton'
	{
		Name = 'DraggerButton';
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 32, 1, 32);
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
	}

	local FillBar = utilities.create'ImageButton'
	{
		Name = 'FillBar';
		Position = UDim2.new(0, -5, 0.5, -6);
		Size = UDim2.new(0.5, 0, 0, 14);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/AvatarEditorImages/Sheet.png';
		ImageRectOffset = Vector2.new(134, 1);
		ImageRectSize = Vector2.new(15, 14);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(7, 5, 8, 7);
		Parent = SliderFrameTemplate;
	}

	utilities.create'StringValue'
	{
		Name = 'SpriteName';
		Value = 'slider bar-on';
		Parent = FillBar;
	}

	utilities.create'ImageButton'
	{
		Name = 'DefaultLocationIndicator';
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(0, 12, 0, 12);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/AvatarEditorImages/circle_gray4.png';
		ScaleType = Enum.ScaleType.Stretch;
		Parent = SliderFrameTemplate;
	}

if AvatarEditorSliderUIAdjustments then
	utilities.create'TextLabel'
	{
		Name = 'TextLabel';
		Position = UDim2.new(0, 0, 0.15, -32);
		Size = UDim2.new(0, 0, 0, 25);
		TextXAlignment = 'Left';
		TextYAlignment = 'Center';
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 1;
		Parent = SliderFrameTemplate;
	}
else
	utilities.create'TextLabel'
	{
		Name = 'TextLabel';
		Position = UDim2.new(0, 0, 0.5, -40);
		Size = UDim2.new(0.5, 0, 0, 25);
		ZIndex = 3;
		BackgroundTransparency = 1;
		BorderSizePixel = 1;
		Parent = SliderFrameTemplate;
	}
end

	utilities.create'ImageButton'
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
	}

	return SliderFrameTemplate
end

local this = {}


function this.renderSlider(name, title, changedFunction, currentPercent, intervals, defaultValue, scrollingFrame)
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
				slider.DefaultLocationIndicator.Image = 'rbxasset://textures/AvatarEditorImages/circle_blue.png'
			else
				slider.DefaultLocationIndicator.Image = 'rbxasset://textures/AvatarEditorImages/circle_gray4.png'
			end
		end
		dragger.Position = UDim2.new(percent, -16, .5, -16)
		slider.FillBar.Size = UDim2.new(percent, 8, 0, 15)
		if changedFunction then
			changedFunction(name, lastValue)
		end
	end
	updateSlider()

	local function handle(x)
		if slider then
			local percent = math.max(0, math.min(1, (x - slider.AbsolutePosition.x) / slider.AbsoluteSize.x))
			local thisInterval = percent
			if intervals then
				thisInterval = math.floor((percent*intervals)+.5)
			end
			if thisInterval ~= lastValue then
				lastValue = thisInterval
				updateSlider()
			end
		end
	end

	local function sliderDown(x, y)
if not AvatarEditorSliderUIAdjustments then
		handle(x)
end
		local upListen = nil
		local moveListen = nil
		local highlight
		local firstX = x
		local firstY = y

if not AvatarEditorSliderUIAdjustments then
		if dragger and dragger.Parent then
			highlight = dragger:FindFirstChild('Highlight')
			if highlight then
				highlight.Visible = true
			end
		end
		if scrollingFrame then  -- If there is a scroll frame, let's stop it from scroll'n while we slide'n
			scrollingFrame.ScrollingEnabled = false
		end
end

		local function inputChanged(input, gameProcessedEvent)
			if input.UserInputState == Enum.UserInputState.Change
				and (input.UserInputType == Enum.UserInputType.MouseMovement
					or input.UserInputType == Enum.UserInputType.Touch) then
				-- Update slider
				if input.Position then
					handle(input.Position.x)
				end
			elseif input.UserInputState == Enum.UserInputState.End
				and (input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch) then
				-- End of slider interaction
				if moveListen then
					moveListen:Disconnect()
					moveListen = nil
				end
				if upListen then
					upListen:Disconnect()
					upListen = nil
				end
				if scrollingFrame then
					scrollingFrame.ScrollingEnabled = true
				end
				local dragger = slider:FindFirstChild('Dragger')
				if dragger then
					local highlight = dragger:FindFirstChild('Highlight')
					if highlight then
						highlight.Visible = false
					end
				end
			end
		end

		local function inputStarted(input, gameProcessedEvent)
			if input.UserInputState == Enum.UserInputState.Change
				and (input.UserInputType == Enum.UserInputType.MouseMovement
					or input.UserInputType == Enum.UserInputType.Touch)
			then
				-- Determine if the first drag motion is mostly horizontal.  If it is, disable (vertical) scrolling,
				-- and allow subsequent events to move the slider
				local w = math.abs( input.Position.X - firstX )
				local h = math.abs( input.Position.Y - firstY )
				if w == 0 and h == 0 then return end

				if w > h then
					highlight = dragger:FindFirstChild('Highlight')
					if highlight then
						highlight.Visible = true
					end
					if scrollingFrame then  -- If there is a scroll frame, let's stop it from scroll'n while we slide'n
						scrollingFrame.ScrollingEnabled = false
					end

					if input.Position then
						handle(input.Position.x)
					end

					moveListen:Disconnect()
					upListen:Disconnect()

					moveListen = userInputService.InputChanged:connect( inputChanged )
					upListen = userInputService.InputEnded:connect( inputChanged )
				else
					-- If the user is dragging vertically, disconnect event handlers to let scrolling happen.
					if moveListen then
						moveListen:Disconnect()
						moveListen = nil
					end
					if upListen then
						upListen:Disconnect()
						upListen = nil
					end
				end
			end
		end

if AvatarEditorSliderUIAdjustments then
		moveListen = userInputService.InputChanged:connect( inputStarted )
		upListen = userInputService.InputEnded:connect( inputStarted )
else
		moveListen = userInputService.InputChanged:connect( inputChanged )
		upListen = userInputService.InputEnded:connect( inputChanged )
end
	end

	sliderButton.MouseButton1Down:connect( sliderDown )
	draggerButton.MouseButton1Down:connect( sliderDown )
	slider.Visible = true
	return slider

end

return this
