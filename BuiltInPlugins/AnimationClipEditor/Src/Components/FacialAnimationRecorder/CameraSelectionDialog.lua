--[[
	A wrapped style dialog to show a dialog with confirm and cancel

	Required Props:
		callback OnConfirm: function to call when click confirm button
		callback OnClose: function to call when close dialog or click cancel button
		table Localization: A Localization ContextItem, which is provided via withContext.
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local BORDER_PADDING = 20

local CONTENT_SPACING = 10

local TEXT_WIDTH = 450
local singleItemHeight = 30
local DEFAULT_CAMERA_SELECTINPUT_HEIGHT = 40

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StudioUI = Framework.StudioUI
local UI = Framework.UI
local StyledDialog = StudioUI.StyledDialog
local SelectInput = UI.SelectInput
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local GetTextSize = Framework.Util.GetTextSize

local VideoCaptureService = game:GetService("VideoCaptureService")

local CameraSelectionDialog = Roact.PureComponent:extend("CameraSelectionDialog")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(CameraSelectionDialog, script)

local MessageBoxConfirm = "Confirm"

function CameraSelectionDialog:init()
	local props = self.props
	self.onMessageBoxButtonClicked = function(key)
		props.OnClose()
	end
end

function CameraSelectionDialog:render()
	local props = self.props
	local localization = props.Localization
	local title = props.Title or localization:getText("Dialog", "DefaultTitle")
	local theme = props.Stylizer
	local onClose = props.OnClose

	local cameraDevicesList = VideoCaptureService:GetCameraDevices()
	local currentCameraDeviceID = VideoCaptureService.CameraID
	local dropdownItems = {}
	local guids = {}
	local currentlySelectedIndex = nil
	local index: number = 1
	for guid, name in pairs(cameraDevicesList) do
		table.insert(dropdownItems, name)
		table.insert(guids, guid)
		if guid == currentCameraDeviceID then
			currentlySelectedIndex = index
		end
		index += 1
	end

	local mediumFontSize = 20

	local titleText = localization:getText("FaceCapture", "CameraSelectionTitle")
	local titleTextFontSize = mediumFontSize
	local titleTextFont = Enum.Font.SourceSansBold
	local titleTextSize = GetTextSize(titleText, titleTextFontSize, titleTextFont, Vector2.new(TEXT_WIDTH, 1000))

	local bodyText = localization:getText("FaceCapture", "CameraSelectionBody")
	local bodyTextFontSize = mediumFontSize
	local bodyTextFont = Enum.Font.SourceSans
	local bodyTextSize = GetTextSize(bodyText, bodyTextFontSize, bodyTextFont, Vector2.new(TEXT_WIDTH, 1000))

	local usedItemsHeight = math.max(singleItemHeight * index, DEFAULT_CAMERA_SELECTINPUT_HEIGHT)

	local contentHeight = titleTextSize.Y + bodyTextSize.Y + 2 * CONTENT_SPACING + usedItemsHeight
	local defaultSize = Vector2.new(TEXT_WIDTH, contentHeight)

	return Roact.createElement(StyledDialog, {
		Title = titleText,
		OnClose = onClose,
		BorderPadding = BORDER_PADDING,
		OnButtonPressed = self.onMessageBoxButtonClicked,
		Buttons = {
			{ Text = props.Localization:getText("Dialog", "Confirm"), Key = MessageBoxConfirm, Style = "RoundPrimary" },
		},
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		MinContentSize = defaultSize,
		Modal = true,
	}, {
		Content = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.XY,
			Spacing = CONTENT_SPACING,
		}, {
			TitleLabel = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = titleText,
				Font = titleTextFont,
				TextSize = titleTextFontSize,
				TextColor3 = theme.TextColor,
				BackgroundTransparency = 1.0,
				TextWrapped = true,
				LayoutOrder = 1,
			}),

			BodyLabel = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = bodyText,
				Font = bodyTextFont,
				TextSize = bodyTextFontSize,
				TextColor3 = theme.TextColor,
				BackgroundTransparency = 1.0,
				TextWrapped = true,
				LayoutOrder = 2,
			}),

			SelectInputWrapper = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 4,
			}, {
				CameraSelection = Roact.createElement(SelectInput, {
					PlaceholderText = localization:getText("FaceCapture", "CameraSelectionPlaceholder"),
					Width = TEXT_WIDTH,
					SelectedIndex = currentlySelectedIndex,
					Items = dropdownItems,
					OnItemActivated = function(value, index)
						local selectedGuid = guids[index]
						VideoCaptureService.CameraID = selectedGuid
						-- TODO: currently this view is being rerendered by the parrent view
						-- in the future we should somehow trigger the render on the select input button click
						self:setState({
							selectedGuid = selectedGuid,
						})
					end,
				}),
			}),
		}),
	})
end

CameraSelectionDialog = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(CameraSelectionDialog)

return CameraSelectionDialog
