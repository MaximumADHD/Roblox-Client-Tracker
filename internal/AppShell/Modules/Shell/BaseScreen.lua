--[[
			// BaseScreen.lua

			// Creates a base screen with breadcrumbs and title. Do not use for a pane/tab
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService('GuiService')

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createBaseScreen(usingMVC)
	local this = {}

	local inFocus = false
	local isShown = false
	local defaultSelectionObject = nil
	local lastParent = nil

	local BackText = ""

	this.view = nil
	this.fixPosition = false

	function this:GetBackText()
		return BackText
	end

	local function GetView()
		if not this.view then
			local Templates = ShellModules:FindFirstChild("Templates")
			local BaseScreen = require(Templates:FindFirstChild('BaseScreen'))
			this.view = BaseScreen(this)
		end
		return this.view
	end

	if not usingMVC then
		this.Container = GetView().Container
	end

	local function CloseScreen()
		if inFocus then
			ScreenManager:CloseCurrent()
			this:Destroy()
		end
	end

	--[[ Public API ]]--

	function this:GetView()
		return GetView()
	end
	function this:GetTitle()
		return GetView().TitleText.Text
	end
	function this:SetTitle(newTitle)
		GetView().TitleText.Text = Utility.Upper(newTitle)
	end
	function this:SetTitleZIndex(newZIndex)
		-- this needs some explantion...
		-- we recently changed the way z ordering works. In the old system if you had a text label and a image at the
		-- same zindex the text would render on top of the image. This is no longer the case. So in some cases
		-- we need to render this text last, but as it's a base class, it becomes hard to reorder the child add order.
		-- Instead I'm opting to allow changing the zindex
		GetView().TitleText.ZIndex = newZIndex
	end
	function this:SetBackText(newText)
		BackText = newText
		GetView():SetBackText(BackText)
	end
	function this:GetDefaultSelectionObject()
		return defaultSelectionObject
	end
	function this:Destroy()
		GetView().Container:Destroy()
		self = nil
	end

	--[[ Public API - Screen Management ]]--
	function this:SetPosition(newPosition)
		GetView().Container.Position = newPosition
	end
	function this:SetParent(newParent)
		lastParent = newParent
		GetView().Container.Parent = newParent
	end
	function this:GetName()
		return GetView().TitleText.Text
	end
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = GetView().TitleText.Text}
	end
	function this:IsFocused()
		return inFocus
	end

	-- View stuff --

	function this:ReloadView(newView)
		local currentView = this.view
		local currentViewIsShown = isShown
		local currentViewIsFocused = inFocus

		if currentView then
			if currentViewIsFocused then
				currentView:RemoveFocus()
			end
			if currentViewIsShown then
				currentView:Hide()
			end
		end
		if newView then
			if currentViewIsShown then
				newView:Show()
			end
			if currentViewIsFocused then
				newView:Focus()
			end
		end
		this.view = newView
	end

	function this:OnBackButtonClick()
		CloseScreen()
	end

	----------------

	function this:Show()
		isShown = true
		local prevScreen = ScreenManager:GetScreenBelow(self)
		if prevScreen and prevScreen.GetName then
			self:SetBackText(prevScreen:GetName())
		else
			self:SetBackText(Strings:LocalizedString("BackWord"))
		end

		GetView().Container.Parent = lastParent
		ScreenManager:DefaultCancelFade(self.TransitionTweens)
		if self.fixPosition then
			self.TransitionTweens = ScreenManager:FadeInSitu(GetView().Container)
		else
			self.TransitionTweens = ScreenManager:DefaultFadeIn(GetView().Container)
		end
		ScreenManager:PlayDefaultOpenSound()
	end
	function this:Hide()
		isShown = false
		GetView().Container.Parent = nil
		ScreenManager:DefaultCancelFade(self.TransitionTweens)
		self.TransitionTweens = nil
	end
	function this:Focus()
		inFocus = true
		if self.SavedSelectedObject and self.SavedSelectedObject:IsDescendantOf(GetView().Container) then
			Utility.SetSelectedCoreObject(self.SavedSelectedObject)
		else
			Utility.SetSelectedCoreObject(self:GetDefaultSelectionObject())
		end

		ContextActionService:BindCoreAction("ReturnFromScreen",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					CloseScreen()
				end
			end,
			false, Enum.KeyCode.ButtonB)
	end
	function this:RemoveFocus()
		inFocus = false
		local selectedObject = GuiService.SelectedCoreObject
		if selectedObject and selectedObject:IsDescendantOf(GetView().Container) then
			self.SavedSelectedObject = selectedObject
			Utility.SetSelectedCoreObject(nil)
		end
		ContextActionService:UnbindCoreAction("ReturnFromScreen")
	end

	return this
end

return createBaseScreen
