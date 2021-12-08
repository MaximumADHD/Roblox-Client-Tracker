--[[
	Modal dialog to confirm how to handle scripts when inserting models
	containing scripts.

    This is pretty similar to MessageBox except less configurable and
    with a checkbox to toggle not showing the dialog in the future which
    is bound to the setting.
]]

local Plugin = script.Parent.Parent.Parent
local FFlagStudioScriptToggleContextItem = game:GetFastFlag("StudioScriptToggleContextItem")
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)
local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local withModal = ContextHelper.withModal
local withLocalization = ContextHelper.withLocalization
local UI = Framework.UI
local Checkbox = UI.Checkbox
local Dialog = require(Plugin.Core.Components.PluginWidget.Dialog)
local MessageBoxButton = require(Plugin.Core.Components.MessageBox.MessageBoxButton)
local ScriptConfirmationDialog = Roact.PureComponent:extend("ScriptConfirmationDialog")

function ScriptConfirmationDialog:init(props)
	-- If the owner of the message box calls setState() when the user clicks
	-- a button, it triggers this and the dialog to be destroyed. Because we
	-- listen for ancestry changed on the dialog to get when it's closing,
	-- and then pass that to the parent, it can lead to setState() being
	-- called during a render. Using this and checking for it before sending
	-- to parent prevents that.
	self.isDead = false

	self.onEnabledChanged = function(rbx)
		if self.isDead then
			return
		end
		if not rbx.Enabled and self.props.onClose then
			self.props.onClose()
		end
	end

	self.onAncestryChanged = function(rbx, child, parent)
		if self.isDead then
			return
		end
		if not parent and self.props.onClose then
			self.props.onClose()
		end
	end

	self.onToggleShowAgain = function()
		local newState = not self.state.checked 
		self:setState({
			checked = newState
		})
		self.props.onChangeShowDialog(not newState)
	end

	self:setState({
		checked = false,
	})
end

function ScriptConfirmationDialog:willUnmount()
	-- Mark this message box as dead so we don't send signals from the
	-- dialog to the parent
	self.isDead = true
end

function ScriptConfirmationDialog:render()
	return withModal(function(modalTarget)
		return withLocalization(function(localization, localizedContent)
			return self:renderContent(modalTarget, localization, localizedContent)
		end)
	end)
end

