--[[
A scrolling frame wraps pages for pulling down to refresh
props:
currentPage -- identify if native mobile buttonclick events comes from current page
refresh -- refresh function for this page
Size -- Size of the content in the scrolling frame
BackgroundColor3
Position -- TopLeft Corner of ScrollingContent
_____________________
|					|
|		TopBar		|
|___________________|
|					|
|					|
|					|
| ScrollingContent	|
|___________________|
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local UserInputService = game:GetService("UserInputService")
local NotificationService = game:GetService("NotificationService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local Roact = require(Modules.Common.Roact)
local FitChildren = require(Modules.LuaApp.FitChildren)
local RoactMotion = require(Modules.LuaApp.RoactMotion)
local ExternalEventConnection = require(Modules.Common.RoactUtilities.ExternalEventConnection)

local REFRESH_THRESHOLD = 25
local TWEEN_BACK_TIME = 0.5
local SPRING_STIFFNESS = 150
local SPRING_DAMPING = 18
local PRECISION = 2

local ROTATION_SCALE = 9.6
local ROTATION_ORIGIN = 240
local TRANSPARENCY_SCALE = 0.04
local DEFAULT_SPINNER_SIZE = 20
local CONFIRM_SCALE = 1.1
local ROTATING_SPEED = 540
local FADE_OUT_SCALE = 2
local BLUE_ARROW_PATH = "rbxasset://textures/ui/LuaApp/icons/ic-blue-arrow.png"
local GRAY_ARROW_PATH = "rbxasset://textures/ui/LuaApp/icons/ic-gray-arrow.png"

local function Spinner(props)
	-- should be spinning right now
	local activated = props.activated
	local offset = props.offset
	local position = props.Position
	local timer = props.timer
	local tween = props.tween

	local rotation = 0
	local scale = 1
	local image = BLUE_ARROW_PATH
	local imageTransparency = 0

	if offset > 0 then
		return
	end

	if activated then
		rotation = timer * ROTATING_SPEED
		offset = 0

	elseif tween then
		offset = 0
		imageTransparency = FADE_OUT_SCALE * timer
		image = GRAY_ARROW_PATH

	elseif offset > -REFRESH_THRESHOLD then
		offset = -offset
		rotation = ROTATION_SCALE * offset - ROTATION_ORIGIN
		imageTransparency = 1 - TRANSPARENCY_SCALE * offset
		image = GRAY_ARROW_PATH

	else
		scale = CONFIRM_SCALE
		offset = REFRESH_THRESHOLD
	end

	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, DEFAULT_SPINNER_SIZE * scale, 0, DEFAULT_SPINNER_SIZE * scale),
		Position = position + UDim2.new(0.5, 0, 0, offset - DEFAULT_SPINNER_SIZE / 2),
		ImageTransparency = imageTransparency,
		Image = image,
		BackgroundTransparency = 1,
		Rotation = rotation,
		AnchorPoint = Vector2.new(0.5, 0.5),
	})
end

local RefreshScrollingFrame = Roact.Component:extend("RefreshScrollingFrame")

function RefreshScrollingFrame:init()
	self.state = {
		activated = false,
		tween = false,
		timer = 0,
		offset = 0,
	}
	self.fitFields = {
		CanvasSize = FitChildren.FitAxis.Height,
	}

	-- store ref so the [Roact.Ref] doesn't change everyupdate
	self._refCallBack = function(rbx)
		if not rbx then
			return

		-- if refresh is undefined, do not listen to canvasPosition changes
		elseif not self.props.refresh then
			return
		end
		self.canvasSignalConnection = rbx:GetPropertyChangedSignal("CanvasPosition"):connect(function()
			self:setState({
				offset = rbx.CanvasPosition.y,
			})
		end)

		self.scrollBack = function()
			rbx:ScrollToTop()
		end
	end

	self.renderSteppedCallback = function(dt)
		if self.state.activated or self.state.tween then
			local nextState = {
				timer = self.state.timer + dt,
			}
			if self.state.tween and self.state.timer > TWEEN_BACK_TIME then
				nextState.tween = false
			end
			self:setState(nextState)
		end
	end

	self.inputEndedCallback = function(input)
		if input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		if self.state.offset < -REFRESH_THRESHOLD and not self.state.activated then
			self:setState({
				activated = true,
				tween = false,
				timer = 0,
			})
			self.props.refresh():andThen(function()
				self:setState({
					activated = false,
					tween = true,
					timer = 0,
				})
			end)
		end
	end

	-- Hooking to rbxevent is a temp solution and signals will be passed in by the new lua bottom bar
	self.bottomBarButtonPressedCallback = function(event)
		if self.state.activated then
			return
		end
		if event.namespace == "Navigations" and event.detailType == "Reload" then
			local eventDetails = HttpService:JSONDecode(event.detail)
			if eventDetails.appName == self.props.currentPage then
				self.scrollBack()
				self:setState({
					activated = true,
					tween = true,
					timer = 0,
				})
				self.props.refresh():andThen(function()
					self:setState({
						activated = false,
						tween = true,
						timer = 0,
					})
				end)
			end
		end
	end
end

function RefreshScrollingFrame:render()
	local size = self.props.Size
	local backgroundColor3 = self.props.BackgroundColor3
	local targetYPadding = self.props.Position.Y.Offset

	if self.state.activated then
		if self.state.offset > 0 and self.state.offset < REFRESH_THRESHOLD then
			targetYPadding = targetYPadding - self.state.offset + REFRESH_THRESHOLD
		elseif self.state.offset <= 0 then
			targetYPadding = targetYPadding + REFRESH_THRESHOLD
		end
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = backgroundColor3,
	}, {
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),
		spinnerFrame = Roact.createElement(RoactMotion.SimpleMotion, {
			style = {
				sizeY = RoactMotion.spring(targetYPadding, SPRING_STIFFNESS, SPRING_DAMPING, PRECISION),
			},
			render = function(values)
				local spinnerPosition = self.state.tween and values.sizeY or targetYPadding
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, values.sizeY),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				},{
					spinner = Spinner({
						Position = UDim2.new(0, 0, 0, spinnerPosition),
						offset = self.state.offset,
						activated = self.state.activated,
						timer = self.state.timer,
						tween = self.state.tween,
					})
				})
			end,
		}),
		scrollingContent = Roact.createElement(FitChildren.FitScrollingFrame, {
			Size = size,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			ElasticBehavior = Enum.ElasticBehavior.Always,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			fitFields = self.fitFields,
			[Roact.Ref] = self._refCallBack,
		}, self.props[Roact.Children]),
		renderStepped = Roact.createElement(ExternalEventConnection, {
			event = RunService.renderStepped,
			callback = self.renderSteppedCallback,
		}),
		inputEnded = Roact.createElement(ExternalEventConnection, {
			event = UserInputService.InputEnded,
			callback = self.inputEndedCallback,
		}),
		bottomBarButtonPressed = not _G.__TESTEZ_RUNNING_TEST__ and
			Roact.createElement(ExternalEventConnection, {
				event = NotificationService.RobloxEventReceived,
				callback = self.bottomBarButtonPressedCallback,
			}) or nil,
	})
end

-- Disconnect all the signals
function RefreshScrollingFrame:willUnmount()
	self.canvasSignalConnection:Disconnect()
end

return RefreshScrollingFrame
