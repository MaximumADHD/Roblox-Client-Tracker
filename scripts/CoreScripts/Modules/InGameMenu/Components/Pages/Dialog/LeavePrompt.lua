--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Components = script.Parent.Parent.Parent
local InGameMenu = Components.Parent

local GameIcon = require(Components.GameIcon)

local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local SecondaryButton = UIBlox.App.Button.SecondaryButton

-- TODO need to be replaced by uiBlox
-- https://jira.rbx.com/browse/UIBLOX-147
local ThemedTextLabel = require(Components.ThemedTextLabel)
local withStyle = UIBlox.Core.Style.withStyle
local FocusHandler = require(Components.Connection.FocusHandler)
local ZonePortal = require(Components.ZonePortal)

local Direction = require(InGameMenu.Enums.Direction)

local GetFFlagEnableVRFTUXExperience = require(RobloxGui.Modules.FTUX.Flags.GetFFlagEnableVRFTUXExperience)
local IsFTUXExperience = require(RobloxGui.Modules.FTUX.Utility.IsFTUXExperience)
local PlatformEnum = require(RobloxGui.Modules.FTUX.Enums.PlatformEnum)

local LEAVE_CONFIRM_ACTION = "LeavePromptConfirm"

local ITEM_PADDING = 24

local BUTTON_PADDING = 12
local BUTTON_WIDTH = 353
local BUTTON_HEIGHT = 36

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
})

LeavePrompt.defaultProps = {
	canGamepadCaptureFocus = false,
	canKeyboardCaptureFocus = false,
}

function LeavePrompt:init()
	self.leaveButtonRef = Roact.createRef()
end

function LeavePrompt:render()
	return withStyle(function(style)
		local font = style.Font

		local oldContent = {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, ITEM_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			GameThumbnail = Roact.createElement(GameIcon, {
				gameId = game.GameId,
				iconSize = 100,
				layoutOrder = 1,
			}),
			TitleText = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header1",
				themeKey = "TextEmphasis",
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, font.Header1.RelativeSize * font.BaseSize + 4),
				Text = self.props.titleText,
			}),
			BodyText = Roact.createElement(ThemedTextLabel, {
				fontKey = "Body",
				themeKey = "TextDefault",
				LayoutOrder = 3,
				Size = if (GetFFlagEnableVRFTUXExperience() and IsFTUXExperience(PlatformEnum.QuestVR))
					then UDim2.fromOffset(BUTTON_WIDTH, 4 * (font.Body.RelativeSize * font.BaseSize + 4))
					else UDim2.fromOffset(BUTTON_WIDTH, 2 * (font.Body.RelativeSize * font.BaseSize + 4)),
				Text = self.props.bodyText,
				TextWrapped = true,
			}),
			ButtonGroup = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(BUTTON_WIDTH, 2 * BUTTON_HEIGHT + BUTTON_PADDING),
				LayoutOrder = 4,
			}, {
				ConfirmButton = Roact.createElement(PrimarySystemButton, {
					layoutOrder = 4,
					position = UDim2.fromOffset(0, 0),
					size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT),
					onActivated = self.props.onConfirm,
					text = self.props.confirmText,
					buttonRef = self.leaveButtonRef,
				}),
				CancelButton = Roact.createElement(SecondaryButton, {
					layoutOrder = 5,
					position = UDim2.fromOffset(0, BUTTON_HEIGHT + BUTTON_PADDING),
					size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT),
					onActivated = self.props.onCancel,
					text = self.props.cancelText,
				}),
			}),
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
