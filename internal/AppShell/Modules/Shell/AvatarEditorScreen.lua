
local CoreGui = game:GetService('CoreGui')
local GuiRoot = CoreGui:FindFirstChild('RobloxGui')
local Modules = GuiRoot:FindFirstChild('Modules')
local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

local ShellModules = Modules:FindFirstChild('Shell')
local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local CameraManager = require(ShellModules:FindFirstChild('CameraManager'))
local CreateAvatarEditorView = require(ShellModules:FindFirstChild('AvatarEditorView'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local AppContainer = require(ShellModules.AppContainer)

local TitleSafeContainer = AppContainer.TitleSafeContainer

local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)

local AvatarEditorView = nil
local AvatarEditorReconstruct = false

local function createAvatarEditorScreen()
	local this = BaseScreen()
	this.fixPosition = true
	local view = this.GetView()
	view.BackImage.ZIndex = 2
	view.BackText.ZIndex = 2
	view.TitleText.ZIndex = 2

	local adjustPos = UDim2.new(0, TitleSafeContainer.AbsolutePosition.X, 0, TitleSafeContainer.AbsolutePosition.Y)
	local backImagePosition = view.BackImage.Position + adjustPos
	local backTextPosition = view.BackText.Position + adjustPos
	local titleTextPosition = view.TitleText.Position + adjustPos

	view.BackImage.Position = backImagePosition
	view.BackText.Position = backTextPosition
	view.TitleText.Position = titleTextPosition

	--Reconstruct the AvatarEditorView if user switched/assets purchased
	if AvatarEditorReconstruct and AvatarEditorView then
		AvatarEditorView:Destruct()
		AvatarEditorView = nil
		AvatarEditorReconstruct = false
	end
	AvatarEditorView = AvatarEditorView or CreateAvatarEditorView()

	local storeChangedCn = nil
	local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local tweenPositionOffset = UDim2.new(0, -400, 0, 0)

	local parentShow = this.Show
	function this:Show()
		parentShow(self)
		CameraManager:SwitchToAvatarEditor()
		AvatarEditorView:Show(this.Container)
	end

	local parentHide = this.Hide
	function this:Hide()
		AvatarEditorView:Hide()
		CameraManager:SwitchToFlyThrough()
		parentHide(self)
	end

	local parentFocus = this.Focus
	function this:Focus()
		parentFocus(self)
		storeChangedCn = AppState.Store.Changed:Connect(function(newState, oldState)
			if newState.FullView ~= oldState.FullView then
				if newState.FullView then
					TweenController(view.BackImage, tweenInfo, { Position = backImagePosition + tweenPositionOffset })
					TweenController(view.BackText, tweenInfo, { Position = backTextPosition + tweenPositionOffset })
					TweenController(view.TitleText, tweenInfo, { Position = titleTextPosition + tweenPositionOffset })
				else
					TweenController(view.BackImage, tweenInfo, { Position = backImagePosition })
					TweenController(view.BackText, tweenInfo, { Position = backTextPosition })
					TweenController(view.TitleText, tweenInfo, { Position = titleTextPosition })
				end
			end
		end)
		AvatarEditorView:Focus()
	end

	local parentRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		AvatarEditorView:RemoveFocus()
		Utilities.disconnectEvent(storeChangedCn)
		parentRemoveFocus(self)

		--Don't save selectedObject, as we already saved it in AvatarEditorView
		self.SavedSelectedObject = nil
	end

	local parentSetParent = this.SetParent
	function this:SetParent(newParent)
		parentSetParent(self, newParent)
	end

	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('AvatarEditorScreenId')}
	end

	return this
end

local function OnUserAccountChanged()
	AvatarEditorReconstruct = true
	EventHub:removeEventListener(EventHub.Notifications["AvatarPurchaseSuccess"], "AvatarEditorScreen")
	EventHub:addEventListener(EventHub.Notifications["AvatarPurchaseSuccess"], "AvatarEditorScreen",
		function()
			AvatarEditorReconstruct = true
		end)
end

EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "AvatarEditorScreen", OnUserAccountChanged)

local function OnUserSignOut()
	AvatarEditorReconstruct = true
	EventHub:removeEventListener(EventHub.Notifications["AvatarPurchaseSuccess"], "AvatarEditorScreen")
end

if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(OnUserSignOut)
end

return createAvatarEditorScreen
