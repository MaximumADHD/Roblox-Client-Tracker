--[[
			// PurchasePackagePrompt.lua
			// Kip Turner
			// Copyright Roblox 2015
]]

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService('GuiService')
local MarketplaceService = game:GetService('MarketplaceService')
local PlatformService;
pcall(function() PlatformService = game:GetService('PlatformService') end)

local UserDataModule = require(ShellModules:FindFirstChild('UserData'))
local Http = require(ShellModules:FindFirstChild('Http'))
local ScrollingTextBox = require(ShellModules:FindFirstChild('ScrollingTextBox'))
local CreateConfirmPrompt = require(ShellModules:FindFirstChild('ConfirmPrompt'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local CurrencyWidgetModule = require(ShellModules:FindFirstChild('CurrencyWidget'))

local MOCKUP_WIDTH = 1920
local MOCKUP_HEIGHT = 1080
local CONTENT_WIDTH = 1920
local CONTENT_HEIGHT = 690
local PACKAGE_CONTAINER_WIDTH = 780
local PACKAGE_CONTAINER_HEIGHT = 690
local PACKAGE_BACKGROUND_WIDTH = 580
local PACKAGE_BACKGROUND_HEIGHT = 640

local CONTENT_POSITION = Vector2.new(0, 225)

local DETAILS_CONTAINER_WIDTH = CONTENT_WIDTH - PACKAGE_CONTAINER_WIDTH
local DETAILS_CONTAINER_HEIGHT = 690

local DESCRIPTION_WIDTH = 800
local DESCRIPTION_HEIGHT = 320

local BUY_BUTTON_WIDTH = 320
local BUY_BUTTON_HEIGHT = 64

local TEXT_START_OFFSET = Vector2.new(0, 70)
local TEXT_SPACING = Vector2.new(0, 20)
local ROBUX_TEXT_OFFSET = Vector2.new(0, 25)
local DETAIL_TEXT_OFFSET = Vector2.new(0, 30)

local BUY_BUTTON_OFFSET = Vector2.new(0, -50)

local ROBUX_BALANCE_OFFSET = Vector2.new(100, -130)

local function CreatePurchasePackagePrompt(packageInfo)
	local this = {}

	local MyParent = nil
	local Result = nil
	local purchasing = false
	local finishedLoading = false
	local balance = nil
	local inFocus = false
	local ResultEvent = Utility.Signal()

	local packageName = packageInfo:GetFullName()
	local robuxPrice = packageInfo:GetRobuxPrice()
	local creatorId = packageInfo:GetCreatorId()


	local ModalBackground = Utility.Create'Frame'
	{
		Name = "PurchasePackagePrompt";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
	}

		local ContentContainer = Utility.Create'Frame'
		{
			Name = "ContentContainer";
			Size = UDim2.new(CONTENT_WIDTH/MOCKUP_WIDTH, 0, CONTENT_HEIGHT/MOCKUP_HEIGHT, 0);
			Position = UDim2.new(CONTENT_POSITION.x/MOCKUP_WIDTH, 0, CONTENT_POSITION.y/MOCKUP_HEIGHT, 0);
			BackgroundTransparency = 0;
			BackgroundColor3 = GlobalSettings.OverlayColor;
			BorderSizePixel = 0;
			Parent = ModalBackground;
		}

			local PackageContainer = Utility.Create'Frame'
			{
				Name = "PackageContainer";
				Size = UDim2.new(PACKAGE_CONTAINER_WIDTH/CONTENT_WIDTH, 0, PACKAGE_CONTAINER_HEIGHT/CONTENT_HEIGHT, 0);
				Position = UDim2.new(0,0,0,0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Parent = ContentContainer;
			}
				local PackageBackground = Utility.Create'Frame'
				{
					Name = "PackageBackground";
					Size = UDim2.new(PACKAGE_BACKGROUND_WIDTH/PACKAGE_CONTAINER_WIDTH, 0, PACKAGE_BACKGROUND_HEIGHT/CONTENT_HEIGHT, 0);
					BackgroundTransparency = 0;
					BackgroundColor3 = GlobalSettings.ForegroundGreyColor;
					BorderSizePixel = 0;
					ZIndex = 2;
					Parent = PackageContainer;
					AssetManager.CreateShadow(1);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 0.5, 0);
				}
					local PackageImage = Utility.Create'ImageLabel'
					{
						Name = 'PackageImage';
						Size = UDim2.new(1,0,1,0);
						Image = Http.GetThumbnailUrlForAsset(packageInfo:GetAssetId());
						BackgroundTransparency = 1;
						ZIndex = PackageBackground.ZIndex;
						Parent = PackageBackground;
					};
			local DetailsContainer = Utility.Create'Frame'
			{
				Name = "DetailsContainer";
				Size = UDim2.new(DETAILS_CONTAINER_WIDTH/CONTENT_WIDTH, 0, DETAILS_CONTAINER_HEIGHT/CONTENT_HEIGHT, 0);
				Position = UDim2.new(PACKAGE_CONTAINER_WIDTH/CONTENT_WIDTH,0,0,0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Parent = ContentContainer;
			}
				local PurchasingTitle = Utility.Create'TextLabel'
				{
					Name = 'PurchasingTitle';
					Text = Strings:LocalizedString('PurchasingTitle');
					Position = UDim2.new(0, 0, 0, 66);
					Size = UDim2.new(1,0,0,25);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.WhiteTextColor;
					Font = GlobalSettings.HeadingFont;
					FontSize = GlobalSettings.HeaderSize;
					BackgroundTransparency = 1;
					Visible = false;
					Parent = DetailsContainer;
				};
			local DetailsContent = Utility.Create'Frame'
			{
				Name = "DetailsContent";
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(0,0,0,0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Parent = DetailsContainer;
			}

				local PackageName = Utility.Create'TextLabel'
				{
					Name = 'PackageName';
					Text = packageName or "Unknown Package";
					-- Position = UDim2.new(TEXT_START_OFFSET.X/DETAILS_CONTAINER_WIDTH, 0, TEXT_START_OFFSET.Y/DETAILS_CONTAINER_HEIGHT, 0);
					Position = UDim2.new(0, 0, 0, 66);
					Size = UDim2.new(1,0,0,25);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.WhiteTextColor;
					Font = GlobalSettings.HeadingFont;
					FontSize = GlobalSettings.HeaderSize;
					BackgroundTransparency = 1;
					Parent = DetailsContent;
				};
				local RobuxIcon = Utility.Create'ImageLabel'
				{
					Name = 'RobuxIcon';
					Position = UDim2.new(0,0,0,125);
					-- Position = PackageName.Position + UDim2.new(ROBUX_TEXT_OFFSET.X/DETAILS_CONTAINER_WIDTH,0,ROBUX_TEXT_OFFSET.Y/DETAILS_CONTAINER_HEIGHT + PackageName.Size.Y.Scale, PackageName.Size.Y.Offset);
					Size = UDim2.new(0,50,0,50);
					BackgroundTransparency = 1;
					Parent = DetailsContent;

					Image = "rbxasset://textures/ui/Shell/Icons/ROBUXIcon@1080.png";
					Size = UDim2.new(0,42,0,42);
				};
				local PackageCost = Utility.Create'TextLabel'
				{
					Name = 'PackageCost';
					Text = '';
					Size = UDim2.new(0,0,1,0);
					Position = UDim2.new(1.3,0,0,0);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.GreenTextColor;
					Font = GlobalSettings.RegularFont;
					FontSize = GlobalSettings.HeaderSize;
					BackgroundTransparency = 1;
					Parent = RobuxIcon;
				};

				local AlreadyOwnTextLabel = Utility.Create'TextLabel'
				{
					Name = 'AlreadyOwnTextLabel';
					Text = '';
					Size = UDim2.new(0,0,0,50);
					Position = UDim2.new(0,0,0,125);
					-- Position = PackageName.Position + UDim2.new(ROBUX_TEXT_OFFSET.X/DETAILS_CONTAINER_WIDTH,0,ROBUX_TEXT_OFFSET.Y/DETAILS_CONTAINER_HEIGHT + PackageName.Size.Y.Scale, PackageName.Size.Y.Offset);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.GreenTextColor;
					Font = GlobalSettings.ItalicFont;
					FontSize = GlobalSettings.DescriptionSize;
					BackgroundTransparency = 1;
					Visible = false;
					Parent = DetailsContent;
				};

				local descriptionScrollingTextBox = ScrollingTextBox(UDim2.new(DESCRIPTION_WIDTH/DETAILS_CONTAINER_WIDTH, 0, DESCRIPTION_HEIGHT/DETAILS_CONTAINER_HEIGHT, 0),
					-- RobuxIcon.Position + UDim2.new(DETAIL_TEXT_OFFSET.X/DETAILS_CONTAINER_WIDTH,0,DETAIL_TEXT_OFFSET.Y/DETAILS_CONTAINER_HEIGHT + RobuxIcon.Size.Y.Scale, RobuxIcon.Size.Y.Offset),
					UDim2.new(0, 0, 0, 200),
					DetailsContent)
				descriptionScrollingTextBox:SetFontSize(GlobalSettings.TitleSize)
				descriptionScrollingTextBox:SetFont(GlobalSettings.LightFont)

				local BuyButton = Utility.Create'ImageButton'
				{
					Name = "BuyButton";
					Size = UDim2.new(0, BUY_BUTTON_WIDTH, 0, BUY_BUTTON_HEIGHT);
					BorderSizePixel = 0;
					BackgroundColor3 = GlobalSettings.BlueButtonColor;
					BackgroundTransparency = 0;
					Parent = DetailsContent;
					AnchorPoint = Vector2.new(0, 1);
					Position = UDim2.new(0, 0, 1 + BUY_BUTTON_OFFSET.Y/DETAILS_CONTAINER_HEIGHT, 0);
				}
				local BuyText = Utility.Create'TextLabel'
				{
					Name = 'BuyText';
					Text = '';
					Size = UDim2.new(1,0,1,0);
					TextColor3 = GlobalSettings.TextSelectedColor;
					Font = GlobalSettings.HeadingFont;
					FontSize = GlobalSettings.MediumLargeHeadingSize;
					BackgroundTransparency = 1;
					Parent = BuyButton;
				};

				--Make the BuyButton big enough
				Utility.ResizeButtonWithDynamicText(BuyButton, BuyText,
					{Strings:LocalizedString("OkWord"), Strings:LocalizedString("BuyWord"), Strings:LocalizedString("GetRobuxPhrase"), Strings:LocalizedString("TakeWord")},
					GlobalSettings.TextHorizontalPadding)


	local function OnOwnedUpdate()
		if packageInfo:IsOwned() or robuxPrice == nil then
			if packageInfo:IsOwned() then
				if robuxPrice and robuxPrice > 0 then
					AlreadyOwnTextLabel.Text = string.format(Strings:LocalizedString('PurchasedThisPhrase'), Utility.FormatNumberString(tostring(robuxPrice)))
				else
					AlreadyOwnTextLabel.Text = Strings:LocalizedString('AlreadyOwnedPhrase')
				end
			end
			AlreadyOwnTextLabel.Visible = (packageInfo:IsOwned() == true)
			RobuxIcon.Visible = false
			BuyText.Text = Strings:LocalizedString("OkWord")

			--V1: Show buy button for Xbox add ons (boy/girl avatar) if they aren't owned
			if packageInfo:IsXboxAddOn() and not packageInfo:IsOwned() then
				BuyText.Text = Utility.Upper(Strings:LocalizedString('BuyWord'))
			end
		else
			if robuxPrice and robuxPrice == 0 then
				PackageCost.Text = Utility.Upper(Strings:LocalizedString('FreeWord'));
			else
				PackageCost.Text = robuxPrice and Utility.FormatNumberString(tostring(robuxPrice)) or '-';
			end
			RobuxIcon.Visible = true
			AlreadyOwnTextLabel.Visible = false
			if robuxPrice == 0 then
				BuyText.Text = Utility.Upper(Strings:LocalizedString('TakeWord'));
			elseif balance and robuxPrice > balance then
				BuyText.Text = Utility.Upper(Strings:LocalizedString('GetRobuxPhrase'));
			else
				BuyText.Text = Utility.Upper(Strings:LocalizedString('BuyWord'));
			end
		end
	end

	local function SetBalance(newBalance)
		balance = newBalance
		OnOwnedUpdate()
	end

	function this:UpdateOwned()
		OnOwnedUpdate()
	end

	function this:ResultAsync()
		if Result then
			return Result
		end
		ResultEvent:wait()
		return Result
	end


	do
		local function loadBalanceAsync()
			local balance = UserDataModule.GetPlatformUserBalanceAsync()
			SetBalance(balance)
		end
		local function loadDescription()
			local descriptionText = packageInfo:GetDescriptionAsync()
			descriptionScrollingTextBox:SetText(descriptionText or "")
		end

		DetailsContent.Visible = false

		local loader = LoadingWidget({Parent = DetailsContainer}, {loadBalanceAsync, loadDescription})
		spawn(function()
			loader:AwaitFinished()
			loader:Cleanup()
			loader = nil
			ScreenManager:DefaultFadeIn(DetailsContent)
			DetailsContent.Visible = true
			if inFocus then
				Utility.SetSelectedCoreObject(this:GetDefaultSelectableObject())
			end
			finishedLoading = true
		end)
	end

	local function DoPurchase()
		purchasing = true
		local wasOwned = packageInfo:IsOwned()
		local purchaseResult = packageInfo:BuyAsync()
		local newBalance = purchaseResult and purchaseResult['balanceAfterSale'] or UserDataModule.GetPlatformUserBalanceAsync()
		SetBalance(newBalance)
		local nowOwns = packageInfo:IsOwned() and not wasOwned
		Result = nowOwns
		if nowOwns then
			this:UpdateOwned()
		end
		purchasing = false
		if not wasOwned and not nowOwns then
			if ScreenManager:GetTopScreen() == this then
				ScreenManager:CloseCurrent()
			end
			ScreenManager:OpenScreen(ErrorOverlayModule(Errors.PackagePurchase[1]), false)
		end
		Utility.DebugLog("Done with purchase")
	end


	OnOwnedUpdate()

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('PurchasePackagePromptId');
			AssetId = packageInfo:GetAssetId();
			IsOwned = packageInfo:IsOwned();
		}
	end

	function this:GetDefaultSelectableObject()
		return BuyButton
	end

	function this:FadeInBackground()
		Utility.PropertyTweener(ModalBackground, "BackgroundTransparency", 1, GlobalSettings.ModalBackgroundTransparency, 0.25, Utility.EaseInOutQuad, true)
	end

	function this:GetPriority()
		return GlobalSettings.OverlayPriority
	end

	local currencyWidget = nil
	local RobuxChangedConn = nil
	function this:Show()
		ModalBackground.Visible = true
		ModalBackground.Parent = ScreenManager:GetScreenGuiByPriority(self:GetPriority())

		local function onPackageBackgroundResize()
			PackageImage.Size = Utility.CalculateFill(PackageBackground, Vector2.new(420, 420))
			PackageImage.AnchorPoint = Vector2.new(0.5, 0.5)
			PackageImage.Position = UDim2.new(0.5, 0, 0.5, 0)
		end

		self.PackageBackgroundChangedConn = Utility.DisconnectEvent(self.PackageBackgroundChangedConn)
		self.PackageBackgroundChangedConn = PackageBackground:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
			onPackageBackgroundResize()
		end)
		onPackageBackgroundResize()

		if not currencyWidget then
			currencyWidget = CurrencyWidgetModule({Parent = ModalBackground; Position = UDim2.new(0.052, 0, 0.88, 0); })
		end
		Utility.DisconnectEvent(RobuxChangedConn)
		RobuxChangedConn = currencyWidget.RobuxChanged:connect(SetBalance)

		SoundManager:Play('OverlayOpen')
	end

	function this:Hide()
		ModalBackground.Visible = false
		ModalBackground.Parent = nil

		self.PackageBackgroundChangedConn = Utility.DisconnectEvent(self.PackageBackgroundChangedConn)
		RobuxChangedConn = Utility.DisconnectEvent(RobuxChangedConn)
	end

	function this:ScreenRemoved()
		if currencyWidget then
			currencyWidget:Destroy()
			currencyWidget = nil
		end
		ResultEvent:fire()
	end

	function this:Focus()
		inFocus = true
		ContextActionService:BindCoreAction("ReturnFromPurchasePackageScreen",
			function(actionName, inputState, inputObject)
				if not purchasing then
					if inputState == Enum.UserInputState.End then
						ScreenManager:CloseCurrent()
					end
				end
			end,
			false,
			Enum.KeyCode.ButtonB)

		local buyButtonDebounce = false
		self.BuyButtonConn = Utility.DisconnectEvent(self.BuyButtonConn)
		self.BuyButtonConn = BuyButton.MouseButton1Click:connect(function()
			if buyButtonDebounce or purchasing or not finishedLoading then
				return
			end
			buyButtonDebounce = true

			if packageInfo:IsOwned() or robuxPrice == nil then
				SoundManager:Play('ButtonPress')
				ScreenManager:CloseCurrent()

				--Open the product detail if it's a xbox add-on and not owned
				if packageInfo:IsXboxAddOn() and not packageInfo:IsOwned() then
					packageInfo:OpenAvatarDetailInXboxStore()
				end
			else
				if balance then
					if robuxPrice > 0 and balance < robuxPrice then
						Utility.DebugLog("Goto robux screen")
						EventHub:dispatchEvent(EventHub.Notifications["NavigateToRobuxScreen"])
					else
						local confirmPrompt = CreateConfirmPrompt({ProductId = packageInfo and packageInfo:GetAssetId() or "Unknown"; ProductName = packageName; Cost = robuxPrice; Balance = balance; ProductImage = Http.GetThumbnailUrlForAsset(packageInfo:GetAssetId()); Currency = "Robux"; CurrencySymbol = ""},
																  {ShowRemainingBalance = true; ShowRobuxIcon = true;})
						ScreenManager:OpenScreen(confirmPrompt)
						local result = confirmPrompt:ResultAsync()
						if result == true then
							local loader = LoadingWidget({Parent = DetailsContainer}, {DoPurchase})
							DetailsContent.Visible = false
							PurchasingTitle.Visible = true
							spawn(function()
								loader:AwaitFinished()
								loader:Cleanup()
								loader = nil
								ScreenManager:DefaultFadeIn(DetailsContent)
								DetailsContent.Visible = true
								PurchasingTitle.Visible = false

								if ScreenManager:GetTopScreen() == this then
									ScreenManager:CloseCurrent()
								end
							end)

						else
							Utility.DebugLog("Declined to buy")
						end
					end
				end
			end

			buyButtonDebounce = false
		end)

		GuiService:AddSelectionParent("PurchasePackagePromptSelectionGroup", ContentContainer)
		Utility.SetSelectedCoreObject(self:GetDefaultSelectableObject())
	end

	function this:RemoveFocus()
		inFocus = false
		ContextActionService:UnbindCoreAction("ReturnFromPurchasePackageScreen")
		GuiService:RemoveSelectionGroup("PurchasePackagePromptSelectionGroup")
		self.BuyButtonConn = Utility.DisconnectEvent(self.BuyButtonConn)
		Utility.SetSelectedCoreObject(nil)
	end


	function this:SetParent(parent)
		MyParent = parent
		ModalBackground.Parent = MyParent
	end


	return this
end

return CreatePurchasePackagePrompt
