local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local t = require(CorePackages.Packages.t)

local FeedbackModule = script.Parent.Parent
local Assets = require(FeedbackModule.Resources.Assets)
local Divider = require(FeedbackModule.Components.PortedComponents.Divider)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetButton
local withStyle = UIBlox.Core.Style.withStyle
local IconButton = UIBlox.App.Button.IconButton
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local UIBloxImages = UIBlox.App.ImageSet.Images

-- Flags
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagEnableFeedbackReportDialogAdjustments =
	require(RobloxGui.Modules.Flags.GetFFlagEnableFeedbackReportDialogAdjustments)

local MAX_WIDTH = 540
local MAX_HEIGHT = 645
local TITLE_HEIGHT = 49
local CONTENT_HEIGHT = 600
local ACTION_BAR_HEIGHT = if GetFFlagEnableFeedbackReportDialogAdjustments() then 60 else 48
local MODAL_DISMISS_ACTION = "ModalDialogDismiss"

local ModalDialog = Roact.Component:extend("ModalDialog")

ModalDialog.validateProps = t.strictInterface({
	visible = t.boolean,
	screenSize = t.Vector2,
	titleText = t.optional(t.string),
	showCloseButton = t.optional(t.boolean),
	headerBar = t.optional(t.table),
	contents = t.optional(t.table),
	actionButtons = t.optional(t.table),
	onDismiss = t.optional(t.callback),
	onBackButtonActivated = t.optional(t.callback),
	maxHeight = t.optional(t.number),
	maxWidth = t.optional(t.number),
})

function ModalDialog:init()
	self.onOverlayActivated = function()
		self.props.onDismiss()
	end
end

function ModalDialog:renderHeaderBarLeft()
	local props = self.props
	if props.showCloseButton then
		-- close button
		return function()
			return Roact.createElement(IconButton, {
				iconSize = IconSize.Medium,
				icon = UIBloxImages["icons/navigation/close"],
				onActivated = props.onDismiss,
			})
		end
	elseif props.onBackButtonActivated ~= nil then
		-- back button
		return HeaderBar.renderLeft.backButton(props.onBackButtonActivated)
	else
		-- placeholder to fix the title style
		return function()
			return nil
		end
	end
end

function ModalDialog:renderHeaderBarRight()
	-- placeholder to center the title text
	return function()
		return nil
	end
end

function ModalDialog:render()
	local props = self.props
	-- screen resolution adaptivity
	-- It's similar to ModalWindow. If the screen size is smaller than the max
	-- width of the Modal, then it will act as a popup from the bottom of the
	-- screen, anything larger and it behaves similarly to an Alert.
	local maxHeight = math.min(props.screenSize.Y, MAX_HEIGHT)
	if props.maxHeight then
		maxHeight = math.min(maxHeight, props.maxHeight)
	end

	local maxWidth = math.min(props.screenSize.X, MAX_WIDTH)
	if props.maxWidth then
		maxWidth = math.min(maxWidth, props.maxWidth)
	end

	local size = Vector2.new(
		maxWidth,
		maxHeight
		-- TODO: Consider dynamic modal sizing for mobile
	)
	local anchorPoint, position
	if props.screenSize.X < MAX_WIDTH then
		anchorPoint = Vector2.new(0.5, 1)
		position = UDim2.fromScale(0.5, 1)
	else
		anchorPoint = Vector2.new(0.5, 0.5)
		position = UDim2.fromScale(0.5, 0.5)
	end
	-- content height
	local contentHeight = math.min(CONTENT_HEIGHT, size.Y - TITLE_HEIGHT - ACTION_BAR_HEIGHT)
	if not props.actionButtons then
		-- If there isn't any action button, extend content frame
		contentHeight += ACTION_BAR_HEIGHT
	end

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Visible = props.visible,
		}, {
			Overlay = Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = style.Theme.Overlay.Color,
				BackgroundTransparency = style.Theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 1),
				Text = "",
				[Roact.Event.Activated] = self.onOverlayActivated,
			}),
			Dialog = Roact.createElement(ImageSetLabel, {
				Active = true, -- block the input to overlay
				AnchorPoint = anchorPoint,
				BackgroundTransparency = 1,
				Image = Assets.Images.RoundedRect.Image,
				ImageColor3 = style.Theme.BackgroundUIDefault.Color,
				ImageTransparency = style.Theme.BackgroundUIDefault.Transparency,
				Position = position,
				ScaleType = Assets.Images.RoundedRect.ScaleType,
				Size = UDim2.fromOffset(size.X, size.Y),
				SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				HeaderBar = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, TITLE_HEIGHT - 1),
				}, {
					Bar = props.headerBar or Roact.createElement(HeaderBar, {
						backgroundTransparency = 1,
						barHeight = 48,
						renderLeft = self:renderHeaderBarLeft(),
						renderRight = self:renderHeaderBarRight(),
						title = props.titleText,
					}) or nil,
				}),
				Divider = Roact.createElement(Divider, {
					LayoutOrder = 2,
				}),
				Content = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 0, contentHeight),
					ZIndex = 10, -- contents may cover action bar
				}, {
					Contents = props.contents,
				}),
				ActionBar = props.actionButtons and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 4,
					Size = UDim2.new(1, 0, 0, ACTION_BAR_HEIGHT),
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 8),
						PaddingBottom = UDim.new(0, 2),
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 24),
					}),
					ActionButtons = props.actionButtons,
				}) or nil,
			}),
		})
	end)
end

function ModalDialog:bindActions()
	local function dismissFunc(inputState)
		if inputState == Enum.UserInputState.Begin then
			self.props.onDismiss()
		end
	end
	ContextActionService:BindCoreAction(MODAL_DISMISS_ACTION, dismissFunc, false, Enum.KeyCode.Escape)
end

function ModalDialog:unbindActions()
	ContextActionService:UnbindCoreAction(MODAL_DISMISS_ACTION)
end

function ModalDialog:didMount()
	if self.props.visible then
		self:bindActions()
	end
end

function ModalDialog:didUpdate()
	if self.props.visible then
		self:bindActions()
	else
		self:unbindActions()
	end
end

function ModalDialog:willUnmount()
	self:unbindActions()
end

return ModalDialog
