--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Promise = InGameMenuDependencies.Promise
local Dash = require(CorePackages.Packages.Dash)
local t = InGameMenuDependencies.t

local InGameMenu = RobloxGui.Modules.InGameMenu
local Constants = require(InGameMenu.Resources.Constants)

local FullscreenTitleBar = UIBlox.App.Bar.FullscreenTitleBar
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local GetDefaultQualityLevel = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel

local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local GetFIntFullscreenTitleBarTriggerDelayMillis = require(InGameMenu.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis)

local LEAVE_GAME_FRAME_WAITS = 2

local SettingsFullScreenTitleBar = Roact.PureComponent:extend("SettingsFullScreenTitleBar")

SettingsFullScreenTitleBar.validateProps = t.strictInterface({
	titleText = t.optional(t.string),
	onClose = t.optional(t.callback),
	-- for use ONLY by unit tests
	_mockFullScreen = t.optional(t.boolean),
})

SettingsFullScreenTitleBar.defaultProps = {
	titleText = "Roblox",
}

function SettingsFullScreenTitleBar:init()
	self:setState({
		isTriggered = false,
	})

	self.show = function()
		self:setTriggered(true)
	end
	self.hide = function()
		self:setTriggered(false)
	end
	self.cancel = function()
		self:unsetTriggered()
	end
	self.onFullscreenChanged = function()
		self:unsetTriggered()
		self:setState({
			isTriggered = false,
		})
	end
end

function SettingsFullScreenTitleBar:setTriggered(value)
	self:unsetTriggered()
	if UserGameSettings:InFullScreen() or self.props._mockFullScreen then
		self.triggerPromise = Promise.delay(GetFIntFullscreenTitleBarTriggerDelayMillis() / 1000):andThenCall(function()
			self.triggerPromise = nil
			self:setState({
				isTriggered = value,
			})
		end)
	end
end

function SettingsFullScreenTitleBar:unsetTriggered()
	if self.triggerPromise then
		self.triggerPromise:cancel()
		self.triggerPromise = nil
	end
end

function SettingsFullScreenTitleBar:toggleFullscreen()
	GuiService:ToggleFullscreen()
end

function SettingsFullScreenTitleBar:leaveGame()
	GuiService.SelectedCoreObject = nil -- deselects the button and prevents spamming the popup to save in studio when using gamepad

	-- need to wait for render frames so on slower devices the leave button highlight will update
	-- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
	for i = 1, LEAVE_GAME_FRAME_WAITS do
		RunService.RenderStepped:Wait()
	end

	game:Shutdown()

	settings().Rendering.QualityLevel = GetDefaultQualityLevel()
end

function SettingsFullScreenTitleBar:render()
	local fullscreenTitleBar = Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		InGameFullscreenTitleBarScreen = Roact.createElement("ScreenGui", {
			Enabled = true,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = Constants.DisplayOrder.FullscreenTitleBar,
		}, {
			FullscreenChangedEvent = Roact.createElement(ExternalEventConnection, {
				event = UserGameSettings.FullscreenChanged,
				callback = self.onFullscreenChanged,
			}),
			TriggerArea = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
				[Roact.Event.MouseEnter] = self.show,
				[Roact.Event.MouseLeave] = self.cancel,
			}),
			Bar = Roact.createElement(FullscreenTitleBar, {
				title = self.props.titleText,
				isTriggered = self.state.isTriggered,
				onDisappear = self.hide,
				onHover = self.cancel,
				exitFullscreen = self.toggleFullscreen,
				closeRoblox = self.props.onClose or self.leaveGame,
			}),
		}),
	})
	return renderWithCoreScriptsStyleProvider({
		FullscreenTitleBar = fullscreenTitleBar,
	})
end

function SettingsFullScreenTitleBar:willUnmount()
	self:unsetTriggered()
end

return {
	mount = function(props: Dash.Table?, parent: Instance?, key: string?)
		return Roact.mount(Roact.createElement(SettingsFullScreenTitleBar, props or {}), parent, key)
	end,
	update = function(tree, props)
		return Roact.update(tree, Roact.createElement(SettingsFullScreenTitleBar, props))
	end,
	unmount = function(tree)
		return Roact.unmount(tree)
	end,
}
