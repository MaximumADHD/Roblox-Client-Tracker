--[[
			// BaseOverlay.lua

			// Implements a base overlay for overlay screens.
			// Any other overlay classes should require this module
			// first, then implement its own logic
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local ContextActionService = game:GetService("ContextActionService")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local FADE_TIME = 0.25

local MOCKUP_WIDTH = 1920
local MOCKUP_HEIGHT = 1080
local CONTENT_WIDTH = 1920
local CONTENT_HEIGHT = 690

local CONTENT_POSITION = Vector2.new(0, 225)

local createBaseOverlay = function()
	local this = {}

	local OVERLAY_TRANSPARENCY = GlobalSettings.ModalBackgroundTransparency

	this.RightAlign = 776

	local modalOverlay = Utility.Create'Frame'
	{
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BackgroundColor3 = Color3.new();
		BorderSizePixel = 0;
	}
	local container = Utility.Create'Frame'
	{
		Name = "Container";
		Size = UDim2.new(CONTENT_WIDTH/MOCKUP_WIDTH, 0, CONTENT_HEIGHT/MOCKUP_HEIGHT, 0);
		Position = UDim2.new(CONTENT_POSITION.x/MOCKUP_WIDTH, 0, CONTENT_POSITION.y/MOCKUP_HEIGHT, 0);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.OverlayColor;
		Parent = modalOverlay;
	}
	local imageContainer = Utility.Create'Frame'
	{
		Name = "ImageContainer";
		Size = UDim2.new(0, 576, 0, 642);
		Position = UDim2.new(0, 100, 0.5, -321);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		BackgroundColor3 = Color3.new();
		ZIndex = 2;
		Parent = container;
	}
	local imageDropShadow = AssetManager.CreateShadow(1)
	imageDropShadow.ImageTransparency = 1
	imageDropShadow.Parent = imageContainer

	this.Container = container

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('BaseOverlayId')}
	end

	function this:SetImageBackgroundTransparency(value)
		imageContainer.BackgroundTransparency = value
		-- if the image has any transparency we don't show drop shadow since it will clip
		if value > 0 then
			imageDropShadow.ImageTransparency = 1
		else
			imageDropShadow.ImageTransparency = 0
		end
	end

	function this:SetImageBackgroundColor(value)
		imageContainer.BackgroundColor3 = value
	end

	function this:SetImage(guiImage)
		guiImage.AnchorPoint = Vector2.new(0.5, 0.5);
		guiImage.Position = UDim2.new(0.5, 0, 0.5, 0);
		guiImage.ZIndex = imageContainer.ZIndex
		guiImage.Parent = imageContainer
	end

	function this:GetOverlaySound()
		return 'OverlayOpen'
	end

	function this:GetPriority()
		return GlobalSettings.OverlayPriority
	end

	function this:Show()
		modalOverlay.Parent = ScreenManager:GetScreenGuiByPriority(self:GetPriority())
		local overlayTweenIn = Utility.PropertyTweener(modalOverlay, "BackgroundTransparency",
			1, OVERLAY_TRANSPARENCY, FADE_TIME, Utility.EaseInOutQuad, nil)
		SoundManager:Play(self:GetOverlaySound())

		-- Show the modalOverlay when we are shown
		modalOverlay.Visible = true
	end

	function this:Hide()
		local overlayTweenOut = Utility.PropertyTweener(modalOverlay, "BackgroundTransparency",
			OVERLAY_TRANSPARENCY, 1, FADE_TIME, Utility.EaseInOutQuad, true,
			function()
				modalOverlay:Destroy()
			end)
		container.Parent = nil
		container:Destroy()
	end

	function this:Focus()
		ContextActionService:BindCoreAction("CloseOverlay",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					ScreenManager:CloseCurrent()
				end
			end,
		false, Enum.KeyCode.ButtonB)
		GuiService:AddSelectionParent("Overlay", container)

		-- Don't show overlays when not focused
		modalOverlay.Visible = true
	end

	function this:RemoveFocus()
		ContextActionService:UnbindCoreAction("CloseOverlay")
		GuiService:RemoveSelectionGroup("Overlay")

		-- Don't show overlays when not focused
		modalOverlay.Visible = false
	end

	function this:Close()
		if ScreenManager:GetTopScreen() == self then
			SoundManager:Play('ButtonPress')
			ScreenManager:CloseCurrent()
			return true
		end
		return false
	end

	return this
end

return createBaseOverlay
