--[[
			// ErrorOverlay.lua

			// Creates and error overlay

			// NOTE: Right now error and alerts look the same, so we're
			// using the same module to make both. If in the future this
			// changes, we'll need to move alert to it's own module.
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local BaseOverlay = require(ShellModules:FindFirstChild('BaseOverlay'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local createErrorOverlay = function(errorType)
	if not errorType then
		return
	end

	local this = BaseOverlay()

	local title = errorType.Title
	local message = errorType.Msg
	--That how we distinguish error and alert, errors have a Code table entry while alerts have a Id table entry.
	local errorCode = errorType.Code
	local alertId = errorType.Id

	local iconImage = Utility.Create'ImageLabel'
	{
		Name = "IconImage";
		BackgroundTransparency = 1;
	}
	iconImage.Image = alertId and 'rbxasset://textures/ui/Shell/Icons/AlertIcon.png' or
		'rbxasset://textures/ui/Shell/Icons/ErrorIconLargeCopy@1080.png'
	iconImage.Size = alertId and UDim2.new(0, 416, 0, 416) or UDim2.new(0, 321, 0, 264)
	iconImage.AnchorPoint = Vector2.new(0.5, 0.5)
	iconImage.Position = UDim2.new(0.5, 0, 0.5, 0)
	this:SetImage(iconImage)

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
	if errorCode then
		descriptionText.Text = string.format(Strings:LocalizedString('ErrorMessageAndCodePrase'), message, errorCode)
	end

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
		Text = Utility.Upper(Strings:LocalizedString("OkWord"));
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(okButton, okButton, GlobalSettings.TextHorizontalPadding)

	-- Override
	function this:GetAnalyticsInfo()
		local analyticsInfo = {}
		analyticsInfo[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('ErrorOverlayId')
		analyticsInfo.Title = errorType.Title
		if errorCode then
			analyticsInfo.ErrorCode = errorCode
		end
		if alertId then
			analyticsInfo.AlertId = alertId
		end
		return analyticsInfo
	end

	function this:GetPriority()
		return GlobalSettings.ElevatedPriority
	end

	--[[ Input Events ]]--
	okButton.MouseButton1Click:connect(function()
		this:Close()
	end)
	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(this)
		GuiService.SelectedCoreObject = okButton
	end

	function this:GetOverlaySound()
		return 'Error'
	end

	-- Track ErrorCode Frequency
	if errorCode then
		Analytics.ReportCounter("Error-"..tostring(errorCode), 1)
		Analytics.SetRBXEventStream("Error", {ErrorCode = errorCode})
	end
	if alertId then
		Analytics.ReportCounter("Alert-"..tostring(alertId), 1)
		Analytics.SetRBXEventStream("Alert", {AlertId = alertId})
	end
	return this
end

return createErrorOverlay
