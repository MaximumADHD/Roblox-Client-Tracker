--[[
				// UnlinkAccountOverlay.lua

				// Confirmation overlay for when you unlink your account
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local ContextActionService = game:GetService("ContextActionService")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local BaseOverlay = require(ShellModules:FindFirstChild('BaseOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createUnlinkAccountOverlay(titleAndMsg)
	local this = BaseOverlay()

	local title = titleAndMsg.Title
	local message = titleAndMsg.Msg

	local errorIcon = Utility.Create'ImageLabel'
	{
		Name = "ReportIcon";
		Position = UDim2.new(0, 226, 0, 204);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/Icons/ErrorIconLargeCopy@1080.png";
		Size = UDim2.new(0,321,0,264);
	}
	this:SetImage(errorIcon)

	local titleText = Utility.Create'TextLabel'
	{
		Name = "TitleText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, this.RightAlign, 0, 136);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.HeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = title;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = this.Container;
	}

	local descriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Size = UDim2.new(0, 762, 0, 304);
		Position = UDim2.new(0, this.RightAlign, 0, titleText.Position.Y.Offset + 62);
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextWrapped = true;
		Text = message;
		Parent = this.Container;
	}

	local okButton = Utility.Create'TextButton'
	{
		Name = "OkButton";
		Size = UDim2.new(0, 320, 0, 66);
		Position = UDim2.new(0, this.RightAlign, 1, -100 - 66);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.BlueButtonColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.TextSelectedColor;
		Text = Utility.Upper(Strings:LocalizedString("ConfirmWord"));
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(okButton, okButton, GlobalSettings.TextHorizontalPadding)

	--[[ Input Events ]]--
	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('UnlinkAccountOverlayId');
			Title = titleAndMsg.Title;
		}
	end

	local okButtonDebounce
	okButton.MouseButton1Click:connect(function()
		if this:Close() then
			EventHub:dispatchEvent(EventHub.Notifications["UnlinkAccountConfirmation"])
		end
	end)

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		Utility.SetSelectedCoreObject(okButton)
	end

	function this:GetOverlaySound()
		return 'Error'
	end

	return this
end

return createUnlinkAccountOverlay
