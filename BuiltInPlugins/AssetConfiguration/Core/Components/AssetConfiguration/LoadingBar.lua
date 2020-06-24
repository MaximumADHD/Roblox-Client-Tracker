--[[
	LoadingBar - creates a loading bar used for validation/publishing

	1. loads to holdPercent
	2. waits for onFinish to be non-nil
	3. loads to 100%
	4. loads to 150% (so the user can see the finished loading bar for a short delay)
	5. calls onFinish()

	Necessary Props:
		string loadingText - the loading bar text
		number holdPercent [0, 1] - percentage to wait at
		number loadingTime - total time it takes to load without waiting for onFinish
		callback onFinish - provide this callback to signal that loading has finished
]]

local Plugin = script.Parent.Parent.Parent.Parent

local RunService = game:GetService("RunService")

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)

local Components = Plugin.Core.Components
local RoundFrame = require(Components.RoundFrame)

local LOADING_TITLE_HEIGHT = 20
local LOADING_TITLE_PADDING = 10

local withTheme = ContextHelper.withTheme

local LoadingBar = Roact.Component:extend("LoadingBar")

function LoadingBar:init(props)
	self:setState({
		progress = 0,
		time = 0,
	})
end

function LoadingBar:loadUntil(percent)
	while self.state.progress < percent do
		local dt = RunService.RenderStepped:Wait()
		if not self.isMounted then
			break
		end
		local newTime = self.state.time + dt
		self:setState({
			time = newTime,
			progress = newTime/self.props.loadingTime
		})
	end
end

function LoadingBar:didMount()
	self.isMounted = true
	spawn(function()
		-- go to 92%
		self:loadUntil(self.props.holdPercent)

		-- wait until props.onFinish
		while self.isMounted and self.props.onFinish == nil do
			RunService.RenderStepped:Wait()
		end

		-- go to 100%
		self:loadUntil(1)

		-- wait for a moment to show "full loading screen"
		self:loadUntil(1.5)

		if self.isMounted then
			self.props.onFinish()
		end
	end)
end

function LoadingBar:willUnmount()
	self.isMounted = false
end

function LoadingBar:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local progress = math.min(math.max(state.progress, 0), 1)
		local loadingText = props.loadingText .. " ( " .. math.floor((progress * 100) + 0.5) .. "% )"

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = props.Size,
			Position = props.Position,
		}, {
			LoadingTitle = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Position = UDim2.new(0, 0, 0, -(LOADING_TITLE_HEIGHT + LOADING_TITLE_PADDING)),
				Size = UDim2.new(1, 0, 0, LOADING_TITLE_HEIGHT),
				Text = loadingText,
				TextColor3 = theme.loading.text,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),

			LoadingBackgroundBar = Roact.createElement(RoundFrame, {
				BorderSizePixel = 0,
				BackgroundColor3 = theme.loading.backgroundBar,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				LoadingBar = Roact.createElement(RoundFrame, {
					BorderSizePixel = 0,
					BackgroundColor3 = theme.loading.bar,
					Size = UDim2.new(progress, 0, 1, 0),
				}),
			}),
		})
	end)
end

return LoadingBar