-- Written by Kip Turner, Copyright Roblox 2015

local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local UserInputService = game:GetService('UserInputService')

local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))

local ScreenManager = {}

local ScreenStack = {}
local ScreenToHideMap = {}

local ScreenGuis = {[1] = GuiRoot}

local function ContainsScreenInternal(screen)
	local foundScreenIndex = nil
	for i, otherScreen in pairs(ScreenStack) do
		if otherScreen == screen then
			foundScreenIndex = i
		end
	end

	return foundScreenIndex
end

local function GetScreenPriorityInternal(screen)
	local priority = GlobalSettings.DefaultPriority
	if screen.GetPriority ~= nil then
		priority = screen:GetPriority()
	end
	return priority
end

local function SetRBXEventStream_Screen(screen, status)
	if screen and type(screen.GetAnalyticsInfo) == "function" then
		local screenAnalyticsInfo = screen:GetAnalyticsInfo()
		if type(screenAnalyticsInfo) == "table" and screenAnalyticsInfo[Analytics.WidgetNames('WidgetId')] then
			screenAnalyticsInfo.Status = status
			Analytics.SetRBXEventStream("Widget",  screenAnalyticsInfo)
		end
	end
end

function ScreenManager:GetInsertIndexForScreen(screen)
	local screenPriority = GetScreenPriorityInternal(screen)
	local currentScreen = self:GetTopScreen()
	while currentScreen and GetScreenPriorityInternal(currentScreen) > screenPriority do
		currentScreen = self:GetScreenBelow(currentScreen)
	end
	if currentScreen then
		local currentScreenIndex = ContainsScreenInternal(currentScreen)
		if currentScreenIndex then
			return currentScreenIndex + 1
		end
	end
	return 1
end

function ScreenManager:GetGuiRoot()
	return GuiRoot
end

function ScreenManager:GetScreenGuiByPriority(priority)
	priority = math.max(1, priority)
	if not ScreenGuis[priority] then
		for i = 1, priority do
			if not ScreenGuis[i] then
				ScreenGuis[i] = Utility.Create'ScreenGui'
				{
					Name = 'AppShell' .. tostring(i);
					Parent = CoreGui;
				}
			end
		end
	end

	return ScreenGuis[priority]
end

-- TODO: handle race conditions for opening multiple screens
local openScreenEntryCount = 0
local openScreenExitCount = 0
function ScreenManager:OpenScreen(screen, hideCurrent)
	if openScreenEntryCount ~= openScreenExitCount then
		Utility.DebugLog("ScreenManager: OpenScreen Re-entry detected" , openScreenEntryCount, openScreenExitCount)
	end
	openScreenEntryCount = openScreenEntryCount + 1

	if hideCurrent == nil then
		hideCurrent = true
	end

	local currentScreen = self:GetTopScreen()
	local insertIndex = self:GetInsertIndexForScreen(screen)
	local isNewTop = insertIndex > #ScreenStack

	if not isNewTop then
		hideCurrent = false
	end

	if currentScreen ~= screen then
		local foundScreenIndex = ContainsScreenInternal(screen)

		if foundScreenIndex then
			table.remove(ScreenStack, foundScreenIndex)
		end

		if currentScreen then
			currentScreen:RemoveFocus()
			if hideCurrent then
				currentScreen:Hide()
			end
			ScreenToHideMap[currentScreen] = hideCurrent
		end

		table.insert(ScreenStack, insertIndex, screen)

		if isNewTop then
			if ScreenToHideMap[screen] ~= false then
				screen:Show()
				SetRBXEventStream_Screen(screen, "Show")
			end

			if screen == self:GetTopScreen() then
				screen:Focus()
				SetRBXEventStream_Screen(screen, "Focus")
			end
		else
			ScreenToHideMap[screen] = true
		end
	end

	openScreenExitCount = openScreenExitCount + 1
end

