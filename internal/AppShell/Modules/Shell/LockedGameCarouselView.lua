
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local function LockedGameCarouselView()
	local this = {}

	local overlayFrames = {}

	local container = Utility.Create'Frame'
	{
		Name = "LockedViewContainer";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 0.2;
		BackgroundColor3 = Color3.new(0.1, 0.1, 0.1);
		BorderSizePixel = 0;
		Selectable = false;
		SoundManager:CreateSound('MoveSelection');
	}
	local lockedTextLabel = Utility.Create'TextLabel'
	{
		Name = "LockedTextLabel";
		Size = UDim2.new(0.7, 0, 0.5, 0);
		Position = UDim2.new(0.125, 0, 0.25, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.ButtonSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("UnlockGamesPhrase");
		TextWrapped = true;
		Parent = container;
	}
	local lockIcon = Utility.Create'ImageLabel'
	{
		Name = "LockLabel";
		Position = UDim2.new(0, 50, 0.5, -70);
		Size = UDim2.new(0, 116, 0, 140);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/LockIcon.png';
		Parent = container;
	}

	--[[ Public API ]]--
	function this:SetParent(newParent)
		container.Parent = newParent
	end

	function this:SetSize(newSize)
		container.Size = newSize
	end

	function this:SetPosition(newPosition)
		container.Position = newPosition
	end

	function this:GetContainer()
		return container
	end

	function this:SetSelectionImageObject(guiObject)
		container.SelectionImageObject = guiObject
	end

	function setProperty(instance, propName, val)
		pcall(function(i, p, v) i[p] = v end, instance, propName, val)
	end

	local function setZIndexHelper(element, val)
		if not element:IsA('GuiObject') then
			return
		end

		setProperty(element, "ZIndex", val)

		local children = element:GetChildren()
		for i = 1, #children do
			local child = children[i]
			if child:IsA('GuiObject') then
				setZIndexHelper(child, val)
			end
		end
	end

	function this:SetZIndex(val)
		setZIndexHelper(container, val)
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

return LockedGameCarouselView
