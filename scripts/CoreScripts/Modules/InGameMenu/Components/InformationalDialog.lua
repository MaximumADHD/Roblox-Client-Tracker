--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local Flags = InGameMenu.Flags
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local Constants = require(InGameMenu.Resources.Constants)
local Assets = require(InGameMenu.Resources.Assets)

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local FocusHandler = require(script.Parent.Connection.FocusHandler)

local MODAL_CONFIRM_ACTION = "InGameMenuModalConfirm"
local BUTTONS_SELECTION_PARENT = "InGameMenuModalButtonsSelectionParent"

local InformationalDialog = Roact.PureComponent:extend("InformationalDialog")

-- Constants
local ICON_SIZE = 64
local TEXT_HEIGHT = 335
local BUTTON_CONTAINER_SIZE = 36
local BOTTOM_PADDING = 20
local TITLE_BAR = 48
local DIVIDER = 1

InformationalDialog.validateProps = t.strictInterface({
	bodyText = t.string,
	confirmText = t.string,
	titleText = t.string,
	subBodyText = t.optional(t.string),
	iconImage = t.optional(t.union(t.table, t.string)),
	iconSize = t.number,
	onContinueFunc = t.optional(t.callback),
	bindReturnToConfirm = t.boolean,
	blurBackground = t.boolean,
	visible = t.boolean,
	inputType = t.optional(t.string),
})

InformationalDialog.defaultProps = {
	subBodyText = nil,
	blurBackground = false,
	iconImage = nil,
	iconSize = ICON_SIZE,
}

-- NOTE: This file is deprecated. Please do not use. PR to change the usage of it:
-- https://jira.rbx.com/browse/SOCRTC-1779
function InformationalDialog:init()
	self.state = {
		isRooted = false,
		show = true,
	}

	self.onAncestryChanged = function(instance)
		if instance:IsDescendantOf(game) then
			self:setState({
				isRooted = true
			})
		end
	end
	self.confirmButtonRef = Roact.createRef()
	self.buttonContainerRef = Roact.createRef()
end

