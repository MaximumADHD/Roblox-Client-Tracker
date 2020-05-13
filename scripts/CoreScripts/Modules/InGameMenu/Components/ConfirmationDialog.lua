local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local MODAL_CONFIRM_ACTION = "InGameMenuModalConfirm"
local MODAL_CANCEL_ACTION = "InGameMenuModalCancel"

local ConfirmationDialog = Roact.PureComponent:extend("ConfirmationDialog")

ConfirmationDialog.validateProps = t.strictInterface({
	bodyText = t.string,
	cancelText = t.string,
	confirmText = t.string,
	titleText = t.string,

	bindReturnToConfirm = t.boolean,

	onCancel = t.callback,
	onConfirm = t.callback,

	blurBackground = t.boolean,

	visible = t.boolean,
})

ConfirmationDialog.defaultProps = {
	bodyText = "This is some body text. It will wrap when needed.",
	cancelText = "Cancel",
	confirmText = "Confirm",
	titleText = "Dialog Title",
	blurBackground = false,
}

function ConfirmationDialog:render()
	local props = self.props

	return withStyle(function(style)
		local bodyFont = style.Font.Body.Font
		local bodyFontSize = style.Font.Body.RelativeSize * style.Font.BaseSize
		local bodyText = props.bodyText
		local textHeight = TextService:GetTextSize(
			bodyText,
			bodyFontSize,
			bodyFont,
			-- 335 (width) - 20px padding on left and right
			Vector2.new(335 - 20 - 20, math.huge)
		).Y

		-- 20px padding top, 20px padding bottom
		-- Minimum height of two lines of text.
		-- TODO: Line height!
		local bodyTextContainerHeight = 20 + math.max(textHeight, bodyFontSize * 2) + 20

		return Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			InGameMenuConfirmationDialog = Roact.createElement("ScreenGui", {
				DisplayOrder = 8,
				IgnoreGuiInset = true,
				OnTopOfCoreBlur = props.blurBackground,
				Enabled = props.visible,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			}, {
				Overlay = Roact.createElement("TextButton", {
					AutoButtonColor = false,
					BackgroundColor3 = style.Theme.Overlay.Color,
					BackgroundTransparency = style.Theme.Overlay.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					Text = "",
				}),
				DialogMainFrame = Roact.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = Assets.Images.RoundedRect.Image,
					ImageColor3 = style.Theme.BackgroundUIDefault.Color,
					ImageTransparency = style.Theme.BackgroundUIDefault.Transparency,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					ScaleType = Assets.Images.RoundedRect.ScaleType,
					-- button container (36px), bottom padding (20px)
					-- height: title bar (48px), divider (1px), body text height,
					Size = UDim2.new(0, 335, 0, 48 + 1 + bodyTextContainerHeight + 36 + 20),
					SliceCenter = Assets.Images.RoundedRect.SliceCenter,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, 20),
						PaddingLeft = UDim.new(0, 20),
						PaddingRight = UDim.new(0, 20),
					}),
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Title = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",

						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 0, 48),
						Text = props.titleText,
					}),
					Divider = Roact.createElement("Frame", {
						BackgroundColor3 = style.Theme.Divider.Color,
						BackgroundTransparency = style.Theme.Divider.Transparency,
						BorderSizePixel = 0,
						LayoutOrder = 3,
						Size = UDim2.new(0.8, 0, 0, 1),
					}),
					BodyTextContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 4,
						Size = UDim2.new(1, 0, 0, bodyTextContainerHeight),
					}, {
						BodyText = Roact.createElement(ThemedTextLabel, {
							Size = UDim2.new(1, 0, 1, 0),
							Text = props.bodyText,
							TextWrapped = true,
						})
					}),
					ButtonContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 5,
						Size = UDim2.new(1, 0, 0, 36),
					}, {
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							Padding = UDim.new(0, 10),
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						CancelButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
							layoutOrder = 1,
							size = UDim2.new(0.5, -5, 1, 0),
							text = props.cancelText,
							onActivated = props.onCancel,
						}),
						ConfirmButton = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
							layoutOrder = 2,
							size = UDim2.new(0.5, -5, 1, 0),
							text = props.confirmText,
							onActivated = props.onConfirm,
						}),
					}),
				}),
			}),
		})
	end)
end

function ConfirmationDialog:updateBlur()
	local shouldBlur = self.props.blurBackground and self.props.visible
	RunService:SetRobloxGuiFocused(shouldBlur)
end

-- TODO: consider if we want to have a button selection model like the old menu rather than enter always confirming
function ConfirmationDialog:bindActions()
	local function confirmFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.onConfirm()
		end
	end

	if self.props.bindReturnToConfirm then
		ContextActionService:BindCoreAction(
			MODAL_CONFIRM_ACTION, confirmFunc, false, Enum.KeyCode.Return)
	end

	local function cancelFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.onCancel()
		end
	end

	ContextActionService:BindCoreAction(
		MODAL_CANCEL_ACTION, cancelFunc, false, Enum.KeyCode.Escape)
end

function ConfirmationDialog:unbindActions()
	ContextActionService:UnbindCoreAction(MODAL_CONFIRM_ACTION)
	ContextActionService:UnbindCoreAction(MODAL_CANCEL_ACTION)
end

function ConfirmationDialog:didMount()
	self:updateBlur()

	if self.props.visible then
		self:bindActions()
	end
end

function ConfirmationDialog:didUpdate()
	self:updateBlur()

	if self.props.visible then
		self:bindActions()
	else
		self:unbindActions()
	end
end

function ConfirmationDialog:willUnmount()
	if self.props.blurBackground then
		RunService:SetRobloxGuiFocused(false)
	end
	self:unbindActions()
end

return ConfirmationDialog
