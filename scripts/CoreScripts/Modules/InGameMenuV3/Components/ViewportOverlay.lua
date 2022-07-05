local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local sideBarWidth = 64
local Constants = require(InGameMenu.Resources.Constants)

local GlobalConfig = require(InGameMenu.GlobalConfig)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local VECTOR2_ZERO = Vector2.new(0, 0)
local KEYBOARD_CLOSED_HYSTERESIS_SECONDS = 0.350

local validateProps = t.strictInterface({
	currentPage = t.string,
	open = t.boolean,
	onActivated = t.callback,
	occupiedWidth = t.number,
	screenSize = t.Vector2,
})

local ViewportOverlay = Roact.Component:extend("ViewportOverlay")

function ViewportOverlay:init()
	self.inhibitMenuClose = nil
	self.timeAtReleased = 0

	self.canCloseMenu = function()
		local now = time()
		local timeSinceRelease = now - self.timeAtReleased
		return not self.inhibitMenuClose and timeSinceRelease > KEYBOARD_CLOSED_HYSTERESIS_SECONDS
	end

	self.handleActivated = function()
		if self.canCloseMenu() then
			self.props.onActivated()
		end
	end

	self.onScreenKeyboardVisibleChanged = function()
		local keyboardVisible = UserInputService.OnScreenKeyboardVisible or nil
		self.inhibitMenuClose = keyboardVisible
		if not keyboardVisible then
			self.timeAtReleased = time()
		end
	end

	self.disconnectSignals = function()
		if self.onScreenKeyboardVisibleSignal then
			self.onScreenKeyboardVisibleSignal:Disconnect()
		end
		self.onScreenKeyboardVisibleSignal = nil
	end
end

function ViewportOverlay:willUnmount(priorProps)
	self:disconnectSignals()
end

function ViewportOverlay:didUpdate(priorProps)
	local menuOpen = self.props.open
	local menuWasJustOpenedOrClosed = menuOpen ~= priorProps.menuOpen

	if menuWasJustOpenedOrClosed then
		self:disconnectSignals()
		self.inhibitMenuClose = nil
		if menuOpen and UserInputService.TouchEnabled then
			self.onScreenKeyboardVisibleSignal = UserInputService
				:GetPropertyChangedSignal("OnScreenKeyboardVisible")
				:Connect(self.onScreenKeyboardVisibleChanged)
		end
	end
end

function ViewportOverlay:render()
	local props = self.props

	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	if props.screenSize == VECTOR2_ZERO then
		return nil
	end

	local isInitalPage = props.currentPage == Constants.InitalPageKey

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundColor3 = style.Theme.Overlay.Color,
			BackgroundTransparency = style.Theme.Overlay.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = not isInitalPage and props.open,
			ZIndex = 0,
		}, {
			InputCapturer = Roact.createElement("TextButton", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(1, -props.occupiedWidth, 1, 0),
				Text = "",
				[Roact.Event.Activated] = self.handleActivated,
			}),
		})
	end)
end

return RoactRodux.connect(function(state, props)
	local occupiedWidth = sideBarWidth + Constants.PageWidth

	return {
		currentPage = state.menuPage,
		open = state.isMenuOpen,
		occupiedWidth = occupiedWidth,
		screenSize = state.screenSize,
	}
end, function(dispatch)
	return {
		onActivated = function()
			dispatch(CloseMenu)
		end,
	}
end)(ViewportOverlay)