function ScriptConfirmationDialog:renderContent(modalTarget, localization, localizedContent)
	local props = self.props
	local state = self.state
	local theme = props.Stylizer

	local info = props.Info

	local detailText = localization:getScriptConfirmation(info.assetName, info.numScripts)
	local detailTextFontSize = Constants.FONT_SIZE_MEDIUM
	local detailTextFont = Constants.FONT_BOLD

	local instructionText = localizedContent.ScriptWarning.InstructionText
	if FFlagStudioScriptToggleContextItem then
		instructionText = instructionText .. " " .. localizedContent.ScriptWarning.InstructionText2
	end
	local instructionTextFontSize = Constants.FONT_SIZE_MEDIUM
	local instructionTextFont = Constants.FONT

	local dontShowAgainText = localizedContent.ScriptWarning.DontShowAgain
	local dontShowAgainTextFontSize = Constants.FONT_SIZE_MEDIUM
	local dontShowAgainTextFont = Constants.FONT

    local okText = localizedContent.PurchaseFlow.OK
    local titleText = localizedContent.ToolboxToolbarName

	local buttonsHeight = 23
	local buttonWidth = Constants.MESSAGE_BOX_BUTTON_WIDTH
	local buttonPadding = 8

	local minWidth = 120
	-- Wrap the texts at the same point
	local wrapTextWidth = 424

	local detailTextOneLineSize = Constants.getTextSize(detailText, detailTextFontSize, detailTextFont)
	local instructionOneLineTextSize = Constants.getTextSize(instructionText, instructionTextFontSize, instructionTextFont)
	local dontShowAgainTextOneLineSize = Constants.getTextSize(dontShowAgainText, dontShowAgainTextFontSize, dontShowAgainTextFont)

	local checkboxIconPadding = 16
	-- Wrap all texts, get the bigger of the 3
	local textWidth = math.max(
		math.min(detailTextOneLineSize.X, wrapTextWidth),
		math.min(instructionOneLineTextSize.X, wrapTextWidth),
		math.min(dontShowAgainTextOneLineSize.X, wrapTextWidth) + checkboxIconPadding
	)

	-- Need to still have the icon instance for list layout padding to work
	-- But set the width to 0 so it's not visible
	local iconSize = 32
	local iconToTextPadding = 20
	local fullIconWidth = iconSize + iconToTextPadding
	local topWidth = fullIconWidth + textWidth

	-- Buttons + padding between simplified from MessageBox because we only have one
	local buttonsWidth = buttonWidth

	-- Bigger of the buttons and text+icon, but also no less than min
	local innerMaxWidth = math.max(math.max(buttonsWidth, topWidth), minWidth)

	local maxTextWidth = innerMaxWidth - fullIconWidth

	local detailTextSize = Constants.getTextSize(detailText, detailTextFontSize, detailTextFont,
		Vector2.new(maxTextWidth, 1000))
	local instructionTextSize = Constants.getTextSize(instructionText, instructionTextFontSize, instructionTextFont,
		Vector2.new(maxTextWidth, 1000))
	local dontShowAgainTextSize = Constants.getTextSize(dontShowAgainText, dontShowAgainTextFontSize, dontShowAgainTextFont,
		Vector2.new(maxTextWidth - checkboxIconPadding, 1000))

	local textToInformativeTextPadding = 8
	local detailTextHeight = detailTextSize.Y
	local instructionTextHeight = instructionTextSize.Y
	local dontShowAgainTextHeight = dontShowAgainTextSize.Y

	local topHeight = math.max(iconSize, detailTextHeight + dontShowAgainTextHeight + instructionTextHeight + textToInformativeTextPadding)

	local topPadding = 8
	local outerPadding = 12

	local textToButtonsPadding = outerPadding
	local buttonsHeight = 23

	local boxWidth = outerPadding + innerMaxWidth + outerPadding
	local boxHeight = topPadding + topHeight + textToButtonsPadding + buttonsHeight + outerPadding

	return Roact.createElement(Dialog, {
		Name = props.Name,
		Title = titleText,
		Size = Vector2.new(boxWidth, boxHeight),
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		Modal = true,
		plugin = self.props.Plugin:get(),

		[Roact.Change.Enabled] = self.onEnabledChanged,
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
	}, {
		Background = Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.messageBox.backgroundColor,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, outerPadding),
				PaddingLeft = UDim.new(0, outerPadding),
				PaddingRight = UDim.new(0, outerPadding),
				PaddingTop = UDim.new(0, topPadding),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, textToButtonsPadding),
			}),

			Information = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, topHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Padding = UDim.new(0, iconToTextPadding),
					FillDirection = Enum.FillDirection.Horizontal,
				}),

				Icon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, iconSize, 0, iconSize),
					BackgroundTransparency = 1,
					LayoutOrder = 0,
					Image = props.Icon,
				}),

				Texts = Roact.createElement("Frame", {
					LayoutOrder = 1,
					Size = UDim2.new(1, -fullIconWidth, 1, 0),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						Padding = UDim.new(0, textToInformativeTextPadding),
						FillDirection = Enum.FillDirection.Vertical,
					}),

					DetailLabel = Roact.createElement("TextLabel", {
						LayoutOrder = 0,
						Size = UDim2.new(1, 0, 0, detailTextHeight),

						BackgroundTransparency = 1,
						Text = detailText,
						Font = detailTextFont,
						TextSize = detailTextFontSize,
						TextColor3 = theme.messageBox.textColor,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = true,
					}),

					InstructionLabel = Roact.createElement("TextLabel", {
						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 0, instructionTextHeight),

						BackgroundTransparency = 1,
						Text = instructionText,
						Font = instructionTextFont,
						TextSize = instructionTextFontSize,
						TextColor3 = theme.messageBox.textColor,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = true,
					}),

					ShowAgainCheckbox = Roact.createElement(Checkbox, {
						LayoutOrder = 2,
						Text = dontShowAgainText,
						Font = dontShowAgainTextFont,
						TextSize = dontShowAgainTextFontSize,
						OnClick = self.onToggleShowAgain,
						Size = UDim2.new(1, 0, 0, dontShowAgainTextHeight),
						Checked = state.checked,
					}),
				}),
			}),

			Buttons = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, buttonsHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, buttonPadding),
				}),

				OkButton = Roact.createElement(MessageBoxButton, {
					Text = okText,
					onButtonClicked = self.props.onClose,
				})
			})
		})
	})
end

ScriptConfirmationDialog = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(ScriptConfirmationDialog)
return ScriptConfirmationDialog
