--[[
			// ConfirmPrompt.lua
			// Kip Turner
			// Copyright Roblox 2015
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService('GuiService')

local UserDataModule = require(ShellModules:FindFirstChild('UserData'))

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local CurrencyWidgetModule = require(ShellModules:FindFirstChild('CurrencyWidget'))

local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local MOCKUP_WIDTH = 1920
local MOCKUP_HEIGHT = 1080
local CONTENT_WIDTH = 1920
local CONTENT_HEIGHT = 690
local PACKAGE_CONTAINER_WIDTH = 780
local PACKAGE_CONTAINER_HEIGHT = 690
local PACKAGE_BACKGROUND_WIDTH = 580
local PACKAGE_BACKGROUND_HEIGHT = 640

local CONTENT_POSITION = Vector2.new(0, 225)

local DETAILS_CONTAINER_WIDTH = 1140 --CONTENT_WIDTH - PACKAGE_CONTAINER_WIDTH
local DETAILS_CONTAINER_HEIGHT = 690

local BUY_BUTTON_WIDTH = 320
local BUY_BUTTON_HEIGHT = 64

local BUY_BUTTON_OFFSET = Vector2.new(0, -50)

local function CreateConfirmPrompt(confirmDetails, properties)
	local this = {}

	properties = properties or {}

	local MyParent = nil

	local InFocus = false
	local Result = nil
	local ResultEvent = Utility.Signal()

	local OnResultCallbacks = {}

	local productName = confirmDetails.ProductName

	local ConfirmPrompt = Utility.Create'Frame'
	{
		Name = "ConfirmPrompt";
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
			Parent = ConfirmPrompt;
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
						Image = '';
						BackgroundTransparency = 1;
						ZIndex = PackageBackground.ZIndex;
						Parent = PackageBackground;
					};
			if confirmDetails and confirmDetails.ProductImage then
				PackageImage.Image = confirmDetails.ProductImage
			else
				PackageBackground.Visible = false
			end


			local DetailsContainer = Utility.Create'Frame'
			{
				Name = "DetailsContainer";
				Size = UDim2.new(DETAILS_CONTAINER_WIDTH/CONTENT_WIDTH, 0, DETAILS_CONTAINER_HEIGHT/CONTENT_HEIGHT, 0);
				Position = UDim2.new(PACKAGE_CONTAINER_WIDTH/CONTENT_WIDTH,0,0,0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Parent = ContentContainer;
			}
				local ConfirmTitle = Utility.Create'TextLabel'
				{
					Name = 'ConfirmTitle';
					Text = Strings:LocalizedString('ConfirmPurchaseTitle');
					Position = UDim2.new(0, 0, 0, 66);
					Size = UDim2.new(1,0,0,25);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.WhiteTextColor;
					Font = GlobalSettings.HeadingFont;
					FontSize = GlobalSettings.HeaderSize;
					BackgroundTransparency = 1;
					Parent = DetailsContainer;
				};

				local formattedPackageCost = "";
				if confirmDetails.Cost then
					if type(confirmDetails.Cost) == 'string' then
						formattedPackageCost = confirmDetails.Cost
					else
						formattedPackageCost = (confirmDetails.CurrencySymbol or '') .. Utility.FormatNumberString(confirmDetails.Cost)
					end
				end

				local RobuxIcon = Utility.Create'ImageLabel'
				{
					Name = 'RobuxIcon';
					Position = UDim2.new(0,0,0,125);
					Size = UDim2.new(0,(properties.ShowRobuxIcon == true) and 50 or 0,0,50);
					BackgroundTransparency = 1;
					Parent = DetailsContainer;
				};
				if confirmDetails.Currency == "Robux" then
					RobuxIcon.Image = "rbxasset://textures/ui/Shell/Icons/ROBUXIcon@1080.png"
					RobuxIcon.Size = UDim2.new(0,42,0,42)
				end
					local PackageCost = Utility.Create'TextLabel'
					{
						Name = 'PackageCost';
						Text = formattedPackageCost;
						Size = UDim2.new(0,0,1,0);
						Position = UDim2.new(1.3,0,0,0);
						TextXAlignment = 'Left';
						TextColor3 = GlobalSettings.GreenTextColor;
						Font = GlobalSettings.RegularFont;
						FontSize = GlobalSettings.HeaderSize;
						BackgroundTransparency = 1;
						Parent = RobuxIcon;
					};

				if confirmDetails and confirmDetails.Cost and confirmDetails.Cost == 0 then
					PackageCost.Text = Strings:LocalizedString('FreeWord')
				end


				local areYouSurePhrase;
				if confirmDetails.Cost and confirmDetails.Cost == 0 then
					areYouSurePhrase = string.format(Strings:LocalizedString('AreYouSureTakePhrase'), tostring(productName))
				elseif properties.ConfirmWithPrice then
					areYouSurePhrase = string.format(Strings:LocalizedString('AreYouSureWithPricePhrase'), tostring(productName), tostring(formattedPackageCost))
				else
					areYouSurePhrase = string.format(Strings:LocalizedString('AreYouSurePhrase'), tostring(productName))
				end

				local ConfirmItemDetail = Utility.Create'TextLabel'
				{
					Name = 'ConfirmItemDetail';
					Text = areYouSurePhrase;
					Position = UDim2.new(0, 0, 0, 205);
					Size = UDim2.new(1,0,0,25);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.WhiteTextColor;
					Font = GlobalSettings.LightFont;
					FontSize = GlobalSettings.TitleSize;
					BackgroundTransparency = 1;
					Parent = DetailsContainer;
				};

				local RemaningBalance = Utility.Create'TextLabel'
				{
					Name = 'RemaningBalance';
					Text = '';
					Position = UDim2.new(0, 0, 0, 285);
					Size = UDim2.new(1,0,0,25);
					TextXAlignment = 'Left';
					TextColor3 = GlobalSettings.WhiteTextColor;
					Font = GlobalSettings.LightFont;
					FontSize = GlobalSettings.TitleSize;
					BackgroundTransparency = 1;
					Visible = properties.ShowRemainingBalance == true;
					Parent = DetailsContainer;
				};



				local ConfirmButton = Utility.Create'ImageButton'
				{
					Name = "ConfirmButton";
					Size = UDim2.new(0, BUY_BUTTON_WIDTH, 0, BUY_BUTTON_HEIGHT);  --Use offset so we can resize button correctly
					BorderSizePixel = 0;
					BackgroundColor3 = GlobalSettings.BlueButtonColor;
					BackgroundTransparency = 0;
					Parent = DetailsContainer;
					AnchorPoint = Vector2.new(0, 1);
					Position = UDim2.new(0, 0, 1 + BUY_BUTTON_OFFSET.Y/DETAILS_CONTAINER_HEIGHT, 0);
				}
				local ConfirmText = Utility.Create'TextLabel'
				{
					Name = 'ConfirmText';
					Text = Strings:LocalizedString('ConfirmWord');
					Size = UDim2.new(1,0,1,0);
					TextColor3 = GlobalSettings.TextSelectedColor;
					Font = GlobalSettings.HeadingFont;
					FontSize = GlobalSettings.ButtonSize;
					BackgroundTransparency = 1;
					Parent = ConfirmButton;
				};
				Utility.ResizeButtonWithText(ConfirmButton, ConfirmText, GlobalSettings.TextHorizontalPadding)


	local function SetResult(value)
		Result = value
		while #OnResultCallbacks > 0 do
			local callback = table.remove(OnResultCallbacks, #OnResultCallbacks)
			callback(Result)
		end
	end

	local function Decline()
		if this == ScreenManager:GetTopScreen() then
			SetResult(false)
			ScreenManager:CloseCurrent()
		end
	end

	local function Confirm()
		if this == ScreenManager:GetTopScreen() then
			SetResult(true)
			ScreenManager:CloseCurrent()
		end
	end

	function this:ResultAsync()
		if Result then
			return Result
		end
		ResultEvent:wait()
		return Result
	end

	function this:AddResultCallback(callback)
		if Result ~= nil then
			callback(Result)
		else
			table.insert(OnResultCallbacks, callback)
		end
	end

	function this:FadeInBackground()
		Utility.PropertyTweener(ConfirmPrompt, "BackgroundTransparency", 1, GlobalSettings.ModalBackgroundTransparency, 0.25, Utility.EaseInOutQuad, true)
	end

	function this:GetDefaultSelectableObject()
		return ConfirmButton
	end

	function this:GetPriority()
		return GlobalSettings.OverlayPriority
	end

	local currencyWidget = nil
	local RobuxChangedConn = nil
	function this:Show()
		ConfirmPrompt.Visible = true
		ConfirmPrompt.Parent = ScreenManager:GetScreenGuiByPriority(self:GetPriority())

		if self.BackgroundTween then
			self.BackgroundTween:Cancel()
		end
		self.BackgroundTween = Utility.PropertyTweener(ConfirmPrompt, "BackgroundTransparency", 1, GlobalSettings.ModalBackgroundTransparency, 0, Utility.EaseInOutQuad, nil)
		SoundManager:Play('OverlayOpen')

		local function onPackageBackgroundResize()
			local rawImageSize = Vector2.new(420, 420)
			if confirmDetails.ProductImageSize then
				rawImageSize = confirmDetails.ProductImageSize
			end
			PackageImage.Size = Utility.CalculateFill(PackageBackground, rawImageSize)
			PackageImage.AnchorPoint = Vector2.new(0.5, 0.5)
			PackageImage.Position = UDim2.new(0.5, 0, 0.5, 0)
		end

		self.PackageBackgroundChangedConn = Utility.DisconnectEvent(self.PackageBackgroundChangedConn)
		self.PackageBackgroundChangedConn = PackageBackground:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
			onPackageBackgroundResize()
		end)
		onPackageBackgroundResize()

		local function onBalanceLoaded(newBalance)
			local balance = newBalance
			if properties.ShowRemainingBalance then
				if balance and confirmDetails and confirmDetails.Cost then
					if confirmDetails.Cost and confirmDetails.Cost > 0 then
						local newBalance = balance and confirmDetails.Cost and balance - confirmDetails.Cost
						RemaningBalance.Text = string.format(Strings:LocalizedString('RemainingBalancePhrase'), Utility.FormatNumberString(tostring(newBalance)));
					else
						RemaningBalance.Text = ''
					end
				end
			end
		end

		if confirmDetails.Balance then
			onBalanceLoaded(confirmDetails.Balance)
		else
			spawn(function()
				local balance = UserDataModule.GetPlatformUserBalanceAsync()
				onBalanceLoaded(balance)
			end)
		end

		if not currencyWidget then
			currencyWidget = CurrencyWidgetModule({Parent = ConfirmPrompt; Position = UDim2.new(0.052, 0, 0.88, 0); })
		end
		Utility.DisconnectEvent(RobuxChangedConn)
		RobuxChangedConn = currencyWidget.RobuxChanged:connect(onBalanceLoaded)

	end

	function this:Hide()
		ConfirmPrompt.Visible = false
		ConfirmPrompt.Parent = nil

		if self.BackgroundTween then
			self.BackgroundTween:Cancel()
		end
		self.BackgroundTween = nil

		self.PackageBackgroundChangedConn = Utility.DisconnectEvent(self.PackageBackgroundChangedConn)
		RobuxChangedConn = Utility.DisconnectEvent(RobuxChangedConn)
	end

	function this:ScreenRemoved()
		if currencyWidget then
			currencyWidget:Destroy()
			currencyWidget = nil
		end
		if Result == nil then
			SetResult(false)
		end
		ResultEvent:fire(Result)
	end

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('ConfirmPromptId');
			ProductName = confirmDetails.ProductName;
			--Here the ProductId refers to assetid if it's a roblox product,
			--refers to productId if it's a Xbox product
			ProductId = confirmDetails.ProductId;
		}
	end

	function this:Focus()
		InFocus = true
		ContextActionService:BindCoreAction("ReturnFromCurrentConfirmScreen",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					Decline()
				end
			end,
			false,
			Enum.KeyCode.ButtonB)

		local isConfirmingPurchase = false
		self.ConfirmButtonConn = Utility.DisconnectEvent(self.ConfirmButtonConn)
		self.ConfirmButtonConn = ConfirmButton.MouseButton1Click:connect(function()
			if isConfirmingPurchase then return end
			isConfirmingPurchase = true
			SoundManager:Play('ButtonPress')
			Confirm()
			isConfirmingPurchase = false
		end)

		GuiService:AddSelectionParent("ConfirmOptionsSelectionGroup", ContentContainer)
			if InFocus and GuiService.SelectedCoreObject == nil then
				Utility.SetSelectedCoreObject(self:GetDefaultSelectableObject())
			end
	end

	function this:RemoveFocus()
		ContextActionService:UnbindCoreAction("ReturnFromCurrentConfirmScreen")
		GuiService:RemoveSelectionGroup("ConfirmOptionsSelectionGroup")
		self.ConfirmButtonConn = Utility.DisconnectEvent(self.ConfirmButtonConn)
		Utility.SetSelectedCoreObject(nil)
		InFocus = false
	end


	function this:SetParent(parent)
		MyParent = parent
		ConfirmPrompt.Parent = MyParent
	end


	return this
end

return CreateConfirmPrompt
