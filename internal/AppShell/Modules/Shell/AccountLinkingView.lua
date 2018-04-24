local XboxUserStateRoduxEnabled = settings():GetFFlag("XboxUserStateRodux")

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local ContextActionService = game:GetService('ContextActionService')

local AccountManager = require(ShellModules:FindFirstChild('AccountManager'))
local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local UnlinkAccountOverlay = require(ShellModules:FindFirstChild('UnlinkAccountOverlay'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local XboxAppState = require(ShellModules:FindFirstChild('AppState'))

local function createAccountLinkingView()
	local this = {}

	local gamerTag = XboxUserStateRoduxEnabled and XboxAppState.store:getState().XboxUser.gamertag or UserData:GetDisplayName()
	local robloxName = XboxUserStateRoduxEnabled and XboxAppState.store:getState().RobloxUser.robloxName or UserData:GetRobloxName()
	local rbxuid = XboxUserStateRoduxEnabled and XboxAppState.store:getState().RobloxUser.rbxuid or UserData:GetRbxUserId()
	local linkedAsPhrase = string.format(Strings:LocalizedString('LinkedAsPhrase'), gamerTag, robloxName)

	local dummySelection = Utility.Create'Frame'
	{
		BackgroundTransparency = 1;
	}

	local Container = Utility.Create'Frame'
	{
		Name = "Container";
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(0, 765, 0, 630);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Selectable = true;
		SelectionImageObject = dummySelection;
	}

	local GamerPic = Utility.Create'ImageLabel'
	{
		Name = "GamerPic";
		Position = UDim2.new(0, 40, 0, 25);
		Size = UDim2.new(0, 300, 0, 300);
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Image = 'rbxapp://xbox/localgamerpic';
		Parent = Container;
	}

	local AccountLinkIcon = Utility.Create'ImageLabel'
	{
		Name = "AccountLinkIcon";
		Position = UDim2.new(0, 354, 0, 166);
		Size = UDim2.new(0, 58, 0, 20);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/Icons/AccountLinkIcon.png";
		Parent = Container;
	}

	local ProfileImage = Utility.Create'ImageLabel'
	{
		Name = "ProfileImage";
		Position = UDim2.new(0, 425, 0, 25);
		Size = UDim2.new(0, 300, 0, 300);
		BackgroundTransparency = 0;
		BackgroundColor3 = GlobalSettings.CharacterBackgroundColor;
		BorderSizePixel = 0;
		Parent = Container;
	}

	if rbxuid then
		spawn(function()
			local thumbnailSize = ThumbnailLoader.AvatarSizes.Size352x352
			local thumbLoader = ThumbnailLoader:LoadAvatarThumbnailAsync(ProfileImage, rbxuid,
				Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size352x352, true)
			thumbLoader:LoadAsync()
			ProfileImage.ImageRectSize = Vector2.new(thumbnailSize.X, (1) * thumbnailSize.X)
		end)
	end

	local ProfileLabel = Utility.Create'TextLabel'
	{
		Name = 'ProfileLabel';
		Position = UDim2.new(0, 575, 0, 335);

		Text = robloxName or '';
		TextXAlignment = 'Center';
		TextYAlignment = 'Top';

		BackgroundColor3 = Color3.new(1,0,0);
		TextColor3 = GlobalSettings.WhiteTextColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		BackgroundTransparency = 1;
		Parent = Container;
	}

	local GamerLabel = Utility.Create'TextLabel'
	{
		Name = 'GamerLabel';
		Text = gamerTag or '';
		TextXAlignment = 'Center';
		TextYAlignment = 'Top';

		Position = UDim2.new(0, 190, 0, 335);

		BackgroundColor3 = Color3.new(1,0,0);
		TextColor3 = GlobalSettings.WhiteTextColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		BackgroundTransparency = 1;
		Parent = Container;
	}

	local LinkedAsText = Utility.Create'TextLabel'
	{
		Name = "LinkedAsText";
		Position = UDim2.new(0, 40, 0, 395);
		Size = UDim2.new(0, 686, 0, 120);
		Text = linkedAsPhrase;
		TextXAlignment = 'Center';
		TextYAlignment = 'Top';
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		TextColor3 = GlobalSettings.GreyTextColor;
		FontSize = GlobalSettings.SubHeaderSize;
		TextWrapped = true;
		Parent = Container;
	}

	local UnlinkButton = Utility.Create'ImageButton'
	{
		Name = "UnlinkButton";
		Position = UDim2.new(0, 220, 0, 520);
		Size = UDim2.new(0, 320, 0, 80);
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.GreySelectedButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = 2;
		Parent = Container;
		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1)
	}

	local DefaultButtonColor = GlobalSettings.GreyButtonColor
	local SelectedButtonColor = GlobalSettings.GreySelectedButtonColor
	local DefaultButtonTextColor = GlobalSettings.WhiteTextColor
	local SelectedButtonTextColor = GlobalSettings.TextSelectedColor

	local UnlinkText = Utility.Create'TextLabel'
	{
		Name = "UnlinkText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = Color3.new(0,0,0);
		Text = Strings:LocalizedString("UnlinkGamerTagWord");
		ZIndex = 2;
		Parent = UnlinkButton;
	}
	Utility.ResizeButtonWithText(UnlinkButton, UnlinkText, GlobalSettings.TextHorizontalPadding)

	Container.SelectionGained:connect(function()
		Utility.SetSelectedCoreObject(UnlinkButton)
	end)

	UnlinkButton.SelectionGained:connect(function()
		UnlinkButton.ImageColor3 = SelectedButtonColor
		UnlinkText.TextColor3 = SelectedButtonTextColor
	end)
	UnlinkButton.SelectionLost:connect(function()
		UnlinkButton.ImageColor3 = DefaultButtonColor
		UnlinkText.TextColor3 = DefaultButtonTextColor
	end)

	local ModalOverlay = Utility.Create'Frame'
	{
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = GlobalSettings.ModalBackgroundTransparency;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = 4;
	}

	local isUnlinking = false
	local function unlinkAccountAsync()
		if isUnlinking then return end
		isUnlinking = true
		local unlinkResult = nil
		local loader = LoadingWidget(
			{ Parent = Container }, {
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

	function this:Focus()
		EventHub:addEventListener(EventHub.Notifications["UnlinkAccountConfirmation"], "unlinkAccount",
			function()
				unlinkAccountAsync()
			end
		)
	end

	function this:RemoveFocus()
		EventHub:removeEventListener(EventHub.Notifications["UnlinkAccountConfirmation"], "unlinkAccount")
	end

	UnlinkButton.MouseButton1Click:connect(function()
		if isUnlinking then return end
		SoundManager:Play('ButtonPress')
		local confirmTitleAndMsg = { Title = Strings:LocalizedString("UnlinkTitle"), Msg = Strings:LocalizedString("UnlinkPhrase") }
		ScreenManager:OpenScreen(UnlinkAccountOverlay(confirmTitleAndMsg), false)
	end)

	--[[ Public API ]]--
	function this:SetParent(newParent)
		Container.Parent = newParent
	end

	function this:GetUnlinkButton()
		return UnlinkButton
	end

	return this
end

return createAccountLinkingView
