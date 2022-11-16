--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Components = script.Parent.Parent.Parent
local InGameMenu = Components.Parent
local Constants = require(InGameMenu.Resources.Constants)

local GameIcon = require(Components.GameIcon)
local FavoriteButton = require(Components.FavoriteButton)
local Assets = require(InGameMenu.Resources.Assets)
local Images = Assets.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local SecondaryButton = UIBlox.App.Button.SecondaryButton

-- TODO need to be replaced by uiBlox
-- https://jira.rbx.com/browse/UIBLOX-147
local ThemedTextLabel = require(Components.ThemedTextLabel)
local withStyle = UIBlox.Core.Style.withStyle
local FocusHandler = require(Components.Connection.FocusHandler)
local ZonePortal = require(Components.ZonePortal)

local Direction = require(InGameMenu.Enums.Direction)

local LEAVE_CONFIRM_ACTION = "LeavePromptConfirm"

local ITEM_PADDING = 24

local BUTTON_PADDING = 12
local BUTTON_WIDTH = Constants.PageWidth - 48
local BUTTON_HEIGHT = 36

local DROP_SHADOW_IMAGE = Images.DropShadowFavorite
local DROP_SHADOW_HEIGHT = 17
local DROP_SHADOW_SLICE = Rect.new(10, 0, 20, 8)
local DROP_SHADOW_TRANSPARENCY = 0.3

local platform = UserInputService:GetPlatform()
local isMobileClient = (platform == Enum.Platform.IOS) or (platform == Enum.Platform.Android)

local LeavePrompt = Roact.PureComponent:extend("LeavePrompt")

LeavePrompt.validateProps = t.strictInterface({
	titleText = t.string,
	bodyText = t.string,
	confirmText = t.string,
	cancelText = t.string,
	onConfirm = t.callback,
	onCancel = t.callback,
	canGamepadCaptureFocus = t.boolean,
	canKeyboardCaptureFocus = t.boolean,
	homeView = t.boolean,
})

LeavePrompt.defaultProps = {
	homeView = false,
	canGamepadCaptureFocus = false,
	canKeyboardCaptureFocus = false,
}

function LeavePrompt:init()
	self.leaveButtonRef = Roact.createRef()

	self.onConfirm = function()
		if self.props.onConfirm then
			self.props.onConfirm()
		end
	end
	self.onCancel = function()
		if self.props.onCancel then
			self.props.onCancel()
		end
	end
end

