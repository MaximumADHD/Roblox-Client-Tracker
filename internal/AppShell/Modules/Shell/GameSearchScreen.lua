--[[
				// GameSearchScreen.lua

				// Creates a screen for the results of a game search
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local SortsData = require(ShellModules:FindFirstChild('SortsData'))

local BaseCarouselScreen = require(ShellModules:FindFirstChild('BaseCarouselScreen'))
local HintActionView = require(ShellModules:FindFirstChild('HintActionView'))

local function CreateGameSearchScreen(searchKeyword)
	local this = BaseCarouselScreen()

	local currentSearchWord = searchKeyword
	local keyboardClosedCn = nil
	local searchGameCollection = SortsData:GetGameSearchSort(currentSearchWord)

	local function setTitle(searchWord)
		this:SetTitle(string.format(Strings:LocalizedString("SearchingForPhrase"), searchWord))
	end
	setTitle(currentSearchWord)
	this:LoadGameCollection(searchGameCollection)

     -- Hint Action View
     local hintActionView = HintActionView(this.Container, "OpenSearchKeyboard")
     hintActionView:SetImage('rbxasset://textures/ui/Shell/ButtonIcons/XButton.png')
     hintActionView:SetText(Strings:LocalizedString("SearchWord"))

	local function onKeyboardClosed(searchWord)
		searchWord = Utility.SpaceNormalizeString(searchWord)
		if #searchWord > 0 and searchWord ~= currentSearchWord then
			currentSearchWord = searchWord
			setTitle(currentSearchWord)
			searchGameCollection = SortsData:GetGameSearchSort(currentSearchWord)
			this:LoadGameCollection(searchGameCollection)
		end
	end

	local seenYButtonPressed = false
	local function onSearchGames(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			seenYButtonPressed = true
		elseif inputState == Enum.UserInputState.End and seenYButtonPressed then
			if PlatformService then
				PlatformService:ShowKeyboard(Utility.Upper(Strings:LocalizedString("SearchGamesPhrase")), "", currentSearchWord, Enum.XboxKeyBoardType.Default)
			end
			seenYButtonPressed = false
		end
	end

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('GameSearchScreenId');
			Title = currentSearchWord;
		}
	end

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		hintActionView:BindAction(onSearchGames, Enum.KeyCode.ButtonX)
		keyboardClosedConn = Utility.DisconnectEvent(keyboardClosedConn)
		if PlatformService then
			keyboardClosedConn = PlatformService.KeyboardClosed:connect(onKeyboardClosed)
		end
	end

	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		hintActionView:UnbindAction()
		keyboardClosedConn = Utility.DisconnectEvent(keyboardClosedConn)
	end

	return this
end

return CreateGameSearchScreen
