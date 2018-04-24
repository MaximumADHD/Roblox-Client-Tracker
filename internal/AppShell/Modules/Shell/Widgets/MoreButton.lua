
local GuiService = game:GetService('GuiService')

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))

local function CreateMoreButton()
	-- we override the selection on moreButton to fit around the moreImage
	local overrideSelection = Utility.Create'ImageLabel'
	{
		Name = "OverrideSelection";
		Image = 'rbxasset://textures/ui/SelectionBox.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(19,19,43,43);
		BackgroundTransparency = 1;
	}

	local moreButton = Utility.Create'ImageButton'
	{
		Name = "MoreButton";
		BackgroundTransparency = 1;
		Visible = false;
		SelectionImageObject = overrideSelection;

		Image = "rbxasset://textures/ui/Shell/Buttons/MoreButton@1080.png";
		Size = UDim2.new(0,108,0,50);

		SoundManager:CreateSound('MoveSelection');
	}

	local function updateMoreImage(isSelected)
		moreButton.Image = isSelected and "rbxasset://textures/ui/Shell/Buttons/MoreButtonSelected@1080.png"
										or  "rbxasset://textures/ui/Shell/Buttons/MoreButton@1080.png"
		moreButton.Size = UDim2.new(0,108,0,50)
	end
	moreButton.SelectionGained:connect(function()
		updateMoreImage(true)
	end)
	moreButton.SelectionLost:connect(function()
		updateMoreImage(false)
	end)
	updateMoreImage(GuiService.SelectedCoreObject == moreButton)

	return moreButton, overrideSelection
end

return CreateMoreButton
