--!nonstrict
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
local Promise = InGameMenuDependencies.Promise
local FullscreenTitleBarComponent = UIBlox.App.Bar.FullscreenTitleBar

local InGameMenu = script.Parent.Parent
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local OpenEducationalPopup = require(InGameMenu.Thunks.OpenEducationalPopup)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)

local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local UserLocalStore = require(InGameMenu.Utility.UserLocalStore)

local GetFIntFullscreenTitleBarTriggerDelayMillis = require(InGameMenu.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis)
local GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount = require(InGameMenu.Flags.GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount)
local GetFFlagFullscreenTitleBarInjectGameServices = require(InGameMenu.Flags.GetFFlagFullscreenTitleBarInjectGameServices)
local GetFFlagFixFullscreenTitleBarPromiseCancel = require(InGameMenu.Flags.GetFFlagFixFullscreenTitleBarPromiseCancel)

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
	userGameSettings = t.optional(t.union(t.Instance, t.table)),
	guiService = t.optional(t.union(t.Instance, t.table)),
	appStorageService = t.optional(t.union(t.Instance, t.table)),
})

FullscreenTitleBar.defaultProps = {
	titleText = "Roblox",
	userGameSettings = UserGameSettings,
	guiService = GuiService,
	appStorageService = AppStorageService,
}

function FullscreenTitleBar:init()
	self.userGameSettings = GetFFlagFullscreenTitleBarInjectGameServices() and self.props.userGameSettings or UserGameSettings
	self.guiService = GetFFlagFullscreenTitleBarInjectGameServices() and self.props.guiService or GuiService
	self.appStorageService = GetFFlagFullscreenTitleBarInjectGameServices() and self.props.appStorageService or AppStorageService

	self:setState({
		isTriggered = false,
		fullscreenEnabled = self.userGameSettings:InFullScreen(),
	})

	self.onFullscreenChanged = function(newFullscreenStatus)
		self:setState({
			fullscreenEnabled = newFullscreenStatus,
			isTriggered = false,
		})
	end

	self.triggerTitleBar = function()
		local delaySecond = GetFIntFullscreenTitleBarTriggerDelayMillis() / 1000
		if delaySecond > 0 then
			self.triggerTitleBarPromise = Promise.delay(delaySecond):andThenCall(function()
				self.triggerTitleBarPromise = nil
				if not self.state.isTriggered then
					self:setState({
						isTriggered = true,
					})
				end
			end)
		else
			if not self.state.isTriggered then
				self:setState({
					isTriggered = true,
				})
			end
		end
	end

	self.cancelTriggerTitleBar = function()
		if self.triggerTitleBarPromise then
			self.triggerTitleBarPromise:cancel()
			self.triggerTitleBarPromise = nil
		end
	end

	self.hideTitleBar = function()
		if self.state.isTriggered then
			self:setState({
				isTriggered = false,
			})
		end
	end

	self.exitFullscreen = function()
		self.hideTitleBar()
		self.guiService:ToggleFullscreen()
	end

	self.closeRoblox = function()
		self.hideTitleBar()

		if self.props.isEducationalPopupEnabled then
			local localStore = UserLocalStore.new()
			self.props.openEducationalPopup(self.guiService, localStore, self.props.maxDisplayCount)
		else
			self.props.startLeavingGame()
		end
	end

	self.onDisappear = function()
		if self.hideTitleBarPromise then
			if GetFFlagFixFullscreenTitleBarPromiseCancel() then
				self.hideTitleBarPromise:cancel()
			else
				self.hideTitleBarPromise.cancel()
			end
			self.hideTitleBarPromise = nil
		end

		self.hideTitleBarPromise = Promise.delay(DISAPPEAR_DELAY):andThenCall(function()
			self.hideTitleBarPromise = nil
			self.hideTitleBar()
		end)
	end

	self.mouseReenter = function()
		if self.state.isTriggered and self.hideTitleBarPromise then
			self.hideTitleBarPromise:cancel()
			self.hideTitleBarPromise = nil
		end
	end
end

function FullscreenTitleBar:render()
	return Roact.createFragment({
		FullscreenChangedEvent = Roact.createElement(ExternalEventConnection, {
			event = self.userGameSettings.FullscreenChanged,
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
					[Roact.Event.MouseLeave] = self.cancelTriggerTitleBar,
				}),
				Bar = Roact.createElement(FullscreenTitleBarComponent, {
					title = self.props.titleText,
					isTriggered = self.state.isTriggered,
					onDisappear = self.onDisappear,
					onHover = self.mouseReenter,
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

function FullscreenTitleBar:willUnmount()
	if GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount() then
		if self.hideTitleBarPromise then
			self.hideTitleBarPromise:cancel()
		end

		if self.triggerTitleBarPromise then
			self.triggerTitleBarPromise:cancel()
		end
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
