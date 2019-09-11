--[[
	Represents a popup message which appears at the bottom center of the
	window and displays a single-line text message, then fades away after
	a short amount of time.

	Props:
		string Text = The message to display.
		float ShowTime = The number of seconds to display this toast.
		float FadeTime = The number of seconds to fade out this toast.

		function OnClose() = A callback for when the toast closes.
]]

local RunService = game:GetService("RunService")

local TEXT_PADDING = 20
local TOAST_HEIGHT = 35
local DEFAULT_SHOW_TIME = 3
local DEFAULT_FADE_TIME = 0.5

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local StringUtils = require(Plugin.Src.Util.StringUtils)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local BaseToast = require(Plugin.Src.Components.Toast.BaseToast)

local NoticeToast = Roact.PureComponent:extend("NoticeToast")

function NoticeToast:init(initialProps)
	self.state = {
		showingToast = true,
		fadeAmount = 0,
	}

	self.startTimer = function()
		local showTime = initialProps.ShowTime or DEFAULT_SHOW_TIME
		local fadeTime = initialProps.FadeTime or DEFAULT_FADE_TIME
		self.hideTime = tick() + showTime
		self.fadeTime = self.hideTime - fadeTime
		self.fadeMultiplier = fadeTime == 0 and 1 or 1 / fadeTime
		self:setState({
			fadeAmount = 0,
		})
	end

	self.connectTimer = function()
		self.timerConnection = RunService.Heartbeat:Connect(function()
			if self and self.state.showingToast then
				if tick() >= self.hideTime then
					self.disconnectTimer()
					self.onClose()
					self:setState({
						showingToast = false,
					})
				elseif tick() >= self.fadeTime then
					self:setState({
						fadeAmount = (tick() - self.fadeTime) * self.fadeMultiplier,
					})
				end
			end
		end)
	end

	self.disconnectTimer = function()
		if self.timerConnection then
			self.timerConnection:Disconnect()
		end
	end

	self.onClose = function()
		if self.props.OnClose then
			self.props.OnClose()
		end
	end
end

function NoticeToast:didUpdate(previousProps)
	if self.props.Text ~= previousProps.Text then
		self.startTimer()
	end
end

function NoticeToast:didMount()
	self.startTimer()
	self.connectTimer()
end

function NoticeToast:willUnmount()
	self.disconnectTimer()
end

function NoticeToast:render()
	return withTheme(function(theme)
		local toastTheme = theme.toastTheme

		local props = self.props
		local state = self.state
		local text = props.Text
		local showingToast = state.showingToast
		local fadeAmount = state.fadeAmount

		local textWidth = StringUtils.getTextWidth(text, toastTheme.textSize, theme.font)
			 + TEXT_PADDING * 2

		return showingToast and Roact.createElement(BaseToast, {
			AnchorPoint = Vector2.new(0.5, 1),
			Size = UDim2.new(0, textWidth, 0, TOAST_HEIGHT),
			Transparency = fadeAmount,
		}, {
			Text = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = text,
				TextSize = toastTheme.textSize,
				TextColor3 = toastTheme.textColor,
				TextTransparency = fadeAmount,
				Font = theme.font,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, TEXT_PADDING),
					PaddingRight = UDim.new(0, TEXT_PADDING),
				})
			}),
		})
	end)
end

return NoticeToast
