--[[
			// BadgeScreen.lua

			// Displays a 2xN grid of badges for a game
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local BadgeOverlayModule = require(ShellModules:FindFirstChild('BadgeOverlay'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local ScrollingGrid = require(ShellModules:FindFirstChild('ScrollingGrid'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local PopupText = require(ShellModules:FindFirstChild('PopupText'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))

local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))

local createBadgeScreen = function(badgeData)
	local this = BaseScreen()

	local ROWS = 2
	-- columns is dynamic

	local BadgeContainer = this.Container
	this:SetTitle(Strings:LocalizedString("GameBadgesTitle"))

	local defaultSelection = nil

	-- create grid
	local BadgeScrollGrid = ScrollingGrid()
	BadgeScrollGrid:SetPosition(UDim2.new(0, 0, 0.5 - (0.57 / 2), 0))
	BadgeScrollGrid:SetSize(UDim2.new(1, 0, 0, 570))
	BadgeScrollGrid:SetScrollDirection(BadgeScrollGrid.Enum.ScrollDirection.Horizontal)
	BadgeScrollGrid:SetParent(BadgeContainer)
	BadgeScrollGrid:SetClipping(false)
	BadgeScrollGrid:SetCellSize(Vector2.new(276, 276))
	BadgeScrollGrid:SetSpacing(Vector2.new(18, 18))

	local checkmarkImage = Utility.Create'ImageLabel'
	{
		Name = "CheckMarkImage";
		BackgroundTransparency = 1;

		Image = "rbxasset://textures/ui/Shell/Icons/Checkmark@1080.png";
		Size = UDim2.new(0,35,0,35);

		ZIndex = 2;
	}

	local function connectImageInput(image, data)
		image.MouseButton1Click:connect(function()
			-- Do not play sound because we are opening a screen here
			ScreenManager:OpenScreen(BadgeOverlayModule(data), false)
		end)
	end

	local baseItem = Utility.Create'TextButton'
	{
		Name = "BadgeImage";
		BorderSizePixel = 0;
		BackgroundTransparency = 0.2;
		BackgroundColor3 = Color3.new(64/255, 81/255, 93/255);
		Text = "";
		ZIndex = 2;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1);
	}
	local badgeIcon = Utility.Create'ImageLabel'
	{
		Name = "Thumb";
		Size = UDim2.new(0, 228, 0, 228);
		Position = UDim2.new(0.5, -228/2, 0.5, -228/2);
		BackgroundTransparency = 1;
		Image = "";
		ZIndex = 2;
		Parent = baseItem;
	}

	for i = 1, #badgeData do
		local data = badgeData[i]
		local item = baseItem:Clone()
		local thumb = item:FindFirstChild("Thumb")
		if thumb then
			local thumbLoader = ThumbnailLoader:Create(thumb, data.AssetId,
				ThumbnailLoader.Sizes.Medium, ThumbnailLoader.AssetType.Icon)
			spawn(function()
				thumbLoader:LoadAsync()
			end)
		end
		local hasBadge = data["IsOwned"]
		if hasBadge then
			item.BackgroundColor3 = GlobalSettings.BadgeOwnedColor;
			item.BackgroundTransparency = 0;
			--
			local check = checkmarkImage:Clone()
			check.Position = UDim2.new(1, -check.Size.X.Offset - 8, 0, 8)
			check.Parent = item
		end
		item.Name = tostring(i)
		BadgeScrollGrid:AddItem(item)
		connectImageInput(item, data)
		PopupText(item, data["Name"])
		if not defaultSelection then
			defaultSelection = item
		end
	end

	--[[ Public API ]]--
	--Override
	function this:GetDefaultSelectionObject()
		return defaultSelection
	end

	return this
end

return createBadgeScreen
