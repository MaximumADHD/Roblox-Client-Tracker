--[[
			// LockedGameSortView.lua

			// Creates a locked view for game sorts. This is for UGC. Sorts will remained in a
			// locked state until the user plays 5 games.
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local function createLockedGameSortView()
	local this = {}

	local overlayFrames = {}

	local container = Utility.Create'Frame'
	{
		Name = "LockedViewContainer";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		Selectable = true;
		SoundManager:CreateSound('MoveSelection');
	}
	local lockedTextLabel = Utility.Create'TextLabel'
	{
		Name = "LockedTextLabel";
		Size = UDim2.new(0.6, 0, 0.5, 0);
		Position = UDim2.new(0.2, 0, 0.5, 8);
		BackgroundTransparency = 1;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.ButtonSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("UnlockGamesPhrase");
		TextWrapped = true;
		Visible = false;
		Parent = container;
	}
	local lockIcon = Utility.Create'ImageLabel'
	{
		Name = "LockLabel";
		Size = UDim2.new(0, 116, 0, 140);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/LockIcon.png';
		Visible = false;
		Parent = container;
		AnchorPoint = Vector2.new(0.5, 1);
		Position = UDim2.new(0.5, 0, 0.5, -20);
	}

	container.SelectionGained:connect(function()
		Utility.PropertyTweener(container, "BackgroundTransparency", 1, GlobalSettings.ModalBackgroundTransparency, 0,
			Utility.Linear, true, nil)
		lockedTextLabel.Visible = true
		lockIcon.Visible = true
	end)
	container.SelectionLost:connect(function()
		Utility.PropertyTweener(container, "BackgroundTransparency", GlobalSettings.ModalBackgroundTransparency, 1, 0,
			Utility.Linear, true, nil)
		lockedTextLabel.Visible = false
		lockIcon.Visible = false
	end)

	--[[ Public API ]]--
	function this:SetParent(newParent)
		container.Parent = newParent
	end
	function this:GetSelection()
		return container
	end

	function this:CreateLockedIconOverlay(iconImage)
		local overlayFrame = Utility.Create'Frame'
		{
			Name = "LockedOverlay";
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = GlobalSettings.ModalBackgroundTransparency;
			BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
			BorderSizePixel = 0;
			Parent = iconImage;
		}
		table.insert(overlayFrames, overlayFrame)
	end
	function this:RemoveLockedIconOverlays()
		for i = 1, #overlayFrames do
			overlayFrames[i].Parent = nil
		end
	end

	return this
end

return createLockedGameSortView
