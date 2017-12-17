--[[
			// CurrencyWidget.lua by Kip Turner
--]]

local TextService = game:GetService('TextService')
local PlatformService;
pcall(function() PlatformService = game:GetService('PlatformService') end)


local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local UserDataModule = require(ShellModules:FindFirstChild('UserData'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))

local EventHubConnectCount = 0


local InternalPlatformRobuxAmountChangedSignal = Utility.Signal()
local InternalTotalRobuxAmountChangedSignal = Utility.Signal()


local function CreateCurrencyWidget(properties)
	properties = properties or {}

	local this = {}

	this.RobuxChanged = Utility.Signal()

	local internalPlatformRobuxChangedConn = nil
	local internalTotalRobuxChangedConn = nil

	local CachedTotalRobuxValue = nil
	local CachedRobuxValue = nil
	local destroyed = false

	EventHubConnectCount = EventHubConnectCount + 1
	local myEventId = "CurrencyWidget" .. tostring(EventHubConnectCount)

	local RobuxBalanceTitle = Utility.Create'TextLabel'
	{
		Name = 'RobuxBalanceTitle';
		Size = UDim2.new(0,0,0,0);
		Position = properties.Position or UDim2.new(0, 0, 0, 0);
		TextXAlignment = 'Left';
		TextYAlignment = 'Top';
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString('RobuxBalanceTitle') .. ':';
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.HeaderSize;
		BackgroundTransparency = 1;
		ZIndex = properties.ZIndex or 2;
		Parent = properties.Parent or nil;
	};
	local robuxTitleSize = TextService:GetTextSize(RobuxBalanceTitle.Text, Utility.ConvertFontSizeEnumToInt(RobuxBalanceTitle.FontSize), RobuxBalanceTitle.Font, Vector2.new())
	RobuxBalanceTitle.Size = UDim2.new(0, robuxTitleSize.X, 0, robuxTitleSize.Y)

		local RobuxBalanceIcon = Utility.Create'ImageLabel'
		{
			Name = 'RobuxIcon';
			Size = UDim2.new(0,46,0,46);
			BackgroundTransparency = 1;
			Image = 'rbxasset://textures/ui/Shell/Icons/ROBUXIconOutlined@1080.png';
			ZIndex = properties.ZIndex or 2;
			Parent = RobuxBalanceTitle;
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(1, 17, 0.5, 0);
		};
			local RobuxBalanceValue = Utility.Create'TextLabel'
			{
				Name = 'RobuxBalanceValue';
				Size = UDim2.new(0,0,1,0);
				Position = UDim2.new(1,5,0,-2);
				Text = '';
				TextXAlignment = 'Left';
				TextYAlignment = 'Center';
				TextColor3 = GlobalSettings.GreenTextColor;
				Font = GlobalSettings.RegularFont;
				FontSize = GlobalSettings.HeaderSize;
				BackgroundTransparency = 1;
				ZIndex = properties.ZIndex or 2;
				TextTransparency = 1;
				Parent = RobuxBalanceIcon;
			};


	local function UpdateBalanceText()
		local balanceValueString = CachedRobuxValue and Utility.FormatNumberString(tostring(CachedRobuxValue)) or '-'
		local balanceStringWidth = TextService:GetTextSize(balanceValueString, Utility.ConvertFontSizeEnumToInt(RobuxBalanceValue.FontSize), RobuxBalanceValue.Font, Vector2.new())
		RobuxBalanceValue.Size = UDim2.new(0, balanceStringWidth.X, 1, 0)
		RobuxBalanceValue.Text = balanceValueString
		if RobuxBalanceValue.TextTransparency == 1 and CachedRobuxValue ~= nil then
			Utility.PropertyTweener(RobuxBalanceValue, 'TextTransparency', 1, 0, 0.5, Utility.EaseOutQuad, true)
		end
	end


	local robuxAmountChangedLoader = nil
	local ConsumePurchasedConn = nil
	if PlatformService then
		local robuxChangedEventCount = 0

		local function fetchNewRobuxAsync(thisEventCount)
			if not (CachedRobuxValue and CachedTotalRobuxValue) then
				this:RefreshRobuxAmountAsync()
			end
			local prepurchaseRobux = CachedRobuxValue
			local prepurchaseTotalRobux = CachedTotalRobuxValue
			Utility.ExponentialRepeat(
				function() return thisEventCount == robuxChangedEventCount and not destroyed end,
				function()
					local balance = UserDataModule.GetPlatformUserBalanceAsync()
					local totalBalance = UserDataModule.GetTotalUserBalanceAsync()
					if balance and totalBalance and not destroyed then
						if balance ~= prepurchaseRobux and totalBalance ~= prepurchaseTotalRobux then
							CachedRobuxValue = balance
							CachedTotalRobuxValue = totalBalance
							UpdateBalanceText()
							if this.RobuxChanged ~= nil then
								this.RobuxChanged:fire(balance)
							end
							return true
						end
					end
				end
			 )
		end

		local function OnRobuxAmountChanged()
			robuxChangedEventCount = robuxChangedEventCount + 1
			local thisEventCount = robuxChangedEventCount

			if robuxAmountChangedLoader then
				robuxAmountChangedLoader:Cleanup()
				robuxAmountChangedLoader = nil
			end
			local loader = LoadingWidget({Parent = RobuxBalanceValue, Size = UDim2.new(0,50,0,50), Position = UDim2.new(1,75,0,25)}, {function() fetchNewRobuxAsync(thisEventCount) end})
			robuxAmountChangedLoader = loader
			robuxAmountChangedLoader:AwaitFinished()
			if robuxAmountChangedLoader and loader == robuxAmountChangedLoader then
				robuxAmountChangedLoader:Cleanup()
				robuxAmountChangedLoader = nil
			end
		end

		Utility.DisconnectEvent(ConsumePurchasedConn)
		ConsumePurchasedConn = PlatformService.ConsumePurchased:connect(function(platformPurchaseResult, purchasedConsumablesInfo)
			--Update Robux regardless of purchased type
			if platformPurchaseResult == 3 then
				OnRobuxAmountChanged()
			else
				if robuxAmountChangedLoader then
					robuxAmountChangedLoader:Cleanup()
					robuxAmountChangedLoader = nil
				end
			end
		end)

		EventHub:addEventListener(EventHub.Notifications["RobuxCatalogPurchaseInitiated"], myEventId, function()
			OnRobuxAmountChanged()
		end)
	end

	function this:GetAbsoluteSize()
		return (RobuxBalanceValue.AbsolutePosition + RobuxBalanceValue.AbsoluteSize) - (RobuxBalanceTitle.AbsolutePosition)
	end

	function this:GetRobuxAmount()
		return CachedRobuxValue
	end

	function this:RefreshRobuxAmountAsync()
		local beforeTotalRobuxValue = CachedTotalRobuxValue
		local beforeRobuxValue = CachedRobuxValue

		UserDataModule.GetLocalUserIdAsync()
		CachedTotalRobuxValue = UserDataModule.GetTotalUserBalanceAsync()
		CachedRobuxValue = UserDataModule.GetPlatformUserBalanceAsync()
		UpdateBalanceText()

		if beforeTotalRobuxValue ~= CachedTotalRobuxValue then
			InternalTotalRobuxAmountChangedSignal:fire(CachedTotalRobuxValue)
		end
		if beforeRobuxValue ~= CachedRobuxValue then
			InternalPlatformRobuxAmountChangedSignal:fire(CachedRobuxValue)
		end
	end

	local GetRobuxAmountAsyncTempWidget = nil
	function this:GetRobuxAmountAsync()
		if CachedRobuxValue then
			return CachedRobuxValue
		end
		UserDataModule.GetLocalUserIdAsync()
		spawn(function()
			wait(1)
			if CachedRobuxValue == nil and GetRobuxAmountAsyncTempWidget == nil then
				GetRobuxAmountAsyncTempWidget = LoadingWidget({Parent = RobuxBalanceValue, Size = UDim2.new(0,50,0,50), Position = UDim2.new(1,75,0,25)}, {function() while CachedRobuxValue == nil do wait() end end})
				GetRobuxAmountAsyncTempWidget:AwaitFinished()
				if GetRobuxAmountAsyncTempWidget then
					GetRobuxAmountAsyncTempWidget:Cleanup()
				end
				GetRobuxAmountAsyncTempWidget = nil
			end
		end)
		self:RefreshRobuxAmountAsync()
		return CachedRobuxValue
	end

	function this:Destroy()
		destroyed = true
		RobuxBalanceTitle.Parent = nil
		self.RobuxChanged = nil
		if robuxAmountChangedLoader then
			robuxAmountChangedLoader:Cleanup()
			robuxAmountChangedLoader = nil
		end
		ConsumePurchasedConn = Utility.DisconnectEvent(ConsumePurchasedConn)
		internalPlatformRobuxChangedConn = Utility.DisconnectEvent(internalPlatformRobuxChangedConn)
		internalTotalRobuxChangedConn = Utility.DisconnectEvent(internalTotalRobuxChangedConn)
		EventHub:removeEventListener(EventHub.Notifications["RobuxCatalogPurchaseInitiated"], myEventId)
	end

	function this:GetGuiObject()
		return RobuxBalanceTitle
	end

	internalPlatformRobuxChangedConn = InternalPlatformRobuxAmountChangedSignal:connect(
		function(newPlatformRobux)
			if newPlatformRobux ~= CachedRobuxValue then
				CachedRobuxValue = newPlatformRobux
				UpdateBalanceText()
				this.RobuxChanged:fire(CachedRobuxValue)
			end
		end)
	internalTotalRobuxChangedConn = InternalTotalRobuxAmountChangedSignal:connect(
		function(newTotalRobux)
			if newTotalRobux ~= CachedTotalRobuxValue then
				CachedTotalRobuxValue = newTotalRobux
				this.RobuxChanged:fire(CachedRobuxValue)
			end
		end)

	spawn(function()
		this:GetRobuxAmountAsync()
	end)

	return this
end

return CreateCurrencyWidget
