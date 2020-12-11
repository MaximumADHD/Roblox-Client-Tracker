--[[
	Contents which appear inside a BlockingDialog for error popups.

	Props:
		string ErrorHeader = used for header in dialog window.
		string ErrorKey = category of error. Currnetly either "EditorErrors" or
			"Rig Errors" (default). Used to index into localization table
		string ErrorType = The type of error which triggered this dialog. This
			is used to index into the Localization table to display a message.
		table Entries = A list of strings to format into the error message.
]]

local PADDING = 10
local HEADER_HEIGHT = 21

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local Constants = require(Plugin.SrcDeprecated.Util.Constants)
local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local withLocalization = UILibrary.Localizing.withLocalization

local ErrorDialogContents = Roact.PureComponent:extend("ErrorDialogContents")

function ErrorDialogContents:renderInternal(renderFunc)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			return renderFunc(theme, localization)
		end)
	end)
end

function ErrorDialogContents:render()
	return self:renderInternal(function(theme, localization)
		local dialogTheme = theme.dialogTheme
		local props = self.props
		local entries = props.Entries
		local errorType = props.ErrorType
		local errorKey = props.ErrorKey or Constants.RIG_ERRORS_KEY
		local errorHeader = props.ErrorHeader or Constants.RIG_ERRORS_HEADER_KEY
		local entryList
		if entries then
			entryList = table.concat(entries, "; ")
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, PADDING)
			}),

			Header = Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				BackgroundTransparency = 1,
			}, {
				Icon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, HEADER_HEIGHT, 0, HEADER_HEIGHT),
					BackgroundTransparency = 1,
					Image = dialogTheme.errorImage,
				}),

				Text = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -HEADER_HEIGHT, 1, 0),
					Position = UDim2.new(0, HEADER_HEIGHT + PADDING, 0, 0),
					BackgroundTransparency = 1,
					TextSize = dialogTheme.textSize,
					TextColor3 = dialogTheme.textColor,
					Font = dialogTheme.headerFont,
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = localization:getText(Constants.DIALOG_KEY, errorHeader),
				}),
			}),

			Body = Roact.createElement("TextLabel", {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT - PADDING),
				BackgroundTransparency = 1,
				TextSize = dialogTheme.textSize,
				TextColor3 = dialogTheme.textColor,
				Font = theme.font,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Text = localization:getText(errorKey, errorType, entryList),
			}),
		})
	end)
end

return ErrorDialogContents
