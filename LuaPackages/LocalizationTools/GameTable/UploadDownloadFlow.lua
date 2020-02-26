local Promise = require(script.Parent.Parent.Promise)
local SourceStrings = require(script.Parent.Parent.SourceStrings)

local UploadDownloadFlow = {}
UploadDownloadFlow.__index = UploadDownloadFlow

--[[
	An object to control user-flow, such as when the user hits this button where do they end up.
	The constructor takes an object full of callbacks which expected to have:

	SetMessage = display a message string to the user
	OpenCSV = Open a CSV file for uploading
	ShowDialog =  Prompt the user for confirmation
	UploadPatch = Upload the patch to the internet

	DownloadGameTable = Download the entire table as a CSV
	SaveCSV = Save the CSV you just downloaded to your harddrive

	SetBusyMode = takes two boolean arguments nonInteractive, showProgressIndicator

	MakeRenderDialogContent = takes a patchInfo and returns a function that renders the dialog content
		for that patch.
]]
function UploadDownloadFlow.new(props)
	local flow = {
		_busy = false,
		props = props
	}

	setmetatable(flow, UploadDownloadFlow)
	return flow
end

local NOT_BUSY = {
	nonInteractive = false,
	showProgressIndicator = false,
}

local GETTING_USER_INPUT = {
	nonInteractive = true,
	showProgressIndicator = false,
}

local COMPUTING = {
	nonInteractive = true,
	showProgressIndicator = true,
}

local ErrorInfo = {}

function ErrorInfo.new(ribbonMessage, warningMessage)
	local info = {}

	function info:hasWarningMessage()
		return warningMessage ~= nil
	end

	function info:getRibbonMessage()
		return ribbonMessage or SourceStrings.UploadDownloadFlow.UnexpectedErrorMessage
	end

	function info:getWarningMessage()
		return warningMessage or SourceStrings.UploadDownloadFlow.UnexpectedErrorMessage
	end

	return info
end

local CSVErrorTypeNames = {
	"UserCanceled",
	"ReadFailed",
	"WriteFailed",
}

local CSVErrorType = {}
for _,name in ipairs(CSVErrorTypeNames) do
	CSVErrorType[name] = name
end

local OpenCSVErrorInfo = {}

function OpenCSVErrorInfo.new(openCSVErrorMessage)
	local errorType = openCSVErrorMessage == "No file selected" and
		CSVErrorType.UserCanceled or CSVErrorType.ReadFailed

	local ribbonMessageMap = {
		[CSVErrorType.ReadFailed] = SourceStrings.UploadDownloadFlow.CSVReadFailedMessage,
		[CSVErrorType.UserCanceled] = SourceStrings.UploadDownloadFlow.OpenCSVCanceledMessage,
	}

	local warningMessageMap = {
		[CSVErrorType.ReadFailed] = openCSVErrorMessage,
	}

	return ErrorInfo.new(
		ribbonMessageMap[errorType],
		warningMessageMap[errorType]
	)
end

local SaveCSVErrorInfo = {}

function SaveCSVErrorInfo.new(saveCSVErrorMessage)
	local errorType = saveCSVErrorMessage == "No file selected" and
		CSVErrorType.UserCanceled or CSVErrorType.WriteFailed

	local ribbonMessageMap = {
		[CSVErrorType.WriteFailed] = SourceStrings.UploadDownloadFlow.CSVWriteFailedMessage,
		[CSVErrorType.UserCanceled] = SourceStrings.UploadDownloadFlow.SaveCSVCanceledMessage,
	}

	local warningMessageMap = {
		[CSVErrorType.WriteFailed] = saveCSVErrorMessage,
	}

	return ErrorInfo.new(
		ribbonMessageMap[errorType],
		warningMessageMap[errorType]
	)
end

function UploadDownloadFlow:_setMode(mode)
	self._busy = mode.nonInteractive
	self.props.UpdateBusyMode(mode.nonInteractive, mode.showProgressIndicator)
end

function UploadDownloadFlow:_getBusy()
	return self._busy
end

function UploadDownloadFlow:OnUpload(ComputePatchFunc, gameId)
	if self:_getBusy() then
		return Promise.reject(SourceStrings.UploadDownloadFlow.BusyMessage)
	end

	self:_setMode(GETTING_USER_INPUT)

	self.props.SetMessage(SourceStrings.UploadDownloadFlow.OpenCSVFileMessage)

	return Promise.new(function(resolve, reject)
		self.props.OpenCSV():andThen(
			function(localizationTable)
				self.props.SetMessage(SourceStrings.UploadDownloadFlow.ComputingPatchMessage)
				self:_setMode(COMPUTING)

				ComputePatchFunc(gameId, localizationTable):andThen(
					function(patchInfo)
						self.props.SetMessage(SourceStrings.UploadDownloadFlow.ConfirmUploadMessage)
						self:_setMode(GETTING_USER_INPUT)

						self.props.ShowDialog(SourceStrings.UploadDownloadFlow.ConfirmUploadDialogTitle, 300, 370,
							self.props.MakeRenderDialogContent(patchInfo)):andThen(
							function()
								self.props.SetMessage(SourceStrings.UploadDownloadFlow.UploadingPatchMessage)
								self:_setMode(COMPUTING)

								self.props.UploadPatch(gameId, patchInfo):andThen(
									function()
										self.props.SetMessage(SourceStrings.UploadDownloadFlow.UploadCompleteMessage)
										self:_setMode(NOT_BUSY)
										resolve(patchInfo)
										self.props.RequestAssetGeneration(gameId)
									end,
									function()
										reject(ErrorInfo.new(SourceStrings.UploadDownloadFlow.UploadFailedMessage))
									end
								)
							end,
							function()
								reject(ErrorInfo.new(SourceStrings.UploadDownloadFlow.UploadCanceledMessage))
							end)
					end,
					function()
						reject(ErrorInfo.new(SourceStrings.UploadDownloadFlow.ComputePatchFailedMessage))
					end
				)
			end,
			function(errorMessage)
				reject(OpenCSVErrorInfo.new(errorMessage))
			end
		)
	end):catch(function(errorInfo)
		self.props.SetMessage(errorInfo.getRibbonMessage())
		self:_setMode(NOT_BUSY)
		return Promise.reject(errorInfo)
	end)
end

function UploadDownloadFlow:OnDownload(gameId)
	if self:_getBusy() then
		return Promise.reject(SourceStrings.UploadDownloadFlow.BusyMessage)
	end

	self:_setMode(COMPUTING)
	self.props.SetMessage(SourceStrings.UploadDownloadFlow.DownloadingTableMessage)

	return Promise.new(function(resolve, reject)
		self.props.DownloadGameTable(gameId):andThen(
			function(localizationTable)
				self.props.SetMessage(SourceStrings.UploadDownloadFlow.SelectCSVFileMessage)
				self:_setMode(GETTING_USER_INPUT)

				self.props.SaveCSV(localizationTable):andThen(
					function()
						self.props.SetMessage(SourceStrings.UploadDownloadFlow.TableWrittenToFileMessage)
						self:_setMode(NOT_BUSY)
						resolve(localizationTable)
					end,
					function(errorMessage)
						reject(SaveCSVErrorInfo.new(errorMessage))
					end
				)
			end,
			function(errorMessage)
				reject(ErrorInfo.new(errorMessage))
			end
		)
	end):catch(function(errorInfo)
		self.props.SetMessage(errorInfo.getRibbonMessage())
		self:_setMode(NOT_BUSY)
		return Promise.reject(errorInfo)
	end)
end

return UploadDownloadFlow
