local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

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

local SuccessWidget = require(Plugin.Src.Components.UploadWidgets.SuccessWidget)
local FailureWidget = require(Plugin.Src.Components.UploadWidgets.FailureWidget)
local trimFilename = require(Plugin.Src.Utility.trimFilename)

local getFFlagUseAssetImportSession = require(Plugin.Src.Flags.getFFlagUseAssetImportSession)
local getFFlagAssetImporterFixUnmount = require(Plugin.Src.Flags.getFFlagAssetImporterFixUnmount)

local ProgressWidget = Roact.PureComponent:extend("ProgressWidget")

function ProgressWidget:init()
	self.state = {
		doneUploading = false,
		uploadSucceeded = false,
		progressValue = 0,
		errorMap = {},
	}

	self.onButtonPressed = function(key)
		if key == "Close" then
			self.props.OnClose()
		end
	end

	self.getWidgetContent = function(uploadStyle, localization)
		local props = self.props
		local state = self.state

		local progress = state.progressValue or 0
		local progNumber = tostring(math.floor(progress * 100))
		local loadingText = string.format("%s %s... (%s%%)", localization:getText("Upload", "Uploading"), trimFilename(props.Filename), progNumber)

		local content
		if not state.doneUploading then
			content = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = uploadStyle.TopPadding,
			}, {
				LoadingText = Roact.createElement(TextLabel, {
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, 30),
					Text = loadingText,
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
			if state.uploadSucceeded then
				content = Roact.createElement(SuccessWidget)
			else
				content = Roact.createElement(FailureWidget, {
					LayoutOrder = 1,
					ErrorMap = state.errorMap,
				})
			end
		end
		return content
	end
end

function ProgressWidget:didMount()
	self._updateImportProgress = function(progressValue)
		if progressValue > self.state.progressValue then
			self:setState({ progressValue = progressValue })
		end
	end

	self._updateImportSuccess = function(succeeded, errorMap)
		self:setState({ doneUploading = true, uploadSucceeded = succeeded, errorMap = errorMap })
	end

	if getFFlagUseAssetImportSession() then
		self._updateImportProgressConnection = self.props.AssetImportSession.UploadProgress:Connect(self._updateImportProgress)
		self._updateImportSuccessConnection = self.props.AssetImportSession.UploadComplete:Connect(self._updateImportSuccess)
	else
		self._updateImportProgressConnection = AssetImportService.ProgressUpdate:Connect(self._updateImportProgress)
		self._updateImportSuccessConnection = AssetImportService.UploadFinished:Connect(self._updateImportSuccess)
	end
end

if getFFlagAssetImporterFixUnmount() then
	function ProgressWidget:willUnmount()
			self._updateImportProgressConnection:Disconnect()
			self._updateImportSuccessConnection:Disconnect()
	end
end

function ProgressWidget:render()
	local props = self.props
	local localization = props.Localization

	local style = props.Stylizer
	local uploadStyle = style.UploadWidget

	-- Loading bar progress
	local doneUploading = self.state.doneUploading

	local buttons
	if doneUploading then
		buttons = {
			{ Key = "Close", Text = localization:getText("Plugin", "Close") },
		}
	else
		buttons = {}
	end

	return Roact.createElement(StyledDialog, {
		Enabled = true,
		MinContentSize = Vector2.new(uploadStyle.Width, uploadStyle.Height),
		Modal = false,
		Resizable = true,
		MinSize = Vector2.new(500, 150), -- current does not do anything until StyledDialog is fixed to use MinSize
		Title = props.Title,
		Buttons = buttons,
		OnClose = props.OnClose,
		OnButtonPressed = self.onButtonPressed,
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
	}, {
		ContentInfo = self.getWidgetContent(uploadStyle, localization),
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
		AssetImportSession = state.assetImportSession,
		Filename = state.filename,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ProgressWidget)
