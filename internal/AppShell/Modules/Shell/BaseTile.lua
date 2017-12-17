--[[
			// BaseTile.lua

			// Created by Kip Turner
			// Copyright Roblox 2015
]]


local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")


local Utility = require(ShellModules:FindFirstChild('Utility'))

local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local PopupText = require(ShellModules:FindFirstChild('PopupText'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local ACTIVE_AVATAR_BACKGROUND_COLOR = Color3.new(45/255, 96/255, 128/255)
local INACTIVE_AVATAR_BACKGROUND_COLOR = Color3.new(39/255, 69/255, 82/255) --Color3.new(106/255, 120/255, 129/255)

local function createBaseTileContainer()
	local this = {}
	this.focused = false
	this.active = false


	local avatarItemContainer = Utility.Create'ImageButton'
	{
		Name = 'AvatarItemContainer';
		Size = UDim2.new(0,220,0,220);
		BorderSizePixel = 0;
		BackgroundTransparency = 0;
		BackgroundColor3 = this.active and ACTIVE_AVATAR_BACKGROUND_COLOR or INACTIVE_AVATAR_BACKGROUND_COLOR;
		AutoButtonColor = false;
		ClipsDescendants = true;
		ZIndex = 2;
		AssetManager.CreateShadow(1);

		SoundManager:CreateSound('MoveSelection');
	}

		local myPopText = PopupText(avatarItemContainer, '')
		myPopText:SetZIndex(3)


		local avatarImage = Utility.Create'ImageLabel'
		{
			Name = "AvatarImage";
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
			ZIndex = 2;
			Parent = avatarItemContainer;
		}

		local equippedCheckmark = Utility.Create'ImageLabel'
		{
			Name = "EquippedCheckmark";
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
			ZIndex = 3;
			Visible = false;
			Image = 'rbxasset://textures/ui/Shell/Icons/EquippedOverlay.png';
			Parent = avatarItemContainer;
		}

	this.AvatarItemContainer = avatarItemContainer
	this.AvatarImage = avatarImage
	this.EquippedCheckmark = equippedCheckmark

	local function colorizeImage(newColor, duration)
		duration = duration or 0.2
		Utility.PropertyTweener(avatarImage, 'ImageColor3', avatarImage.ImageColor3.r, newColor, duration,
			function(...) local scalar = Utility.EaseOutQuad(...) return Color3.new(scalar, scalar, scalar) end, true)
	end

	function this:UpdateEquipButton()
	end

	function this:ColorizeImage(...)
		colorizeImage(...)
	end

	function this:SetPopupText(newText)
		myPopText:SetText(newText)
	end

	function this:SetImage(imgUrl)
		avatarImage.Image = imgUrl
	end

	function this:GetGuiObject()
		return avatarItemContainer
	end

	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('BaseTileId')}
	end

	function this:GetPackageInfo()
	end

	function this:OnClick()
	end

	function this:SetActive(isActive)
		self.active = isActive
		avatarItemContainer.BackgroundColor3 = self.active and ACTIVE_AVATAR_BACKGROUND_COLOR or INACTIVE_AVATAR_BACKGROUND_COLOR;
	end

	function this:Select()
	end

	function this:Show()
	end

	function this:Hide()
	end

	function this:Focus()
		self.focused = true
	end

	function this:RemoveFocus()
		self.focused = false
	end

	return this
end

return createBaseTileContainer
