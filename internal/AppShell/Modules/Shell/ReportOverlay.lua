--[[
			// ReportOverlay.lua
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local ContextActionService = game:GetService("ContextActionService")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local BaseOverlay = require(ShellModules:FindFirstChild('BaseOverlay'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Http = require(ShellModules:FindFirstChild('Http'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local ReportOverlay = {}

ReportOverlay.ReportType = {
	REPORT_GAME = 0;
}

local REPORT_COMMENT = "Game reported from the Xbox App.";

function ReportOverlay:CreateReportOverlay(reportType, assetId)
	local this = BaseOverlay()

	local DefaultButtonColor = GlobalSettings.GreyButtonColor
	local SelectedButtonColor = GlobalSettings.GreySelectedButtonColor
	local DefaultButtonTextColor = GlobalSettings.WhiteTextColor
	local SelectedButtonTextColor = GlobalSettings.TextSelectedColor

	local submitButton = Utility.Create'ImageButton'
	{
		Name = "SubmitButton";
		Size = UDim2.new(0, 320, 0, 66);
		Position = UDim2.new(0, 776, 1, -100 - 66);
		BackgroundTransparency = 1;
		ImageColor3 = DefaultButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = 2;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1)
	}
	local submitText = Utility.Create'TextLabel'
	{
		Name = "SubmitText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = DefaultButtonTextColor;
		Text = Utility.Upper(Strings:LocalizedString("SubmitWord"));
		ZIndex = submitButton.ZIndex;
	}
	Utility.ResizeButtonWithText(submitButton, submitText, GlobalSettings.TextHorizontalPadding)

	local cancelButton = submitButton:Clone()
	local cancelText = submitText:Clone()

	cancelButton.Position = UDim2.new(cancelButton.Position.X.Scale, submitButton.Position.X.Offset + submitButton.Size.X.Offset + 10,
		cancelButton.Position.Y.Scale, cancelButton.Position.Y.Offset)
	cancelText.Text = Utility.Upper(Strings:LocalizedString("CancelWord"));
	Utility.ResizeButtonWithText(cancelButton, cancelText, GlobalSettings.TextHorizontalPadding)

	submitText.Parent = submitButton
	submitButton.Parent = this.Container
	cancelText.Parent = cancelButton
	cancelButton.Parent = this.Container

	submitButton.SelectionGained:connect(function()
		submitButton.ImageColor3 = SelectedButtonColor
		submitText.TextColor3 = SelectedButtonTextColor
	end)
	submitButton.SelectionLost:connect(function()
		submitButton.ImageColor3 = DefaultButtonColor
		submitText.TextColor3 = DefaultButtonTextColor
	end)
	cancelButton.SelectionGained:connect(function()
		cancelButton.ImageColor3 = SelectedButtonColor
		cancelText.TextColor3 = SelectedButtonTextColor
	end)
	cancelButton.SelectionLost:connect(function()
		cancelButton.ImageColor3 = DefaultButtonColor
		cancelText.TextColor3 = DefaultButtonTextColor
	end)

	local titleText = Utility.Create'TextLabel'
	{
		Name = "TitleText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, submitButton.Position.X.Offset, 0, 136);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.HeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("ReportGameWord");
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = this.Container;
	}
	local descriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Size = UDim2.new(0, 762, 0, 304);
		Position = UDim2.new(0, titleText.Position.X.Offset, 0, titleText.Position.Y.Offset + 62);
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextWrapped = true;
		Text = Strings:LocalizedString("ReportPhrase");
		Parent = this.Container;
	}

	local reportIcon = Utility.Create'ImageLabel'
	{
		Name = "ReportIcon";
		Position = UDim2.new(0, 226, 0, 204);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/Icons/ErrorIconLargeCopy@1080.png";
		Size = UDim2.new(0,321,0,264);
	}
	this:SetImage(reportIcon)

	submitButton.MouseButton1Click:connect(function()
		if this:Close() then
			if assetId then
				spawn(function()
					local result = Http.ReportAbuseAsync("Asset", assetId, 7, REPORT_COMMENT)
				end)
			end
		end
	end)
	cancelButton.MouseButton1Click:connect(function()
		this:Close()
	end)

	function this:GetAnalyticsInfo()
		local analyticsInfo = {}
		analyticsInfo[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('ReportOverlayId')
		if assetId then
			analyticsInfo.AssetId = assetId
		end
		return analyticsInfo
	end

	function this:GetPriority()
		return GlobalSettings.ElevatedPriority
	end

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(this)
		Utility.SetSelectedCoreObject(cancelButton)
	end

	return this
end

return ReportOverlay
