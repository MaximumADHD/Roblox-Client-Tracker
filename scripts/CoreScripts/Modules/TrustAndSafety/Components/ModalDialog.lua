local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local Divider = require(Dependencies.Divider)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Core.Style.withStyle

local DIALOG_WIDTH = 540
local DIALOG_HEIGHT = 375
local CONTENT_HEIGHT = 230
local ACTION_BAR_HEIGHT = 96
local MODAL_DISMISS_ACTION = "ModalDialogDismiss"

local ModalDialog = Roact.PureComponent:extend("ModalDialog")

ModalDialog.validateProps = t.strictInterface({
	visible = t.boolean,
	titleText = t.optional(t.string),
	titleBar = t.optional(t.table),
	contents = t.optional(t.table),
	actionButtons = t.optional(t.table),
	onDismiss = t.callback,
})

function ModalDialog:render()
	local props = self.props
	local contentHeight = CONTENT_HEIGHT
	if not props.actionButtons then
		-- If there isn't any action button, extend content frame
		contentHeight += ACTION_BAR_HEIGHT
	end

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = props.visible,
		}, {
			Overlay = Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = style.Theme.Overlay.Color,
				BackgroundTransparency = style.Theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
				ZIndex = -10;
				[Roact.Event.Activated] = props.onDismiss,
			}),
			Dialog = Roact.createElement(ImageSetLabel, {
				Active = true,	-- block the input to overlay
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = Assets.Images.RoundedRect.Image,
				ImageColor3 = style.Theme.BackgroundUIDefault.Color,
				ImageTransparency = style.Theme.BackgroundUIDefault.Transparency,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ScaleType = Assets.Images.RoundedRect.ScaleType,
				Size = UDim2.new(0, DIALOG_WIDTH, 0, DIALOG_HEIGHT),
				SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Title = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, 48),
				}, {
					TitleBar = props.titleBar,
					Label = props.titleText and Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",
						Size = UDim2.new(1, 0, 1, 0),
						Text = props.titleText,
					}) or nil,
				}),
				Divider = Roact.createElement(Divider, {
					LayoutOrder = 2,
				}),
				Content = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 0, contentHeight),
				}, {
					Contents = props.contents,
				}),
				ActionBar = props.actionButtons and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 4,
					Size = UDim2.new(1, 0, 0, ACTION_BAR_HEIGHT),
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24),
						PaddingBottom = UDim.new(0, 24),
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
	local function dismissFunc(actionName, inputState, input)
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
