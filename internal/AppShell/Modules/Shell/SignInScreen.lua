--[[
			// SignInScreen.lua
]]
local XboxNewEngagementFlow = settings():GetFFlag("XboxNewEngagementFlow")
local XboxUserStateRoduxEnabled = settings():GetFFlag("XboxUserStateRodux")

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local GuiService = game:GetService('GuiService')
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService("ThirdPartyUserService") end)
local TextService = game:GetService('TextService')
local ContextActionService = game:GetService("ContextActionService")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local LinkAccountScreen = require(ShellModules:FindFirstChild('LinkAccountScreen'))
local SetAccountCredentialsScreen = require(ShellModules:FindFirstChild('SetAccountCredentialsScreen'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local XboxAppState = require(ShellModules:FindFirstChild('AppState'))

local function createSignInScreen()
	local this = {}

	local isFocused = false

	local DefaultButtonColor = GlobalSettings.GreyButtonColor
	local SelectedButtonColor = GlobalSettings.GreySelectedButtonColor
	local DefaultButtonTextColor = GlobalSettings.WhiteTextColor
	local SelectedButtonTextColor = GlobalSettings.TextSelectedColor

	-- get gamertag and set display text
	local createAccountText = Strings:LocalizedString("PlayAsPhrase")
	if XboxUserStateRoduxEnabled then
		local gamertag = XboxAppState.store:getState().XboxUser.gamertag
		createAccountText = string.format(createAccountText, gamertag)
	else
		if ThirdPartyUserService then
			local gamertag = ThirdPartyUserService:GetUserDisplayName()
			createAccountText = string.format(createAccountText, gamertag)
		end
	end

	local ModalOverlay = Utility.Create'Frame'
	{
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = GlobalSettings.ModalBackgroundTransparency;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = 4;
	}

	local Container = Utility.Create'Frame'
	{
		Name = "SignInScreen";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Visible = false;
	}

	local RobloxLogo = Utility.Create'ImageLabel'
	{
		Name = "RobloxLogo";
		Size = UDim2.new(0, 594, 0, 199);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/ROBLOXSplashLogo.png';
		Parent = Container;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}

if XboxNewEngagementFlow then
	RobloxLogo.Image = 'rbxasset://textures/ui/Shell/Icons/SplashLogo.png'
	RobloxLogo.Size = UDim2.new(0, 594, 0, 209)

	local BackImage = Utility.Create'ImageLabel'
	{
		Name = "BackImage";
		Size = UDim2.new(0,48,0,48);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/Icons/BackIcon@1080.png";
		Parent = Container;
	}

	local BackText = Utility.Create'TextLabel'
	{
		Name = "BackText";
		Size = UDim2.new(0, 0, 0, BackImage.Size.Y.Offset);
		Position = UDim2.new(0, BackImage.Size.X.Offset + 8, 0, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("BackWord");
		Parent = Container;
	}
end

	local FadeInFrame = Utility.Create'Frame'
	{
		Name = "FadeInFrame";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Visible = false;
		Parent = Container;
	}

	local LinkAccountButton = Utility.Create'ImageButton'
	{
		Name = "LinkAccountButton";
		Size = UDim2.new(0, 200, 0, 64);
		Position = UDim2.new(0.5, -100, 1, -64 - 140);
		BackgroundTransparency = 1;
		ImageColor3 = DefaultButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = 2;
		Parent = FadeInFrame;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1)
	}

	local CreateAccountButton = LinkAccountButton:Clone()
	CreateAccountButton.Name = "CreateAccountButton"
	CreateAccountButton.Size = UDim2.new(0, 360, 0, 64);
	CreateAccountButton.Position = UDim2.new(0.5, -180, 1, LinkAccountButton.Position.Y.Offset - 64 - 44)
	CreateAccountButton.Parent = FadeInFrame

	local LinkAccountText = Utility.Create'TextLabel'
	{
		Name = "LinkAccountText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = DefaultButtonTextColor;
		Text = Strings:LocalizedString("SignInPhrase");
		ZIndex = 2;
		Parent = LinkAccountButton;
	}
	Utility.ResizeButtonWithText(LinkAccountButton, LinkAccountText, GlobalSettings.TextHorizontalPadding)
	LinkAccountButton.Position = UDim2.new(0.5, -LinkAccountButton.Size.X.Offset/2, 1, LinkAccountButton.Position.Y.Offset)

	local CreateAccountText = LinkAccountText:Clone()
	CreateAccountText.Text = createAccountText
	CreateAccountText.Parent = CreateAccountButton
	local createAccountTextSize = TextService:GetTextSize(createAccountText, Utility.ConvertFontSizeEnumToInt(CreateAccountText.FontSize),
		CreateAccountText.Font, Vector2.new(0, 0))
	CreateAccountButton.Size = UDim2.new(0, createAccountTextSize.X + 64, 0, CreateAccountButton.Size.Y.Offset)
	Utility.ResizeButtonWithText(CreateAccountButton, CreateAccountText, GlobalSettings.TextHorizontalPadding)
	CreateAccountButton.Position = UDim2.new(0.5, -CreateAccountButton.Size.X.Offset/2, 1, CreateAccountButton.Position.Y.Offset)

	CreateAccountButton.SelectionGained:connect(function()
		CreateAccountButton.ImageColor3 = SelectedButtonColor
		CreateAccountText.TextColor3 = SelectedButtonTextColor
	end)
	CreateAccountButton.SelectionLost:connect(function()
		CreateAccountButton.ImageColor3 = DefaultButtonColor
		CreateAccountText.TextColor3 = DefaultButtonTextColor
	end)
	LinkAccountButton.SelectionGained:connect(function()
		LinkAccountButton.ImageColor3 = SelectedButtonColor
		LinkAccountText.TextColor3 = SelectedButtonTextColor
	end)
	LinkAccountButton.SelectionLost:connect(function()
		LinkAccountButton.ImageColor3 = DefaultButtonColor
		LinkAccountText.TextColor3 = DefaultButtonTextColor
	end)

	local function animateOnShow()
		ScreenManager:DefaultCancelFade(this.TransitionTweens)
		FadeInFrame.Visible = true
		this.TransitionTweens = ScreenManager:FadeInSitu(FadeInFrame)
		if isFocused then
			Utility.SetSelectedCoreObject(CreateAccountButton)
		end
	end

	--[[ Input ]]--
	CreateAccountButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		local setAccountCredentialsScreen = SetAccountCredentialsScreen(Strings:LocalizedString("SignUpTitle"),
			Strings:LocalizedString("SignUpPhrase"), Strings:LocalizedString("SignUpWord"))
		setAccountCredentialsScreen:SetParent(Container.Parent)
		ScreenManager:OpenScreen(setAccountCredentialsScreen, true)
	end)

	LinkAccountButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		local linkAccountScreen = LinkAccountScreen()
		linkAccountScreen:SetParent(Container.Parent)
		ScreenManager:OpenScreen(linkAccountScreen, true)
	end)

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('SignInScreenId')}
	end

	function this:SetParent(newParent)
		Container.Parent = newParent
	end
	function this:Show()
		RobloxLogo.AnchorPoint = Vector2.new(0.5, 0.5)
		RobloxLogo.Position = UDim2.new(0.5, 0, 0.5, 0)
		Container.Visible = true
		animateOnShow()
	end
	function this:Hide()
		Container.Visible = false
		FadeInFrame.Visible = false
	end
	function this:Focus()
		isFocused = true
		GuiService:AddSelectionParent("SignInScreen", FadeInFrame)
		Utility.SetSelectedCoreObject(CreateAccountButton)
		if XboxNewEngagementFlow and ThirdPartyUserService then
			ContextActionService:BindCoreAction("ReturnToEngagement",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					ThirdPartyUserService:ReturnToEngagement()
				end
			end,
			false, Enum.KeyCode.ButtonB)
		end
	end
	function this:RemoveFocus()
		isFocused = false
		GuiService:RemoveSelectionGroup("SignInScreen")
		Utility.SetSelectedCoreObject(nil)
		if XboxNewEngagementFlow then
			ContextActionService:UnbindCoreAction("ReturnToEngagement")
		end
	end

	return this
end

return createSignInScreen
