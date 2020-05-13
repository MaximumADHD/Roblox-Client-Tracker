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
local Divider = require(script.Parent.Divider)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local DIALOG_WIDTH = 312
local DIALOG_PADDING = 24

local MODAL_DISMISS_ACTION = "InGameMenuModalDismiss"

local InfoDialog = Roact.PureComponent:extend("InfoDialog")

InfoDialog.validateProps = t.strictInterface({
	bodyText = t.string,
	dismissText = t.string,
	titleText = t.string,
	iconImage = t.union(t.string, t.table),

	onDismiss = t.callback,
	visible = t.boolean,
})

function InfoDialog:render()
	local props = self.props

	return withStyle(function(style)
		local bodyFont = style.Font.Body.Font
		local bodyFontSize = style.Font.Body.RelativeSize * style.Font.BaseSize
		local bodyText = props.bodyText
		local textHeight = TextService:GetTextSize(
			bodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(DIALOG_WIDTH - DIALOG_PADDING * 2, math.huge)
		).Y

		-- 24px padding top, 24px padding bottom
		-- Minimum height of two lines of text.
		-- TODO: Line height!
		local bodyTextContainerHeight = DIALOG_PADDING * 2 + math.max(textHeight, bodyFontSize * 2)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Visible = props.visible,
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
				-- button (36px), bottom padding (24px), top padding (10px)
				-- height: title bar (48px), divider (1px), body text height, icon(36px)
				Size = UDim2.new(0, DIALOG_WIDTH, 0, 48 + 1 + bodyTextContainerHeight + 36 + 36 + DIALOG_PADDING + 10),
				SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 10),
					PaddingBottom = UDim.new(0, DIALOG_PADDING),
					PaddingLeft = UDim.new(0, DIALOG_PADDING),
					PaddingRight = UDim.new(0, DIALOG_PADDING),
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Icon = Roact.createElement(ImageSetLabel, {
					Size = UDim2.new(0, 36, 0, 36),
					BackgroundTransparency = 1,
					Image = self.props.iconImage,
					LayoutOrder = 1,
				}),
				Title = Roact.createElement(ThemedTextLabel, {
					fontKey = "Header1",
					themeKey = "TextEmphasis",

					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, 48),
					Text = props.titleText,
				}),
				Divider = Roact.createElement(Divider, {
					LayoutOrder = 3,
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
				ConfirmButton = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
					layoutOrder = 5,
					size = UDim2.new(1, 0, 0, 36),
					onActivated = props.onDismiss,
					text = props.dismissText,
				}),
			}),
		})
	end)
end

function InfoDialog:bindActions()
	local function dismissFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.onDismiss()
		end
	end

	ContextActionService:BindCoreAction(
		MODAL_DISMISS_ACTION, dismissFunc, false, Enum.KeyCode.Escape)
end

function InfoDialog:unbindActions()
	ContextActionService:UnbindCoreAction(MODAL_DISMISS_ACTION)
end

function InfoDialog:didMount()
	if self.props.visible then
		self:bindActions()
	end
end

function InfoDialog:didUpdate()
	if self.props.visible then
		self:bindActions()
	else
		self:unbindActions()
	end
end

function InfoDialog:willUnmount()
	self:unbindActions()
end

return InfoDialog