function InformationalDialog:render()
	local props = self.props

	return withStyle(function(style)
		local bodyFont = style.Font.Body.Font
		local bodyFontSize = style.Font.Body.RelativeSize * style.Font.BaseSize
		local bodyText = props.bodyText
		local textHeight = TextService:GetTextSize(
			bodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(TEXT_HEIGHT - 2 * BOTTOM_PADDING, math.huge)
		).Y
		local subTextHeight = TextService:GetTextSize(
			props.subBodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(TEXT_HEIGHT - 2 * BOTTOM_PADDING, math.huge)
		).Y

		local bodyTextContainerHeight = BOTTOM_PADDING + math.max(textHeight, bodyFontSize * 2)
		local subBodyTextContainerHeight = BOTTOM_PADDING + math.max(subTextHeight, bodyFontSize * 2)

		local shouldForgetPreviousSelection = nil -- can be inlined when GetFFlagIGMGamepadSelectionHistory is removed
		if GetFFlagIGMGamepadSelectionHistory() then
			shouldForgetPreviousSelection = not self.props.visible
		end

		return Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			InGameMenuInformationalDialog = Roact.createElement("ScreenGui", {
				DisplayOrder = 8,
				IgnoreGuiInset = true,
				OnTopOfCoreBlur = props.blurBackground,
				Enabled = props.visible and self.state.show,
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
					Size = UDim2.new(0, TEXT_HEIGHT, 0, TITLE_BAR + DIVIDER + bodyTextContainerHeight + subBodyTextContainerHeight + BUTTON_CONTAINER_SIZE + 3.5 * BOTTOM_PADDING + props.iconSize),
					SliceCenter = Assets.Images.RoundedRect.SliceCenter,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, BOTTOM_PADDING),
						PaddingBottom = UDim.new(0, BOTTOM_PADDING),
						PaddingLeft = UDim.new(0, BOTTOM_PADDING),
						PaddingRight = UDim.new(0, BOTTOM_PADDING),
					}),
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Icon = Roact.createElement(ImageSetLabel, {
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = props.iconImage,
						Size = UDim2.new(0, props.iconSize, 0, props.iconSize),
						LayoutOrder = 1,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					}),
					Title = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",

						LayoutOrder = 2,
						Size = UDim2.new(1, 0, 0, TITLE_BAR),
						Text = props.titleText,
					}),
					Divider = Roact.createElement("Frame", {
						BackgroundColor3 = style.Theme.Divider.Color,
						BackgroundTransparency = style.Theme.Divider.Transparency,
						BorderSizePixel = 0,
						LayoutOrder = 3,
						Size = UDim2.new(0.8, 0, 0, 1),
					}),
					SpaceContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 4,
						Size = UDim2.new(1, 0, 0, 10),
					}),
					BodyTextContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 5,
						Size = UDim2.new(1, 0, 0, bodyTextContainerHeight),
					}, {
						BodyText = Roact.createElement(ThemedTextLabel, {
							Size = UDim2.new(1, 0, 1, 0),
							Text = props.bodyText,
							TextWrapped = true,
						})
					}),
					SubBodyTextContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 6,
						Size = UDim2.new(1, 0, 0, subBodyTextContainerHeight),
					}, {
						BodyText = Roact.createElement(ThemedTextLabel, {
							Size = UDim2.new(1, 0, 1, 0),
							Text = props.subBodyText,
							TextWrapped = true,
						})
					}),
					SpaceContainer2 = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 7,
						Size = UDim2.new(1, 0, 0, 10),
					}),
					ButtonContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 8,
						Size = UDim2.new(1, 0, 0, BUTTON_CONTAINER_SIZE),
						[Roact.Ref] = self.buttonContainerRef,
						[Roact.Event.AncestryChanged] = self.onAncestryChanged,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							Padding = UDim.new(0, BOTTOM_PADDING),
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						ConfirmButton = Roact.createElement(Button, {
							buttonType = ButtonType.PrimarySystem,
							layoutOrder = 1,
							size = UDim2.new(1, -5, 1, 0),
							text = props.confirmText,
							onActivated = function()
								self:setState({
									show = false
								})
								if self.props.onContinueFunc then
									self.props.onContinueFunc()
								end
								RunService:SetRobloxGuiFocused(false)
							end,
							[Roact.Ref] = self.confirmButtonRef,
						}),
					}),
				}),
			}),
			FocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.state.isRooted
					and self.props.visible
					and self.props.inputType == Constants.InputType.Gamepad,
				shouldForgetPreviousSelection = shouldForgetPreviousSelection,
				didFocus = function()
					GuiService:RemoveSelectionGroup(BUTTONS_SELECTION_PARENT)
					GuiService:AddSelectionParent(BUTTONS_SELECTION_PARENT, self.buttonContainerRef:getValue())

					GuiService.SelectedCoreObject = self.confirmButtonRef:getValue()
				end,
			})
		})
	end)
end

function InformationalDialog:updateBlur()
	local shouldBlur = self.props.blurBackground and self.props.visible
	RunService:SetRobloxGuiFocused(shouldBlur)
end

function InformationalDialog:bindActions()
	local function confirmFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.onConfirm()
		end
	end

	if self.props.bindReturnToConfirm then
		ContextActionService:BindCoreAction(
			MODAL_CONFIRM_ACTION, confirmFunc, false, Enum.KeyCode.Return)
	end
end

function InformationalDialog:unbindActions()
	ContextActionService:UnbindCoreAction(MODAL_CONFIRM_ACTION)
end

function InformationalDialog:didMount()
	self:updateBlur()

	if self.props.visible then
		self:bindActions()
	end
end

function InformationalDialog:didUpdate()
	self:updateBlur()

	if self.props.visible then
		self:bindActions()
	else
		self:unbindActions()
	end
end

function InformationalDialog:willUnmount()
	if self.props.blurBackground then
		RunService:SetRobloxGuiFocused(false)
	end
	self:unbindActions()
end

return InformationalDialog
