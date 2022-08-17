--!nonstrict
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local OpenMenu = require(InGameMenu.Thunks.OpenMenu)
local ToastFrame = require(script.ToastFrame)

local ScreenshotToast = Roact.PureComponent:extend("ScreenshotToast")

local FPS = 30

ScreenshotToast.validateProps = t.strictInterface({
	menuPage = t.string,
	closeMenu = t.callback,
	openMenu = t.callback,
})

local lastOpenPage = Constants.InitalPageKey

local function linearTween(dTime, startFrame, endFrame)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime, startFrame, endFrame)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local toastBackgroundTransparency
local hasOpenMenu = false

local function showAnimation(timeElapsed, updateBindings, _, stopCallback, props)
	if isBetweenFrames(timeElapsed, 0, 5) then
		updateBindings.flash(0)
		updateBindings.toast(0)
		updateBindings.toastBackground(toastBackgroundTransparency)
	elseif isBetweenFrames(timeElapsed, 5, 12) then
		local scaledElapsed = linearTween(timeElapsed, 5, 12)
		updateBindings.flash(scaledElapsed)
		updateBindings.toast(0)
		updateBindings.toastBackground(toastBackgroundTransparency)
	elseif isBetweenFrames(timeElapsed, 12, 24) then
		updateBindings.flash(1)
		updateBindings.toast(0)
		updateBindings.toastBackground(toastBackgroundTransparency)
	elseif isBetweenFrames(timeElapsed, 24, 34) then
		if not hasOpenMenu then
			props.openMenu(lastOpenPage)
			hasOpenMenu = true
		end
		updateBindings.flash(1)
		local scaledElapsed = linearTween(timeElapsed, 24, 34)
		updateBindings.toast(scaledElapsed)
		if scaledElapsed > toastBackgroundTransparency then
			updateBindings.toastBackground(scaledElapsed)
		end
	else
		--Complete animation
		updateBindings.flash(1)
		updateBindings.toast(1)
		updateBindings.toastBackground(1)
		stopCallback()
		hasOpenMenu = false
	end
end

function ScreenshotToast:init()
	self.flashTransparency, self.updateFlash = Roact.createBinding(1)
	self.toastBackgroundTransparency, self.updateToastBackground = Roact.createBinding(1)
	self.toastTransparency, self.updateToast = Roact.createBinding(1)

	self.updateBindings = {
		flash = self.updateFlash,
		toast = self.updateToast,
		toastBackground = self.updateToastBackground,
	}

	self:setState({
		showToast = false
	})

	game.ScreenshotReady:Connect(function()
		self:playAnimation(showAnimation, false)
		self:setState({
			showToast = true
		})
	end)
end

function ScreenshotToast:render()
	if self.props.menuPage ~= Constants.InitalPageKey then
		lastOpenPage = self.props.menuPage
	end
	return withStyle(function(style)
		toastBackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Visible = self.state.showToast,
		}, {
			Flash = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = self.flashTransparency,
				BackgroundColor3 = Color3.new(1, 1, 1),
			}),
			Toast = self.state.showToast and Roact.createElement(ToastFrame, {
				toastTransparency = self.toastTransparency,
				toastBackgroundTransparency = self.toastBackgroundTransparency,
			}) or nil
		})
	end)
end

function ScreenshotToast:playAnimation(animFunc, reverse)
	if self.animationFunction then
		--Complete current animation
		self.animationFunction(100, self.updateBindings, self.reverseAnimation, function() end)
	end
	self.animationStartTime = tick()
	self.animationFunction = animFunc
	self.reverseAnimation = reverse
	if not self.renderSteppedConnection then
		self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
			self.animationFunction(tick() - self.animationStartTime, self.updateBindings, self.reverseAnimation, function()
				self:stopAnimation()
			end, self.props)
		end)
	end
end

function ScreenshotToast:stopAnimation()
	self:setState({
		showToast = false
	})
	if self.renderSteppedConnection then
		self.renderSteppedConnection:Disconnect()
		self.renderSteppedConnection = nil
	end
end


local function mapStateToProps(state, _)
	return {
		menuPage = state.menuPage,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		openMenu = function(page)
			dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.ScreenshotToast, page))
		end,
	}
end


return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ScreenshotToast)
