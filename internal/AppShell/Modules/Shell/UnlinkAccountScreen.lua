--[[
			// UnlinkAccountScreen.lua
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local ContextActionService = game:GetService('ContextActionService')
local GuiService = game:GetService('GuiService')

local AccountManager = require(ShellModules:FindFirstChild('AccountManager'))
local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local UnlinkAccountOverlay = require(ShellModules:FindFirstChild('UnlinkAccountOverlay'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createUnlinkAccountScreen()
	local this = BaseScreen()

	this:SetTitle(Strings:LocalizedString("AccountSettingsTitle"))
	local gamerTag = UserData:GetDisplayName() or ""
	local robloxName = UserData:GetRobloxName() or ""
	local linkedAsPhrase = string.format(Strings:LocalizedString('LinkedAsPhrase'), gamerTag, robloxName)
	local unlinkButtonText = string.format(Strings:LocalizedString("UnlinkGamerTagPhrase"), gamerTag)

	local dummySelection = Utility.Create'Frame'
	{
		BackgroundTransparency = 1;
	}

	local ModalOverlay = Utility.Create'Frame'
	{
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = GlobalSettings.ModalBackgroundTransparency;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = 4;
	}

	local LinkedAsText = Utility.Create'TextLabel'
	{
		Name = "LinkedAsText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0, 264);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = linkedAsPhrase;
		Parent = this.Container;
	}
	local GamerPic = Utility.Create'ImageLabel'
	{
		Name = "GamerPic";
		Size = UDim2.new(0, 300, 0, 300);
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Image = 'rbxapp://xbox/localgamerpic';
		Parent = this.Container;
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.new(0.5, 0, 0, LinkedAsText.Position.Y.Offset + 52);
	}

	local UnlinkButton = Utility.Create'ImageButton'
	{
		Name = "UnlinkButton";
		Size = UDim2.new(0, 360, 0, 64);
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.GreySelectedButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = 2;
		Parent = this.Container;

		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.new(0.5, 0, 0, GamerPic.Position.Y.Offset + GamerPic.Size.Y.Offset + 35);

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1)
	}

	local UnlinkText = Utility.Create'TextLabel'
	{
		Name = "UnlinkText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.TextSelectedColor;
		Text = Utility.Upper(unlinkButtonText);
		ZIndex = 2;
		Parent = UnlinkButton;
	}
	Utility.ResizeButtonWithText(UnlinkButton, UnlinkText, GlobalSettings.TextHorizontalPadding)

	local isUnlinking = false
	local function unlinkAccountAsync()
		if isUnlinking then return end
		isUnlinking = true
		local unlinkResult = nil
		local loader = LoadingWidget(
			{ Parent = this.Container }, {
			function()
				unlinkResult = AccountManager:UnlinkAccountAsync()
			end
		})

		-- set up full screen loader
		ModalOverlay.Parent = GuiRoot
		ContextActionService:BindCoreAction("BlockB", function() end, false, Enum.KeyCode.ButtonB)
		UnlinkButton.SelectionImageObject = dummySelection
		UnlinkButton.ImageColor3 = GlobalSettings.GreyButtonColor
		UnlinkText.TextColor3 = GlobalSettings.WhiteTextColor

		-- call loader
		loader:AwaitFinished()

		-- clean up
		-- NOTE: Unlink success will fire the ThirdPartyUserService ActiveUserSignedOut event. This event will fire and listeners will
		-- run before the loader is finished. The below code needs to run in case of errors, but on success
		-- will not interfere with the reauth logic in AppHome.lua
		loader:Cleanup()
		loader = nil
		UnlinkButton.SelectionImageObject = nil
		UnlinkButton.ImageColor3 = GlobalSettings.GreySelectedButtonColor
		UnlinkText.TextColor3 = GlobalSettings.TextSelectedColor
		ContextActionService:UnbindCoreAction("BlockB")
		ModalOverlay.Parent = nil

		if unlinkResult ~= AccountManager.AuthResults.Success then
			local err = unlinkResult and Errors.Authentication[unlinkResult] or Errors.Default
			ScreenManager:OpenScreen(ErrorOverlay(err), false)
		end
		isUnlinking = false
	end

	UnlinkButton.MouseButton1Click:connect(function()
		if isUnlinking then return end
		SoundManager:Play('ButtonPress')
		local confirmTitleAndMsg = { Title = Strings:LocalizedString("UnlinkTitle"), Msg = Strings:LocalizedString("UnlinkPhrase") }
		ScreenManager:OpenScreen(UnlinkAccountOverlay(confirmTitleAndMsg), false)
	end)

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('UnlinkAccountScreenId')}
	end

	-- Override
	function this:GetDefaultSelectionObject()
		return UnlinkButton
	end

	-- Override
	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		EventHub:addEventListener(EventHub.Notifications["UnlinkAccountConfirmation"], "unlinkAccount",
			function()
				unlinkAccountAsync()
			end)
	end

	-- Override
	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		EventHub:removeEventListener(EventHub.Notifications["UnlinkAccountConfirmation"], "unlinkAccount")
	end

	return this
end

return createUnlinkAccountScreen
