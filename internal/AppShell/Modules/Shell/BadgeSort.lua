--[[
			// BadgeSort.lua
			// Creates a badge sort for a game

			// Handles the following for badges
				// Displays 2x2 of badges on game details page
				// Displays individual information about each badge (overlay)
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local BadgeOverlayModule = require(ShellModules:FindFirstChild('BadgeOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local PopupText = require(ShellModules:FindFirstChild('PopupText'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))

local CreateBadgeSort = function(placeName, size, position, parent)
	local this = {}

	local badgeData = nil
	local margin = 14
	local imageSize = (size.Y.Offset - margin) / 2

	local gridImages = {}

	local GRID_SIZE = 4

	--[[ Game Details Grid ]]--
	local container = Utility.Create'Frame'
	{
		Name = "ImageContainer";
		Size = size;
		Position = position;
		BackgroundTransparency = 1;
		Parent = parent;
	}
	-- create 2x2 preview grid
	local index = 1
	for i = 1, GRID_SIZE/2 do
		for j = 1, GRID_SIZE/2 do
			local image = Utility.Create'TextButton'
			{
				Name = tostring(index);
				Size = UDim2.new(0, imageSize, 0, imageSize);
				Position = UDim2.new(0, (i - 1) * imageSize + (i - 1) * margin, 0, (j - 1) * imageSize + (j - 1) * margin);
				BackgroundTransparency = GlobalSettings.FriendStatusTextTransparency;
				BackgroundColor3 = GlobalSettings.BadgeFrameColor;
				BorderSizePixel = 0;
				ZIndex = 2;
				Text = "";
				ClipsDescendants = true;
				Parent = container;

				SoundManager:CreateSound('MoveSelection');
				AssetManager.CreateShadow(1);
			}
			local thumb = Utility.Create'ImageLabel'
			{
				Name = "Thumb";
				Size = UDim2.new(0, 228, 0, 228);
				Position = UDim2.new(0.5, -228/2, 0.5, -228/2);
				BackgroundTransparency = 1;
				Image = "";
				ZIndex = 2;
				Parent = image;
			}
			gridImages[index] = image
			index = index + 1
		end
	end
	
		-- more button visible when #badges > 4
	local moreBadgesButton = Utility.Create'ImageButton'
	{
		Name = "MoreBadgesButton";
		BackgroundTransparency = 1;
		Visible = false;
		Parent = container;
		Image = "rbxasset://textures/ui/Shell/Buttons/MoreButton@1080.png";
		Size = UDim2.new(0,108,0,50);
		ZIndex = 2;

		SoundManager:CreateSound('MoveSelection');
	}
	moreBadgesButton.Position = UDim2.new(1, - moreBadgesButton.AbsoluteSize.x, 1, 12)

	local function updateMoreButton(isSelected)
		moreBadgesButton.Image = isSelected and 'rbxasset://textures/ui/Shell/Buttons/MoreButtonSelected@1080.png'
											or  'rbxasset://textures/ui/Shell/Buttons/MoreButton@1080.png'
	end

	moreBadgesButton.SelectionGained:connect(function()
		updateMoreButton(true)
	end)
	moreBadgesButton.SelectionLost:connect(function()
		updateMoreButton(false)
	end)

	local checkmarkImage = Utility.Create'ImageLabel'
	{
		Name = "CheckMarkImage";
		BackgroundTransparency = 1;

		Image = "rbxasset://textures/ui/Shell/Icons/Checkmark@1080.png";
		Size = UDim2.new(0,35,0,35);

		ZIndex = 2;
	}

	local function setBadgeData()
		if not badgeData then
			Utility.DebugLog("BadgeSort: failed to set badge data because data is nil.")
			return
		end
		--
		for i = 1, #gridImages do
			if badgeData[i] then
				local data = badgeData[i]
				local thumb = gridImages[i]:FindFirstChild("Thumb")
				if thumb then
					local thumbLoader = ThumbnailLoader:Create(thumb, data.AssetId,
						ThumbnailLoader.Sizes.Medium, ThumbnailLoader.AssetType.Icon)
					spawn(function()
						thumbLoader:LoadAsync()
					end)
				end
				local hasBadge = data["IsOwned"]
				if hasBadge then
					gridImages[i].BackgroundColor3 = GlobalSettings.BadgeOwnedColor
					gridImages[i].BackgroundTransparency = 0
					--
					local check = checkmarkImage:Clone()
					check.Position = UDim2.new(1, -check.Size.X.Offset - 8, 0, 8)
					check.Parent = gridImages[i]
				end
				--
				gridImages[i].MouseButton1Click:connect(function()
					ScreenManager:OpenScreen(BadgeOverlayModule(data), false)
				end)
				-- connect popup text
				PopupText(gridImages[i], data["Name"])
			end
		end
	end

	--[[ Input Events ]]--
	moreBadgesButton.MouseButton1Click:connect(function()
		EventHub:dispatchEvent(EventHub.Notifications["OpenBadgeScreen"], badgeData, placeName)
	end)

	--[[ Public API ]]--
	function this:GetContainer()
		return container
	end

	function this:GetDefaultSelection()
		return gridImages and gridImages[1] or nil
	end

	function this:Initialize(data)
		if not badgeData then
			badgeData = data
			setBadgeData()
			if #data > GRID_SIZE then
				moreBadgesButton.Visible = true
			end
		end
	end

	function this:Destroy()
		container:Destroy()
		gridImages = nil
	end

	return this
end

return CreateBadgeSort
