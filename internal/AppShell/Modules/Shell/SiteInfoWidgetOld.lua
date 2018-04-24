--[[
				// SiteInfoWidget.lua

				// Displays site info that the app is pointing to for test builds running non-production environments
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local TextService = game:GetService('TextService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local function createSiteInfoWidget()
	local this = {}

	local container = Utility.Create'Frame'
	{
		Name = "SiteInfoContainer";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 1, 0);
		AnchorPoint = Vector2.new(0, 1);
		BackgroundTransparency = 1;
	}

	local text = Utility.Create'TextLabel'
	{
		Name = "SiteInfoText";
		Size = UDim2.new(1, -12, 0, 12);
		Position = UDim2.new(0, 0, 1, 0);
		AnchorPoint = Vector2.new(0, 1);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Bottom;
		Text = "";
		Parent = container;
	}

	local function updateLayout()
		local textSize = TextService:GetTextSize(text.Text, Utility.ConvertFontSizeEnumToInt(text.FontSize), text.Font, Vector2.new(0, 0))
		container.Size = UDim2.new(0, textSize.x, 0, 50)
	end

	function this:SetParent(newParent)
		container.Parent = newParent
	end

	function this:SetText(newText)
		if newText ~= text.Text then
			text.Text = newText
			updateLayout()
		end
	end

	return this
end

return createSiteInfoWidget