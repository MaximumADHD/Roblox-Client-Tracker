--[[
	Copied from Toolbox/AssetConfiguration

	1. loads to holdPercent
	2. waits for onFinish to be non-nil
	3. loads to 100%
	4. loads to 150% (so the user can see the finished loading bar for a short delay)
	5. calls onFinish()

	Necessary Props:
		number HoldPercent [0, 1] - percentage to wait at
		number LoadingTime - total time it takes to load without waiting for onFinish
		callback OnFinish - provide this callback to signal that loading has finished
]]
-- DELETE THIS FILE ALONG WITH FFlagPluginManagementRemoveUILibrary
local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")
if FFlagPluginManagementRemoveUILibrary then
	assert("This file should be deleted!")
end

local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local RoundFrame = require(Plugin.Packages.UILibrary).Component.RoundFrame

local LoadingBar = Roact.Component:extend("LoadingBar")

function LoadingBar:init(props)
	assert(props.LoadingTime and props.LoadingTime > 0, "LoadingBar expects LoadingTime to be > 0.")
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
			progress = newTime / self.props.LoadingTime
		})
	end
end

function LoadingBar:didMount()
	self.isMounted = true
	spawn(function()
		-- go to holdPercent
		self:loadUntil(self.props.HoldPercent)

		-- wait until props.onFinish
		while self.isMounted and self.props.onFinish == nil do
			RunService.RenderStepped:Wait()
		end

		-- go to 100%
		self:loadUntil(1)

		if self.isMounted and self.props.OnFinish then
			self.props.OnFinish()
		end
	end)
end

function LoadingBar:willUnmount()
	self.isMounted = false
end

function LoadingBar:render()
	local props = self.props
	local state = self.state
	local theme = props.Theme:get("Plugin")

	local progress = math.min(math.max(state.progress, 0), 1)

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = props.Size,
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
	}, {
		LoadingBackgroundBar = Roact.createElement(RoundFrame, {
			BorderColor = theme.BorderColor,
			BackgroundColor3 = theme.ButtonColor,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			LoadingBar = Roact.createElement(RoundFrame, {
				BorderSizePixel = 0,
				BackgroundColor3 = theme.ProgressBarColor,
				Size = UDim2.new(progress, 0, 1, 0),
			}),
		}),
	})
end

ContextServices.mapToProps(LoadingBar, {
	Theme = ContextServices.Theme,
})

return LoadingBar