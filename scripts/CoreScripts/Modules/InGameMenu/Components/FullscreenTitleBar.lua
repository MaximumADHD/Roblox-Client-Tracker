local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local GuiService = game:GetService("GuiService")
local AppStorageService = game:GetService("AppStorageService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local FullscreenTitleBarComponent = UIBlox.App.Bar.FullscreenTitleBar

local InGameMenu = script.Parent.Parent
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local OpenEducationalPopup = require(InGameMenu.Thunks.OpenEducationalPopup)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)

local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local UserLocalStore = require(InGameMenu.Utility.UserLocalStore)

local GetFFlagPlayerSpecificPopupCounter = require(InGameMenu.Flags.GetFFlagPlayerSpecificPopupCounter)

local DISAPPEAR_DELAY = 0.5

local FullscreenTitleBar = Roact.PureComponent:extend("FullscreenTitleBar")

FullscreenTitleBar.validateProps = t.strictInterface({
	titleText = t.optional(t.string),
	displayOrder = t.integer,
	isMenuOpen = t.boolean,
	isEducationalPopupEnabled = t.boolean,
	maxDisplayCount = t.integer,
	openEducationalPopup = t.callback,
	startLeavingGame = t.callback,
})

FullscreenTitleBar.defaultProps = {
	titleText = "Roblox",
}

function FullscreenTitleBar:init()
	self:setState({
		isTriggered = false,
		fullscreenEnabled = UserGameSettings:InFullScreen(),
	})

	self.onFullscreenChanged = function(newFullscreenStatus)
		self:setState({
			fullscreenEnabled = newFullscreenStatus,
			isTriggered = false,
		})
	end

	self.triggerTitleBar = function()
		if not self.state.isTriggered then
			self:setState({
				isTriggered = true,
			})
		end
	end

	self.hideTitleBar = function()
		if self.state.isTriggered then
			self:setState({
				isTriggered = false,
			})
		end
	end

	self.onMouseLeave = function()
		delay(DISAPPEAR_DELAY, self.hideTitleBar)
	end

	self.exitFullscreen = function()
		self.hideTitleBar()
		GuiService:ToggleFullscreen()
	end

	self.closeRoblox = function()
		self.hideTitleBar()

		if self.props.isEducationalPopupEnabled then
			local localStore = AppStorageService
			if GetFFlagPlayerSpecificPopupCounter() then
				localStore = UserLocalStore.new()
			end
			self.props.openEducationalPopup(GuiService, localStore, self.props.maxDisplayCount)
		else
			self.props.startLeavingGame()
		end
	end
end

function FullscreenTitleBar:render()
	return Roact.createFragment({
		FullscreenChangedEvent = Roact.createElement(ExternalEventConnection, {
			event = UserGameSettings.FullscreenChanged,
			callback = self.onFullscreenChanged,
		}),
		FullscreenTitleBar = Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			InGameFullscreenTitleBarScreen = Roact.createElement("ScreenGui", {
				Enabled = self.state.fullscreenEnabled,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = self.props.displayOrder,
			}, {
				TriggerArea = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 1),
					[Roact.Event.MouseEnter] = self.triggerTitleBar,
				}),
				Bar = Roact.createElement(FullscreenTitleBarComponent, {
					title = self.props.titleText,
					isTriggered = self.state.isTriggered,
					onDisappear = self.onMouseLeave,
					exitFullscreen = self.exitFullscreen,
					closeRoblox = self.closeRoblox,
				}),
			}),
		})
	})
end

function FullscreenTitleBar:didUpdate(prevProps)
	if not prevProps.isMenuOpen and self.props.isMenuOpen then
		self.hideTitleBar()
	end
end

FullscreenTitleBar = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
		maxDisplayCount = appPolicy.educationalPopupMaxDisplayCount(),
	}
end)(FullscreenTitleBar)

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			isMenuOpen = state.isMenuOpen,
		}
	end,
	function(dispatch)
		return {
			openEducationalPopup = function(guiService, appStorageService, maxCount)
				return dispatch(OpenEducationalPopup(guiService, appStorageService, maxCount))
			end,
			startLeavingGame = function()
				dispatch(StartLeavingGame())
			end,
		}
	end
)(FullscreenTitleBar)
