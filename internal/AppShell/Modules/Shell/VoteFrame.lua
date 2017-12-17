--[[
			// VoteFrame.lua
			// Creates a vote frame for a game
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local CreateVoteFrame = function(parent, position)
	local this = {}

	-- Assume 1080p
	local MAX_SIZE = 203

	local currentRedColor = GlobalSettings.RedTextColor
	local currentGreenColor = GlobalSettings.GreenTextColor
	local currentGreyColor = GlobalSettings.GreyTextColor

	local voteContainer = Utility.Create'Frame'
	{
		Name = "VoteContainer";
		Size = UDim2.new(0, MAX_SIZE, 0, 16);
		Position = position;
		BackgroundTransparency = 1;
		Parent = parent;
	}

	local greenContainer = Utility.Create'Frame'
	{
		Name = "VoteContainer";
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		ClipsDescendants = true;
		Parent = voteContainer;
	}

	local redContainer = Utility.Create'Frame'
	{
		Name = "VoteContainer";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		ClipsDescendants = true;
		Parent = voteContainer;
	}

	local greyContainer = Utility.Create'Frame'
	{
		Name = "VoteContainer";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		ClipsDescendants = true;
		Parent = voteContainer;
	}

	local batteryImageRed = Utility.Create'ImageLabel'
	{
		Name = "BatteryImageRed";
		BackgroundTransparency = 1;
		ImageColor3 = currentRedColor;
		Parent = redContainer;
		Image = "rbxasset://textures/ui/Shell/Icons/RatingBar@1080.png";
		Size = UDim2.new(0, redContainer.AbsoluteSize.X, 0, redContainer.AbsoluteSize.Y);
		Position = UDim2.new(0, 0, 0, 0);
		Visible = false;
	}

	local batteryImageGreen = batteryImageRed:Clone()
	batteryImageGreen.ImageColor3 = currentGreenColor
	batteryImageGreen.ZIndex = 2
	batteryImageGreen.Name = "BatteryImageGreen"
	batteryImageGreen.Parent = greenContainer

	local batteryImageGrey = batteryImageRed:Clone()
	batteryImageGrey.ImageColor3 = currentGreyColor
	batteryImageGrey.ZIndex = 3
	batteryImageGrey.Name = "BatteryImageGrey"
	batteryImageGrey.Visible = true
	batteryImageGrey.Parent = greyContainer

	--[[ Public API ]]--
	function this:SetPercentFilled(percent)
		if percent and tonumber(percent) then
			batteryImageGrey.Visible = false
			batteryImageGreen.Visible = true
			batteryImageRed.Visible = true
			percent = tonumber(percent)
			percent = Utility.Round(percent, 0.1)
			greenContainer.Size = UDim2.new(percent, 0, 1, 0)
			redContainer.Position = UDim2.new(percent, 0, 0, 0)
			batteryImageRed.Position = UDim2.new(-percent, 0, 0, 0)
		else
			batteryImageGreen.Visible = false
			batteryImageRed.Visible = false
			batteryImageGrey.Visible = true
		end
	end

	function this:SetImageColorTint(value)
		currentRedColor = Color3.new(0,0,0):lerp(GlobalSettings.RedTextColor, value)
		currentGreenColor = Color3.new(0,0,0):lerp(GlobalSettings.GreenTextColor, value)
		currentGreyColor = Color3.new(0,0,0):lerp(GlobalSettings.GreyTextColor, value)

		batteryImageRed.ImageColor3 = currentRedColor
		batteryImageGreen.ImageColor3 = currentGreenColor
		batteryImageGrey.ImageColor3 = currentGreyColor
	end

	function this:TweenTransparency(value, duration)
		Utility.PropertyTweener(batteryImageRed, 'ImageTransparency', batteryImageRed.ImageTransparency,
			value, duration, Utility.Linear, true)
		Utility.PropertyTweener(batteryImageGreen, 'ImageTransparency', batteryImageGreen.ImageTransparency,
			value, duration, Utility.Linear, true)
		Utility.PropertyTweener(batteryImageGrey, 'ImageTransparency', batteryImageGrey.ImageTransparency,
			value, duration, Utility.Linear, true)
	end

	function this:SetVisible(value)
		voteContainer.Visible = value
	end

	function this:GetContainer()
		return voteContainer
	end

	function this:Destroy()
		voteContainer:Destroy()
		this = nil
	end

	return this
end

return CreateVoteFrame