--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)

local Components = script.Parent
local EmotesModules = Components.Parent
local Actions = EmotesModules.Actions
local Thunks = EmotesModules.Thunks

local HideMenu = require(Actions.HideMenu)
local SetLayout = require(Actions.SetLayout)
local ShowError = require(Actions.ShowError)
local HideError = require(Actions.HideError)

local OpenMenu = require(Thunks.OpenMenu)

local EmotesWheel = require(Components.EmotesWheel)
local EmotesList = require(Components.EmotesList)
local ErrorMessage = require(Components.ErrorMessage)

local Constants = require(EmotesModules.Constants)

local CoreScriptModules = EmotesModules.Parent
local RobloxTranslator = require(CoreScriptModules.RobloxTranslator)

local GetFFlagNewEmotesInGame = require(RobloxGui.Modules.Flags.GetFFlagNewEmotesInGame)
local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

local EmotesMenu = Roact.PureComponent:extend("EmotesMenu")

local KEYBINDS_PRIORITY = Enum.ContextActionPriority.High.Value

local FFlagEmotesSelectedCoreObjectError = game:DefineFastFlag("EmotesSelectedCoreObjectError", false)

local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")

function EmotesMenu:init()
	self.savedSelectedCoreObject = nil
	self.savedSelectedObject = nil
end

function EmotesMenu:displayVisitShopMessage()
	local locale = self.props.locale
	local text = RobloxTranslator:FormatByKeyForLocale(Constants.LocalizationKeys.VisitShopToGetEmotes, locale)
	self.props.showError(text)
	delay(Constants.ErrorDisplayTimeSeconds, function()
		self.props.hideError()
	end)
end

function EmotesMenu:bindActions()
	local function toggleMenuFunc(actionName, inputState, inputObj)
		if GuiService.MenuIsOpen then
			return Enum.ContextActionResult.Pass
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift) then
			return Enum.ContextActionResult.Pass
		end

		if inputState == Enum.UserInputState.Begin then
			if self.props.displayOptions.menuVisible then
				self.props.hideMenu()
			else
				if GetFFlagNewEmotesInGame() then
					if not Cryo.isEmpty(self.props.emotesInfo) then
						self.props.openMenu()
					else
						self:displayVisitShopMessage()
					end
				else
					self.props.openMenu()
				end
			end
		end

		if GetFFlagNewEmotesInGame() then
			return Enum.ContextActionResult.Sink
		else
			return nil
		end
	end

	ContextActionService:BindAction(Constants.ToggleMenuAction, toggleMenuFunc, --[[createTouchButton = ]] false,
									Constants.EmoteMenuOpenKey)

	if GetFFlagNewEmotesInGame() then
		self:bindOpenMenuAction()
	end
end

if GetFFlagNewEmotesInGame() then
	function EmotesMenu:bindOpenMenuAction()
		local function openMenuFunc(actionName, inputState, inputObj)
			if GuiService.MenuIsOpen then
				return Enum.ContextActionResult.Pass
			end

			if inputState == Enum.UserInputState.Begin then
				local emotesInfoIsEmpty = Cryo.isEmpty(self.props.emotesInfo)
				if not self.props.displayOptions.menuVisible and not emotesInfoIsEmpty then
					self.props.openMenu()
				elseif emotesInfoIsEmpty then
					self:displayVisitShopMessage()
				end
			end

			return Enum.ContextActionResult.Sink
		end

		ContextActionService:BindActionAtPriority(Constants.OpenMenuAction, openMenuFunc, --[[createTouchButton = ]] false,
			KEYBINDS_PRIORITY, Constants.EmoteMenuOpenButton)
	end
end

function EmotesMenu:unbindActions()
	ContextActionService:UnbindAction(Constants.ToggleMenuAction)
	if GetFFlagNewEmotesInGame() then
		ContextActionService:UnbindAction(Constants.OpenMenuAction)
	end
end

function EmotesMenu:saveSelectedObject()
	self.savedSelectedCoreObject = GuiService.SelectedCoreObject
	GuiService.SelectedCoreObject = nil
	self.savedSelectedObject = GuiService.SelectedObject
	GuiService.SelectedObject = nil
end

function EmotesMenu:resetSelectedObject()
	if GuiService.SelectedCoreObject == nil then
		-- We want to reset the selected object if the saved version is either nil or a descendant of CoreGui
		local isValid = (not FFlagEmotesSelectedCoreObjectError or self.savedSelectedCoreObject == nil or self.savedSelectedCoreObject:IsDescendantOf(CoreGui))
		if isValid then
			GuiService.SelectedCoreObject = self.savedSelectedCoreObject
		end
	end
	if GuiService.SelectedObject == nil then
		-- We want to reset the selected object if the saved version is either nil or a descendant of PlayerGui
		local isValid = (not FFlagEmotesSelectedCoreObjectError or self.savedSelectedObject == nil or self.savedSelectedObject:IsDescendantOf(PlayerGui))
		if isValid then
			GuiService.SelectedObject = self.savedSelectedObject
		end
	end