local closeCurrentEntryCount = 0
local closeCurrentExitCount = 0
function ScreenManager:CloseCurrent()
	if closeCurrentEntryCount ~= closeCurrentExitCount then
		Utility.DebugLog("ScreenManager: CloseScreen Re-entry detected" , closeCurrentEntryCount, closeCurrentExitCount)
	end
	closeCurrentEntryCount = closeCurrentEntryCount + 1

	local currentScreen = ScreenStack[#ScreenStack]
	local belowScreen = currentScreen and self:GetScreenBelow(currentScreen)
	if currentScreen then
		currentScreen:Hide()
		currentScreen:RemoveFocus()
		if currentScreen.ScreenRemoved then
			currentScreen:ScreenRemoved()
		end
		SetRBXEventStream_Screen(currentScreen, "Close")
		table.remove(ScreenStack, #ScreenStack)
		ScreenToHideMap[currentScreen] = nil
	end


	-- if belowScreen and belowScreen ~= self:GetTopScreen() then return end
	local newTop = belowScreen
	if newTop and newTop == self:GetTopScreen() then
		local showNewTop = (ScreenToHideMap[newTop] == true)
		-- spawn(function()
			if showNewTop then
				newTop:Show()
				SetRBXEventStream_Screen(newTop, "Show")
			end
			if newTop == self:GetTopScreen() then
				newTop:Focus()
				SetRBXEventStream_Screen(newTop, "Focus")
			end
		-- end)
	end
	closeCurrentExitCount = closeCurrentExitCount + 1
end

function ScreenManager:ContainsScreen(screen)
	local index = ContainsScreenInternal(screen)
	if index then
		return ScreenStack[index]
	end
	return nil
end

function ScreenManager:GetScreenBelow(screen)
	local thisScreenIndex = ContainsScreenInternal(screen)
	if thisScreenIndex then
		return ScreenStack[thisScreenIndex - 1]
	end
	return nil
end

function ScreenManager:GetTopScreen()
	return ScreenStack[#ScreenStack]
end


----- TWEENS -----

local function FadeInElement(element, tweeners)
	if element == nil then return end
	if element:IsA('ImageLabel') or element:IsA('ImageButton') then
		table.insert(tweeners, Utility.PropertyTweener(element, 'ImageTransparency', 1, element.ImageTransparency, 0.5, Utility.EaseOutQuad))
	end
	if element:IsA('GuiObject') then
		table.insert(tweeners, Utility.PropertyTweener(element, 'BackgroundTransparency', 1, element.BackgroundTransparency, 0.5, Utility.EaseOutQuad))
	end
	if element:IsA('TextLabel') or element:IsA('TextBox') or element:IsA('TextButton') then
		table.insert(tweeners, Utility.PropertyTweener(element, 'TextTransparency', 1, element.TextTransparency, 0.5, Utility.EaseOutQuad))
	end
	for _, child in pairs(element:GetChildren()) do
		FadeInElement(child, tweeners)
	end
end

function ScreenManager:FadeInSitu(guiObject)
	local tweeners = {}
	if guiObject then
		FadeInElement(guiObject, tweeners)
	end
	return tweeners
end

function ScreenManager:DefaultFadeIn(guiObject)
	local tweeners = {}

	if guiObject then
		table.insert(tweeners, Utility.PropertyTweener(guiObject, 'Position', guiObject.Position + UDim2.new(0.15, 0, 0, 0), guiObject.Position, 0.5,
			function(t,b,c,d)
				if t >= d then return b + c end
				t = t / d;
				local tComputed = t*(t-2)
				return -UDim2.new(c.X.Scale * tComputed, c.X.Offset * tComputed, c.Y.Scale * tComputed, c.Y.Offset * tComputed) + b
			end))

		FadeInElement(guiObject, tweeners)
	end

	return tweeners
end

function ScreenManager:DefaultCancelFade(tweens)
	if tweens then
		for _, tween in pairs(tweens) do
			tween:Finish()
		end
	end

	return nil
end
---------------

--------- SOUNDS ---------

function ScreenManager:PlayDefaultOpenSound()
	SoundManager:Play('ScreenChange')
end

----------------------------



return ScreenManager

