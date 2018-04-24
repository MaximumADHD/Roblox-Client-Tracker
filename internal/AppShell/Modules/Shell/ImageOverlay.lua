--[[
			// ImageOverlay.lua
			// Creates an image overlay. Used with the game details page to see more thumbnails
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local ContextActionService = game:GetService("ContextActionService")

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local createImageOverlay = function(thumbIds, selectedThumbIndex)
	local this = {}

	local thumbCount = #thumbIds
	if selectedThumbIndex < 1 or selectedThumbIndex > thumbCount then
		Utility.DebugLog("ImageOverlay: Invalid index to selectedThumbIndex")
		return
	end

	local thumbnailImages = nil
	local currentSelectedIndex = selectedThumbIndex

	local shield = Utility.Create'Frame'
	{
		Name = "Shield";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BackgroundColor3 = Color3.new(0, 0, 0);
		BorderSizePixel = 0;
	}
	local container = Utility.Create'Frame'
	{
		Name = "ImageOverlayContainer";
		Size = UDim2.new(1, 0, 0, 668);
		Position = UDim2.new(0, 0, 0, 226);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.OverlayColor;
	}
	local dummySelectionImage = Utility.Create'TextButton'
	{
		Name = "DummySelectionImage";
		Size = UDim2.new(0, 0, 0, 0);
		Visible = false;
	}
	local imageSelection = Utility.Create'Frame'
	{
		Name = "imageSelection";
		Size = UDim2.new(0, 1030, 0, 580);
		Position = UDim2.new(0.5, -1030/2, 0.5, -580/2);
		BackgroundTransparency = 1;
		Selectable = true;
		SelectionImageObject = dummySelectionImage;
		Parent = container;
		SoundManager:CreateSound('MoveSelection');
	}
	local leftArrowImage = Utility.Create'ImageButton'
	{
		Name = "LeftArrowImage";
		Size = UDim2.new(0, 26, 0, 45);
		Position = UDim2.new(0.5, imageSelection.Position.X.Offset - 18 - 75, 0.5, -45/2);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Settings/Slider/Left.png';
		SelectionImageObject = dummySelectionImage;
		Parent = container;
		SoundManager:CreateSound('MoveSelection');
	}
	local rightArrowImage = leftArrowImage:Clone()
	rightArrowImage.Name = "RightArrowImage"
	rightArrowImage.Position = UDim2.new(0.5, imageSelection.Position.X.Offset + imageSelection.Size.X.Offset + 75, 0.5, -45/2)
	rightArrowImage.Image = 'rbxasset://textures/ui/Settings/Slider/Right.png';
	rightArrowImage.Parent = container

	local selectedText = Utility.Create'TextLabel'
	{
		Name = "SelectedText";
		Size = UDim2.new();
		Position = UDim2.new(0.5, 0, 1, -24);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = "";
		Parent = container;
	}

	local function createThumbImages()
		if not thumbnailImages then
			thumbnailImages = {}
			for i = 1, #thumbIds do
				local image = Utility.Create'ImageLabel'
				{
					Name = tostring(i);
					Size = imageSelection.Size;
					Position = imageSelection.Position;
					BackgroundTransparency = 1;
					Parent = container;
					SoundManager:CreateSound('MoveSelection');
				}
				local loader = ThumbnailLoader:Create(image, thumbIds[i],
					ThumbnailLoader.Sizes.Large, ThumbnailLoader.AssetType.Icon, false)
				spawn(function()
					loader:LoadAsync(true, true, { ZIndex = image.ZIndex } )
				end)
				thumbnailImages[i] = image
			end
		end
	end

	local function setImagePositions(startIndex)
		for i = 1, #thumbnailImages do
			local image = thumbnailImages[i]
			local xScale = i == startIndex and 0.5 or 1.5
			image.Position = UDim2.new(xScale, -image.Size.X.Offset / 2, 0.5, image.Position.Y.Offset)
		end
	end

	local function tweenImagePositions(currentIndex, nextIndex, direction)
		if currentIndex == nextIndex then return end
		local nextStartPosition = direction * 1.5
		local currentEndPosition = -nextStartPosition
		--
		local currentImage = thumbnailImages[currentIndex]
		local nextImage = thumbnailImages[nextIndex]
		nextImage.Position = UDim2.new(nextStartPosition, -nextImage.Size.X.Offset / 2, 0.5, nextImage.Position.Y.Offset)
		--
		Utility.SetSelectedCoreObject(imageSelection)
		Utility.TweenPositionOrSet(currentImage, UDim2.new(currentEndPosition, -currentImage.Size.X.Offset / 2, 0.5, currentImage.Position.Y.Offset),
			Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.25, true)
		Utility.TweenPositionOrSet(nextImage, UDim2.new(0.5, -nextImage.Size.X.Offset / 2, 0.5, nextImage.Position.Y.Offset),
			Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.25, true)
		selectedText.Text = tostring(nextIndex)..'/'..tostring(#thumbnailImages)
	end

	local function onArrowSelected(direction)
		local nextIndex = nil
		nextIndex = currentSelectedIndex + direction
		if nextIndex < 1 then
			nextIndex = thumbCount
		elseif nextIndex > thumbCount then
			nextIndex = 1
		end
		if nextIndex then
			tweenImagePositions(currentSelectedIndex, nextIndex, direction)
			currentSelectedIndex = nextIndex
		end
	end

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('ImageOverlayId');
			Selected = tostring(currentSelectedIndex).."/"..tostring(thumbCount);
		}
	end

	function this:GetPriority()
		return GlobalSettings.OverlayPriority
	end

	function this:Show()
		createThumbImages()
		setImagePositions(currentSelectedIndex)
		selectedText.Text = tostring(currentSelectedIndex).."/"..tostring(thumbCount)
		if thumbCount == 1 then
			leftArrowImage.Visible = false
			rightArrowImage.Visible = false
		end

		shield.Parent = ScreenManager:GetScreenGuiByPriority(self:GetPriority())
		container.Parent = shield.Parent
		local shieldTweenIn = Utility.PropertyTweener(shield, "BackgroundTransparency", 1, 0.3, 0.25, Utility.EaseInOutQuad, nil)
	end

	function this:Hide()
		local shieldTweenOut = Utility.PropertyTweener(shield, "BackgroundTransparency", 0.3, 1, 0.25, Utility.EaseInOutQuad, true, function()
			shield:Destroy()
		end)
		container:Destroy()
	end

	function this:Focus()
		ContextActionService:BindCoreAction("CloseImageOverlay",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					ScreenManager:CloseCurrent()
				end
			end,
			false, Enum.KeyCode.ButtonB)

		leftArrowImage.SelectionGained:connect(function()
			onArrowSelected(-1)
		end)
		rightArrowImage.SelectionGained:connect(function()
			onArrowSelected(1)
		end)

		GuiService:AddSelectionParent("ImageOverlay", container)
		Utility.SetSelectedCoreObject(imageSelection)
	end

	function this:RemoveFocus()
		ContextActionService:UnbindCoreAction("CloseImageOverlay")
		GuiService:RemoveSelectionGroup("ImageOverlay")
	end

	return this
end

return createImageOverlay