function LeavePrompt:render()

	local returnHomeMode = self.props.homeView

	return withStyle(function(style)
		local font = style.Font

		local oldContent = {
			Background = Roact.createElement("ImageLabel", {
				Visible = returnHomeMode,
				Size = UDim2.new(1,0, 0, if isMobileClient then 375 else 1024),
				Image = if isMobileClient then Images.LeaveGameTilesBackground else Images.LeaveGameTilesBackgroundDesktop,
				BackgroundTransparency = 1,
				ZIndex = 0,
			}, {
				Gradient = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1,0, 0, 24),
					Image = Images.ButtonStackGradient,
					BackgroundTransparency = 1,
					ZIndex = 0,
					Position = UDim2.new(0, 0, 1, -24),
				}),
			}),
			Foreground = Roact.createElement("Frame", {
				Size = UDim2.new(1,0, 1,0),
				BackgroundTransparency = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Body = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -127),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						Padding = UDim.new(0, ITEM_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					HomeFrame = returnHomeMode and Roact.createElement("Frame", {
						Size = UDim2.new(0, 100, 0, 110),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
					},{
						RobloxLogo = returnHomeMode and Roact.createElement("ImageLabel", {
							Image = Images.LeaveRobloxLogo,
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 120, 0, 120),
							LayoutOrder = 0,
						}),
					}) or nil,
					FavoriteGameFrame = not returnHomeMode and Roact.createElement("Frame", {
						Size = UDim2.new(0, 180, 0, 110),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
					},{
						Bar = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, 66),
							LayoutOrder = 1,
							AnchorPoint = Vector2.new(0, 1),
							Position = UDim2.new(0,0,1,0),
							BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
							ZIndex = 0,
						}, {
							UICorner = Roact.createElement("UICorner", {
								CornerRadius = UDim.new(0, 8),
							}),
						}),
						GameThumbnailDropShadow = Roact.createElement(ImageSetLabel, {
							Size = UDim2.new(0, 100, 0, DROP_SHADOW_HEIGHT),
							Position = UDim2.new(0, 12, 1, -2),
							AnchorPoint = Vector2.new(0, 1),
							BackgroundTransparency = 1,
							Image = DROP_SHADOW_IMAGE,
							ImageColor3 = style.Theme.DropShadow.Color,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = DROP_SHADOW_SLICE,
							ImageTransparency = DROP_SHADOW_TRANSPARENCY,
							LayoutOrder = 2,
						}),
						FavoriteButtonDropShadow = Roact.createElement(ImageSetLabel, {
							Size = UDim2.new(0, 44, 0, DROP_SHADOW_HEIGHT),
							AnchorPoint = Vector2.new(1, 1),
							Position = UDim2.new(1, -12, 1, -2),
							BackgroundTransparency = 1,
							Image = DROP_SHADOW_IMAGE,
							ImageColor3 = style.Theme.DropShadow.Color,
							ImageTransparency = DROP_SHADOW_TRANSPARENCY,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = DROP_SHADOW_SLICE,
							LayoutOrder = 3,
						}),
						FavoriteButton = Roact.createElement(FavoriteButton, {
							Position = UDim2.new(1, -12, 1, -10),
							AnchorPoint = Vector2.new(1, 1),
							LayoutOrder = 5,
						}),
						GameThumbnail = Roact.createElement(GameIcon, {
							Position  = UDim2.new(0, 12, 0, 0),
							gameId = game.GameId,
							cornerRadius = UDim.new(0, 8),
							iconSize = 100,
							layoutOrder = 4,
						}),
					}),
					TitleText = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",
						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 0, font.Header1.RelativeSize * font.BaseSize + 4),
						Text = self.props.titleText,
					}),
					BodyText = Roact.createElement(ThemedTextLabel, {
						fontKey = "Body",
						themeKey = "TextDefault",
						LayoutOrder = 3,
						Size = UDim2.fromOffset(BUTTON_WIDTH, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						Text = self.props.bodyText,
						TextWrapped = true,
					}),
				}),
				Gradient = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1,0, 0, 24),
					Image = Images.ButtonStackGradient,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}),
				ButtonGroup = Roact.createElement("Frame", {
					BackgroundColor3 = style.Theme.BackgroundDefault.Color,
					Size = UDim2.new(1, 0, 0, 2 * BUTTON_HEIGHT + BUTTON_PADDING + 24),
					LayoutOrder = 4,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						Padding = UDim.new(0, BUTTON_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					ConfirmButton = Roact.createElement(PrimarySystemButton, {
						layoutOrder = 4,
						size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT),
						onActivated = self.onConfirm,
						text = self.props.confirmText,
						buttonRef = self.leaveButtonRef,
					}),
					CancelButton = Roact.createElement(SecondaryButton, {
						layoutOrder = 5,
						position = UDim2.fromOffset(0, BUTTON_HEIGHT + BUTTON_PADDING),
						size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT),
						onActivated = self.onCancel,
						text = self.props.cancelText,
					}),
				}),
			})
		}

		local newContent = {
			Content = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Selectable = false,
			}, oldContent),
			FocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.props.canGamepadCaptureFocus,

				didFocus = function()
					GuiService.SelectedCoreObject = self.leaveButtonRef.current
				end,
			}),
			ZonePortal = Roact.createElement(ZonePortal, {
				targetZone = 0,
				direction = Direction.Left,
			}),
			-- this keyboard focus handler is used to bind keyboard Return key to exit
			KeyboardFocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.props.canKeyboardCaptureFocus,
				didFocus = function()
					ContextActionService:BindCoreAction(
						LEAVE_CONFIRM_ACTION, function(actionName, inputState)
							if inputState == Enum.UserInputState.End then
								self.props.onConfirm()
								return Enum.ContextActionResult.Sink
							end
							return Enum.ContextActionResult.Pass
						end, false, Enum.KeyCode.Return)
				end,

				didBlur = function()
					ContextActionService:UnbindCoreAction(LEAVE_CONFIRM_ACTION)
				end,
			}) or nil,
		}

		return Roact.createElement("ImageButton", {
			Size = UDim2.fromScale(1, 1),
			AutoButtonColor = false,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			Selectable = false,
		}, newContent)
	end)
end

return LeavePrompt
