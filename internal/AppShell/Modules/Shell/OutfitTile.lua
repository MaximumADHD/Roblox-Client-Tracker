--[[
			// OutfitTile.lua

			// Created by Kip Turner
			// Copyright Roblox 2015
]]


local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")


local Utility = require(ShellModules:FindFirstChild('Utility'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))


local BaseTile = require(ShellModules:FindFirstChild('BaseTile'))


local function createOutfitTileContainer(outfitData)
	local this = BaseTile()

	local function wearOutfitAsync()
		local result = outfitData:WearAsync()

		-- if result and result['success'] == true then
		-- else
		-- 	local err = Errors.OutfitEquip['Default']
		-- 	ScreenManager:OpenScreen(ErrorOverlayModule(err), false)
		-- end
	end

	local thumbnailLoader = ThumbnailLoader:Create(this.AvatarImage, outfitData:GetOutfitId(), ThumbnailLoader.Sizes.Medium, ThumbnailLoader.AssetType.Outfit, true)
	spawn(function()
		thumbnailLoader:LoadAsync(false, true)
	end)

	this:SetPopupText(outfitData:GetName())

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('OutfitTileId');
			AssetId = outfitData:GetOutfitId();
		}
	end

	function this:UpdateEquipButton()
		self.EquippedCheckmark.Visible = outfitData:IsWearing()
	end

	function this:GetPackageInfo()
		return outfitData
	end

	local selectDebounce = false
	function this:Select()
		if selectDebounce then return false end
		selectDebounce = true
		spawn(function()
			wearOutfitAsync()
			selectDebounce = false
		end)
		return true
	end


	local isWearingConn = nil
	local baseShow = this.Show
	function this:Show()
		baseShow(self)
		self:SetActive(true)
		Utility.DisconnectEvent(isWearingConn)
		isWearingConn = outfitData.IsWearingChanged:connect(function() self:UpdateEquipButton() end)
	end

	local baseHide = this.Hide
	function this:Hide()
		baseHide(self)
		isWearingConn = Utility.DisconnectEvent(isWearingConn)
	end

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)

		-- ContextActionService:BindCoreAction("WearSelectedOutfitItem",
		-- function(actionName, inputState, inputObject)
		-- 	if inputState == Enum.UserInputState.End then
		-- 		SoundManager:Play('ButtonPress')
		-- 		wearOutfitAsync()
		-- 	end
		-- end,
		-- false,
		-- Enum.KeyCode.ButtonX)
	end

	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		-- ContextActionService:UnbindCoreAction("WearSelectedOutfitItem")
	end

	return this
end

return createOutfitTileContainer
