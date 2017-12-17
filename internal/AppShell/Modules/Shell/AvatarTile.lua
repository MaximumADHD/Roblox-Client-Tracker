--[[
// AvatarTile.lua

// Created by Kip Turner
// Copyright Roblox 2015
]]

local TextService = game:GetService('TextService')

local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local ContentProvider = game:GetService("ContentProvider")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local Http = require(ShellModules:FindFirstChild('Http'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))

local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local PopupText = require(ShellModules:FindFirstChild('PopupText'))
local PurchasePackagePrompt = require(ShellModules:FindFirstChild('PurchasePackagePrompt'))

local BaseTile = require(ShellModules:FindFirstChild('BaseTile'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local ACTIVE_AVATAR_BACKGROUND_COLOR = Color3.new(45 / 255, 96 / 255, 128 / 255)
local INACTIVE_AVATAR_BACKGROUND_COLOR = Color3.new(106 / 255, 120 / 255, 129 / 255)

local function createAvatarInfoContainer(packageInfo)
	local this = BaseTile()
	local focused = false

	local packageName = packageInfo:GetFullName()

	local function wearPackageAsync()
		if packageInfo:IsOwned() and not packageInfo:IsWearing() then

			local result = packageInfo:WearAsync()

			if result and result['success'] == true then
				this:UpdateEquipButton()
			else
				local err = Errors.PackageEquip['Default']
				ScreenManager:OpenScreen(ErrorOverlayModule(err), false)
			end

		end
	end

	local function buyPackageAsync()
		local newPurchasePrompt = PurchasePackagePrompt(packageInfo)
		ScreenManager:OpenScreen(newPurchasePrompt, false)
		newPurchasePrompt:FadeInBackground()
		spawn(function()
			local didPurchase = newPurchasePrompt:ResultAsync()
			if didPurchase then
				SoundManager:Play('PurchaseSuccess')
				wearPackageAsync()
			end
		end)
	end

	local PriceText = Utility.Create'TextLabel'
	{
		Name = 'PriceText';
		Text = '';
		Size = UDim2.new(1, 0, 0, 36);
		Position = UDim2.new(0, 0, 0, 0);
		TextColor3 = GlobalSettings.BlackTextColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.DescriptionSize;
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.PriceLabelColor;
		ZIndex = 2;
		Visible = false;
		Parent = this.AvatarItemContainer;
	};

	local PromoText = Utility.Create'TextLabel'
	{
		Name = 'PromoText';
		Text = '';
		Size = UDim2.new(1, 0, 0, 36);
		Position = UDim2.new(0, 0, 0, 0);
		TextColor3 = GlobalSettings.WhiteTextColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.DescriptionSize;
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.PromoLabelColor;
		ZIndex = 2;
		Visible = false;
		Parent = this.AvatarItemContainer;
	};

	function this:UpdatePriceText()
		local newText = ""
		local price = packageInfo:GetRobuxPrice()
		if price == 0 then
			newText = Utility.Upper(Strings:LocalizedString('FreeWord'))
		elseif price then
			newText = "R$ " .. Utility.FormatNumberString(price)
		end

		PriceText.Text = newText
		local priceTextSize = TextService:GetTextSize(PriceText.Text, Utility.ConvertFontSizeEnumToInt(PriceText.FontSize), PriceText.Font, Vector2.new())
		PriceText.Size = UDim2.new(0, priceTextSize.X + 28, 0, 36)
		PriceText.AnchorPoint = Vector2.new(1, 0)
		PriceText.Position = UDim2.new(1, -6, 0, 6)
		PriceText.Visible = price ~= nil and not packageInfo:IsOwned()
	end

	function this:UpdatePromoText()
		if not packageInfo:IsOwned() then
			local saleIdStr = Utility.GetFastVariable("XboxSaleAvatarPackageIds")
			if type(saleIdStr) == "string" and saleIdStr ~= '' then
				for saleId in string.gmatch(saleIdStr, '([^;]+)') do
					if tonumber(saleId) ~= nil and tonumber(saleId) == tonumber(packageInfo:GetAssetId()) then  --If the package is on sale
						PromoText.Text = "SALE!"
						local promoTextSize = TextService:GetTextSize(PromoText.Text, Utility.ConvertFontSizeEnumToInt(PromoText.FontSize), PromoText.Font, Vector2.new())
						PromoText.Size = UDim2.new(0, promoTextSize.X + 28, 0, 36)
						PromoText.AnchorPoint = Vector2.new(1, 0)
						PromoText.Position = UDim2.new(1, -6, 0, 42)
						PromoText.Visible = true
						break
					end
				end
			end
		else
			PromoText.Visible = false
		end
	end

	if packageInfo:GetAssetId() then
		this:SetImage(Http.GetThumbnailUrlForAsset(packageInfo:GetAssetId()))
	else
		--TODO: show a no package image?
	end


	this:ColorizeImage(packageInfo:IsOwned() and 1 or 0, 0)
	this:SetPopupText(packageInfo:GetName())

	function this:GetAssetId()
		return packageInfo:GetAssetId()
	end

	function this:GetPackageInfo()
		return packageInfo
	end

	function this:UpdateOwnership()
		local ownsAsset = packageInfo:IsOwned()
		self:SetActive(ownsAsset)
		self:ColorizeImage(ownsAsset and 1 or 0, 0)
		self:UpdateEquipButton()
		self:UpdatePriceText()
		--Added for promo label
		self:UpdatePromoText()
	end

	function this:UpdateEquipButton()
		self.EquippedCheckmark.Visible = packageInfo:IsWearing()
	end

	local selectDebounce = false
	function this:Select()
		if selectDebounce then return false end
		local result = false
		if packageInfo:IsOwned() and not packageInfo:IsWearing() then
			selectDebounce = true
			spawn(function()
				wearPackageAsync()
				selectDebounce = false
			end)
			result = true
		end
		return result
	end

	function this:OnClick()
		buyPackageAsync()
	end

	local isWearingConn = nil
	local ownershipChangedCn = nil
	local baseShow = this.Show
	function this:Show()
		baseShow(self)
		Utility.DisconnectEvent(isWearingConn)
		packageInfo.IsWearingChanged:connect(function()self:UpdateEquipButton() end)
		Utility.DisconnectEvent(ownershipChangedCn)
		ownershipChangedCn = packageInfo.OwnershipChanged:connect(function()
			self:UpdateOwnership()
		end)
		self:UpdateEquipButton()

		self:UpdateOwnership()
	end

	local baseHide = this.Hide
	function this:Hide()
		baseHide(self)
		isWearingConn = Utility.DisconnectEvent(isWearingConn)
		ownershipChangedCn = Utility.DisconnectEvent(ownershipChangedCn)
	end

	local baseFocus = this.Focus
	local avatarItemClickConn = nil

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('AvatarTileId');
			AssetId = packageInfo:GetAssetId();
			IsOwned = packageInfo:IsOwned();
		}
	end

	function this:Focus()
		baseFocus(self)
		focused = true

		Utility.DisconnectEvent(avatarItemClickConn)
		avatarItemClickConn = self.AvatarItemContainer.MouseButton1Click:connect(function()
			self:OnClick()
		end)

		self:UpdateEquipButton()

		spawn(function()
			wait(0.17)
			if focused then
				if not packageInfo:IsOwned() then
					self:ColorizeImage(1)
				end
			end
		end)
	end

	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		focused = false
		avatarItemClickConn = Utility.DisconnectEvent(avatarItemClickConn)

		-- Decolorize unowned packages
		if not packageInfo:IsOwned() then
			self:ColorizeImage(0)
		end
	end

	return this
end

return createAvatarInfoContainer
