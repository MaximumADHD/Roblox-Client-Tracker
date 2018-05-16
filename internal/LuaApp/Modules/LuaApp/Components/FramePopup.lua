local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local RoactMotion = require(Modules.LuaApp.RoactMotion)

-- Some defaults:
local SEPARATOR_HEIGHT = 1
local CANCEL_FONT = Enum.Font.SourceSans
local CANCEL_FONT_SIZE = 23
local CANCEL_HEIGHT = 64
local CANCEL_TEXT_COLOR = Constants.Color.GREY1
local CANCEL_ICON = "rbxasset://textures/ui/LuaApp/category/ic-cancel.png"

local ICON_SIZE = 20
local ICON_HORIZONTAL_SPACE = 20

local DROPDOWN_TEXT_MARGIN = 10
local DROPDOWN_PULL_DISMISS_THRESHHOLD = 40

local FramePopup = Roact.PureComponent:extend("FramePopup")

function FramePopup:init()
	-- If we start dragging at the top, this is a candidate for closing the popup:
	self.dragStartedAtTop = false

	self.state = {
		hidden = self.props.isAnimated,
	}

	-- Initialize parameters for Roact Motion
	self.yAnchorPoint = self.state.hidden and 0 or 1
	self.stiffness = nil -- use default stiffness
	self.damping = nil -- use default damping
	self.onRested = nil

	self.closeCallback = function()
		self:close()
	end

	self.onInputBegin = function(rbx)
		if rbx.CanvasPosition.y == 0 then
			self.dragStartedAtTop = true
		else
			self.dragStartedAtTop = false
		end
	end

	self.changed = function(rbx, changed)
		if changed == "CanvasPosition" then
			self:onPositionChanged(rbx)
		end
	end

	self.onRender = function(values)
		local heightAllItems = self.props.heightAllItems
		local heightScrollContainer = self.props.heightScrollContainer
		local children = self.props[Roact.Children]

		-- Text offset to make space for the cancel icon (padding doesn't work for text):
		local iconSpacing = ICON_SIZE + (ICON_HORIZONTAL_SPACE * 2)

		return Roact.createElement(FitChildren.FitFrame, {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, values.yAnchorPoint),
			BorderSizePixel = 0,
			fitAxis = FitChildren.FitAxis.Height,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
			}),

			Scroller = Roact.createElement("ScrollingFrame", {
				BackgroundColor3 = Constants.Color.WHITE,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(1, 0, 0, heightAllItems),
				LayoutOrder = 1,
				ScrollBarThickness = 0,
				Size = UDim2.new(1, 0, 0, heightScrollContainer),

				[Roact.Event.InputBegan] = self.onInputBegin,
				[Roact.Event.Changed] = self.changed,
			}, {
				Items = Roact.createElement("TextButton", {
					BackgroundColor3 = Constants.Color.WHITE,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ClipsDescendants = true,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 0, heightAllItems),
					Text = "",
				}, children),
			}),

			Separator = Roact.createElement("Frame", {
				BackgroundColor3 = Constants.Color.GRAY4,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, SEPARATOR_HEIGHT),
			}),

			Cancel = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				LayoutOrder = 3,
				BackgroundColor3 = Constants.Color.WHITE,
				BackgroundTransparency = 0,
				Size = UDim2.new(1, 0, 0, CANCEL_HEIGHT),
			}, {
				Icon = Roact.createElement("ImageButton", {
					AnchorPoint = Vector2.new(0, 0.5),
					AutoButtonColor = false,
					BackgroundColor3 = Constants.Color.WHITE,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ClipsDescendants = false,
					Image = CANCEL_ICON,
					Position = UDim2.new(0, ICON_HORIZONTAL_SPACE, 0.5, 0),
					Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				}),
				Cancel = Roact.createElement("TextButton", {
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Constants.Color.WHITE,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = CANCEL_FONT,
					Position = UDim2.new(0, iconSpacing, 0.5, 0),
					Size = UDim2.new(1, -(iconSpacing + DROPDOWN_TEXT_MARGIN), 1, 0),
					Text = "Cancel",
					TextColor3 = CANCEL_TEXT_COLOR,
					TextSize = CANCEL_FONT_SIZE,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					[Roact.Event.Activated] = self.closeCallback,
				}), -- Cancel Button
			}), -- Cancel Frame
		}) -- Popup Frame
	end -- Render Function
end

function FramePopup:open()
	if self.state.hidden == true and self.props.isAnimated then
		self.yAnchorPoint = 1
		self.stiffness = nil
		self.damping = nil
		self.onRested = nil

		self:setState({
			hidden = false,
		})
	end
end

function FramePopup:close()
	local onCancel = self.props.onCancel

	if self.state.hidden == false and self.props.isAnimated then
		self.yAnchorPoint = 0
		-- Closing animation should be a bit faster than the open animation
		self.stiffness = 270
		self.damping = nil
		self.onRested = onCancel

		self:setState({
			hidden = true,
		})
	elseif not self.props.isAnimated then
		onCancel()
	end
end

function FramePopup:onPositionChanged(rbx)
	if self.dragStartedAtTop and (rbx.CanvasPosition.y < -DROPDOWN_PULL_DISMISS_THRESHHOLD) then
		self.dragStartedAtTop = false
		self:close()
	end
end

function FramePopup:didMount()
	self:open()
end

-- Returns a frame for our list in the style of a full-ish screen popup.
-- Intended use is to wrap the ListPicker control, inside a DropDownList control.
function FramePopup:render()
	return Roact.createElement("TextButton", {
		AutoButtonColor = false,
		BackgroundColor3 = Constants.Color.GRAY1,
		BackgroundTransparency = 0.5,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		[Roact.Event.Activated] = self.closeCallback,
	}, {
		AnimatedPopup = Roact.createElement(RoactMotion.SimpleMotion, {
			style = {
				yAnchorPoint = RoactMotion.spring(self.yAnchorPoint, self.stiffness, self.damping),
			},
			onRested = self.onRested,
			render = self.onRender,
		}) -- Animated Popup
	}) -- Transparent Popup Background
end

return FramePopup