end

function EmotesMenu:viewPortSizeChanged()
	if self.props.layout == Constants.Layout.TenFoot then
		return
	end

	local camera = Workspace.CurrentCamera
	if not camera then
		return
	end

	local viewportSize = camera.ViewportSize
	if viewportSize == Vector2.new(1, 1) then
		-- Viewport is not initialized yet
		return
	end

	local layout = Constants.Layout.Large

	local smallScreenX = viewportSize.X < Constants.SmallScreenMaxSize.X
	local smallScreenY = viewportSize.Y < Constants.SmallScreenMaxSize.Y

	if smallScreenX or smallScreenY then
		layout = Constants.Layout.Small
	end

	self.props.setLayout(layout)
end

function EmotesMenu:currentCameraChanged()
	if self.viewportSizeChangedConn then
		self.viewportSizeChangedConn:Disconnect()
	end

	local camera = Workspace.CurrentCamera
	if camera then
		self.viewportSizeChangedConn = camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			self:viewPortSizeChanged()
		end)
		self:viewPortSizeChanged()
	end
end

function EmotesMenu:didMount()
	self.currentCameraChangedConn = Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		self:currentCameraChanged()
	end)
	self:currentCameraChanged()

	self.menuOpenedConn = GuiService.MenuOpened:Connect(function()
		if self.props.displayOptions.menuVisible and not (EngineFeatureEnableVRUpdate3 and VRService.VREnabled) then
			self.props.hideMenu()
			if EnableInGameMenuV3() then
				self.shouldResumeEmotes = true
			end
		end
	end)

	if EnableInGameMenuV3() then
		self.menuClosedConn = GuiService.MenuClosed:Connect(function()
			if self.shouldResumeEmotes then
				self.props.openMenu()
				self.shouldResumeEmotes = false
			end
		end)
	end

	self.inputOutsideMenuConn = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if gameProcessedEvent then
			return
		end

		if not self.props.displayOptions.menuVisible then
			return
		end

		local inputType = input.UserInputType
		if not GetFFlagNewEmotesInGame() and
			(inputType == Enum.UserInputType.MouseButton1 or inputType == Enum.UserInputType.Touch) and
			  not (EngineFeatureEnableVRUpdate3 and VRService.VREnabled) then
			-- Don't close the emotes menu when interacting with the game outside of the menu with
			-- the new emotes flag on
			self.props.hideMenu()
		end
	end)

	self:bindActions()
end

function EmotesMenu:willUnmount()
	self.currentCameraChangedConn:Disconnect()
	self.viewportSizeChangedConn:Disconnect()
	self.menuOpenedConn:Disconnect()
	self.inputOutsideMenuConn:Disconnect()

	self.currentCameraChangedConn = nil
	self.viewportSizeChangedConn = nil
	self.menuOpenedConn = nil
	if EnableInGameMenuV3() then
		self.menuClosedConn:Disconnect()
		self.menuClosedConn = nil
		self.shouldResumeEmotes = false
	end
	self.inputOutsideMenuConn = nil

	self:unbindActions()
end

function EmotesMenu:didUpdate(prevProps, prevState)
	if self.props.displayOptions.menuVisible ~= prevProps.displayOptions.menuVisible then
		if self.props.displayOptions.menuVisible then
			self:saveSelectedObject()
			if GetFFlagNewEmotesInGame() then
				ContextActionService:UnbindAction(Constants.OpenMenuAction)
			end
		else
			self:resetSelectedObject()
			if GetFFlagNewEmotesInGame() then
				self:bindOpenMenuAction()
			end
		end
	end
end

function EmotesMenu:render()
	local LayoutConstants = Constants.Layouts[self.props.layout]
	local guiInset = self.props.displayOptions.guiInset

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, -guiInset),
		Size = UDim2.new(1, 0, 1, guiInset),
		ZIndex = Constants.EmotesMenuZIndex,
		AutoLocalize = false,
	}, {
		Main = not GetFFlagNewEmotesInGame() and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = Constants.ScreenAvailable,
			BackgroundTransparency = 1,
		}, {
			AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1,
			}),

			SizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = LayoutConstants.EmotesWheelMinSize,
				MaxSize = LayoutConstants.EmotesWheelMaxSize,
			}),

			EmotesWheel = Roact.createElement(EmotesWheel),
		}),

		EmotesList = GetFFlagNewEmotesInGame() and Roact.createElement(EmotesList),

		ErrorMessage = Roact.createElement(ErrorMessage),
	})
end

local function mapStateToProps(state)
	return {
		displayOptions = state.displayOptions,
		emotesInfo = state.emotesPage.emotesInfo,
		layout = state.layout,
		locale = state.locale,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		openMenu = function()
			return dispatch(OpenMenu())
		end,

		hideMenu = function()
			return dispatch(HideMenu())
		end,

		setLayout = function(layout)
			return dispatch(SetLayout(layout))
		end,

		showError = function(text)
			return dispatch(ShowError(text))
		end,

		hideError = function()
			return dispatch(HideError())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmotesMenu)
