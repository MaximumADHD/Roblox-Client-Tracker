local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local AssetImportService = game:GetService("AssetImportService")

local UI = Framework.UI
local Pane = UI.Pane

local Container = UI.Container
local LoadingBar = UI.LoadingBar
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local trimFilename = require(Plugin.Src.Utility.trimFilename)

local ProgressWidget = Roact.PureComponent:extend("ProgressWidget")

local function getWidgetContent(filename, doneUploading, uploadSucceeded, progress, uploadStyle, localization)
	local content
	if not doneUploading then
		content = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			Size = UDim2.new(1, 0, 1, 30),
		}, {
			LoadingText = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Size = uploadStyle.TextLabelSize,
				Text = string.format("%s %s... (%s%%)", localization:getText("Upload", "Uploading"), trimFilename(filename), tostring(math.floor(progress * 100))),
				TextSize = uploadStyle.SubtextSize,
				TextXAlignment = uploadStyle.TextAlignment,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			LoadingBarContainer = Roact.createElement(Container, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, uploadStyle.LoadingBarHeight),
			}, {
				LoadingBar = Roact.createElement(LoadingBar, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 10),
					Size = uploadStyle.LoadingBarContainerSize,
					Progress = progress,
				}),
			}),
		})
	else
		if uploadSucceeded then
			content = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Vertical,
			}, {
				Title = Roact.createElement(TextLabel, {
					LayoutOrder = 1,
					Size = uploadStyle.TextLabelSize,
					Position = UDim2.new(1, 0, 1, 50),
					Text = localization:getText("Upload", "Success"),
					TextSize = uploadStyle.TextSize,
					TextXAlignment = uploadStyle.TextAlignment,
					TextColor = uploadStyle.SuccessColor,
				}),
				Description = Roact.createElement(TextLabel, {
					LayoutOrder = 2,
					Size = uploadStyle.TextLabelSize,
					Position = UDim2.new(1, 0, 1, 50),
					Text = localization:getText("Upload", "SuccessDescription"),
					TextSize = uploadStyle.SubtextSize,
					TextXAlignment = uploadStyle.TextAlignment,
				})
			})
		else
			content = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Vertical,
			}, {
				Title = Roact.createElement(TextLabel, {
					LayoutOrder = 1,
					Size = uploadStyle.TextLabelSize,
					Position = UDim2.new(1, 0, 1, 50),
					Text = localization:getText("Upload", "Failure"),
					TextSize = uploadStyle.TextSize,
					TextXAlignment = uploadStyle.TextAlignment,
					TextColor = uploadStyle.FailureColor,
				}),
				Description = Roact.createElement(TextLabel, {
					LayoutOrder = 2,
					Size = uploadStyle.TextLabelSize,
					Position = UDim2.new(1, 0, 1, 50),
					-- TODO: follow this with list of errors from UploadSession
					Text = localization:getText("Upload", "FailureDescription"),
					TextSize = uploadStyle.SubtextSize,
					TextXAlignment = uploadStyle.TextAlignment,
				})
			})
		end
	end
	return content
end

function ProgressWidget:init()
	self.state = {
		doneUploading = false,
		uploadSucceeded = false,
		progressValue = 0,
	}

	self.onButtonPressed = function(key)
		if key == "Close" then
			self.props.OnClose()
		end
	end
end

function ProgressWidget:didMount()
	self._updateImportProgress = function(progressValue)
		if progressValue > self.state.progressValue then
			self:setState({ progressValue = progressValue })
		end
	end

	self._updateImportSuccess = function(succeeded)
		self:setState({ doneUploading = true, uploadSucceeded = succeeded, })
	end

	self._updateImportProgressConnection = AssetImportService.ProgressUpdate:Connect(self._updateImportProgress)
	self._updateImportSuccessConnection = AssetImportService.UploadFinished:Connect(self._updateImportSuccess)
end

function ProgressWidget:didUnmount()
	self._updateImportProgressConnection:Disconnect()
	self._updateImportSuccessConnection:Disconnect()
end

function ProgressWidget:render()
	local props = self.props
	local localization = self.props.Localization

	local style = props.Stylizer
	local uploadStyle = style.UploadWidget

	-- Loading bar progress
	local progress = self.state.progressValue or 0

	-- Progress booleans
	local doneUploading = self.state.doneUploading
	local uploadSucceeded = self.state.uploadSucceeded

	local buttons
	if doneUploading then
		buttons = {
			{ Key = "Close", Text = localization:getText("Plugin", "Close") },
		}
	else
		buttons = {}
	end

	local content = getWidgetContent(props.Filename, doneUploading, uploadSucceeded, progress, uploadStyle, localization)

	return Roact.createElement(StyledDialog, {
		Enabled = true,
		MinContentSize = Vector2.new(uploadStyle.Width, uploadStyle.Height),
		Modal = false,
		Resizable = false,
		Title = props.Title,
		Buttons = buttons,
		OnClose = props.OnClose,
		OnButtonPressed = self.onButtonPressed,
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		Style = "FullBleed",
	}, {
		Content = content,
	})
end

ProgressWidget = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(ProgressWidget)

local function mapDispatchToProps(dispatch)
	return {}
end

local function mapStateToProps(state)
	return {
		Filename = state.filename,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ProgressWidget)

-- return ProgressWidget
