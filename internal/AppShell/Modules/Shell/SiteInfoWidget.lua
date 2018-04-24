--[[
				// SiteInfoWidget.lua

				// Displays site info that the app is pointing to for test builds running non-production environments
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local TitleSafeContainer = require(ShellModules.AppContainer).TitleSafeContainer

local TextService = game:GetService('TextService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local SiteInfoWidget = {}
SiteInfoWidget.__index = SiteInfoWidget

function SiteInfoWidget.new()
	local self = {}

	setmetatable(self, SiteInfoWidget)

	self.container = Utility.Create'Frame'
	{
		Name = "SiteInfoContainer";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 1, 0);
		AnchorPoint = Vector2.new(0, 1);
		BackgroundTransparency = 1;
	}

	self.text = Utility.Create'TextLabel'
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
		Parent = self.container;
	}

	self.updateLayout = function()
		local textSize = TextService:GetTextSize(self.text.Text, Utility.ConvertFontSizeEnumToInt(self.text.FontSize), self.text.Font, Vector2.new(0, 0))
		self.container.Size = UDim2.new(0, textSize.x, 0, 50)
	end

	if PlatformService then
		spawn(function()
			local text = PlatformService:GetSiteInfo();
			if text and text ~= "" then
				self:SetText(text)
				self:SetParent(TitleSafeContainer)
			end
		end)
	end

	return self
end

function SiteInfoWidget:SetParent(newParent)
	self.container.Parent = newParent
end

function SiteInfoWidget:SetText(newText)
	if newText ~= self.text.Text then
		self.text.Text = newText
		self.updateLayout()
	end
end

return SiteInfoWidget