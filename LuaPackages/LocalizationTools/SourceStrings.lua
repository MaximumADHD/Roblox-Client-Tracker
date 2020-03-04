game:DefineFastFlag("LocalizationToolsLocalizationEnabled", false)

local LocalizationService = game:GetService("LocalizationService")

local coreScriptLocalization
local coreScriptTableTranslator
local fallbackTrnanslator
local function GetLocalizedText(key, args)
	if coreScriptLocalization == nil then
		coreScriptLocalization = LocalizationService:GetCorescriptLocalizations()[1]
	end
	if coreScriptTableTranslator == nil then
		coreScriptTableTranslator = coreScriptLocalization:GetTranslator(
			LocalizationService.RobloxForcePlayModeRobloxLocaleId)
	end
	if not fallbackTrnanslator then
		fallbackTrnanslator =  coreScriptLocalization:GetTranslator("en-us")
	end
	local success, result = pcall(function()
		return coreScriptTableTranslator:FormatByKey(key, args)
	end)
	if success then
		return result
	else
		return fallbackTrnanslator:FormatByKey(key, args)
	end
end

if game:GetFastFlag("LocalizationToolsLocalizationEnabled") then
	return {
		Main = {
			RibbonBarButtonText = GetLocalizedText("LocalizationTools.Main.RibbonBarButton"),
			ToolbarLabelText = GetLocalizedText("LocalizationTools.Main.ToolbarLabel"),
			TooltipText = GetLocalizedText("LocalizationTools.Main.ToolTipMessage"),
			WindowTitleText = GetLocalizedText("LocalizationTools.Main.WindowTitle"),
		},
		EmbeddedTableSection = {
			TextCaptureStartText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.TextCaptureStartText"),
			TextCaptureStopText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.TextCaptureStopText"),
			EmbeddedTableSectionLabelText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.SectionLabel"),
			TextCaptureButtonText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.TextCaptureButton"),
			ExportButtonText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.ExportButton"),
			ImportButtonText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.ImportButton"),
			ExportLabelText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.ExportTextLabel"),
			ImportLabelText = GetLocalizedText("LocalizationTools.EmbeddedTableSection.ImportTextLabel"),
		},
		GameTableSection = {
			CloudTablePageLinkText = GetLocalizedText("LocalizationTools.GameTableSection.CloudTablePageLinkText"),
			DownloadButtonText = GetLocalizedText("LocalizationTools.GameTableSection.DownloadButton"),
			DownloadTableLabelText = GetLocalizedText("LocalizationTools.GameTableSection.DownloadTableLabel"),
			UpdateButtonText = GetLocalizedText("LocalizationTools.GameTableSection.UpdateButton"),
			UpdateTableLabelText = GetLocalizedText("LocalizationTools.GameTableSection.UpdateTableLabel"),
			AdvancedButtonText = GetLocalizedText("LocalizationTools.GameTableSection.AdvancedButton"),
			ReplaceButtonText = GetLocalizedText("LocalizationTools.GameTableSection.ReplaceButton"),
			ReplaceTableLabelText = GetLocalizedText("LocalizationTools.GameTableSection.ReplaceTableLabel"),
			PublishPlaceMessage = GetLocalizedText("LocalizationTools.GameTableSection.PublishPlaceMessage"),
			CloudTableSectionLabel = GetLocalizedText("LocalizationTools.GameTableSection.SectionLabel"),
		},
		UploadDialogContent = {
			PatchEmptyMessage = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchEmptyMessage"),
			UploadPatchMessage = GetLocalizedText("LocalizationTools.UploadDialogContent.UploadPatchMessage"),
			AddEntriesPretext = GetLocalizedText("LocalizationTools.UploadDialogContent.AddEntriesPreText"),
			AddTranslationsPretext = GetLocalizedText("LocalizationTools.UploadDialogContent.AddTranslationsPretext"),
			ChangeTranslationsPretext = GetLocalizedText("LocalizationTools.UploadDialogContent.ChangeTranslationsPretext"),
			DeleteEntriesPretext = GetLocalizedText("LocalizationTools.UploadDialogContent.DeleteEntriesPretext"),
			DeleteTranslationsPretext = GetLocalizedText("LocalizationTools.UploadDialogContent.DeleteTranslationsPretext"),
			AddLanguagesPretext = GetLocalizedText("LocalizationTools.UploadDialogContent.AddLanguagesPretext"),
			PatchContainsLabelText = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchContainsLabel"),
			PatchTotalRowsLabelText = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchTotalRowsLabel"),
			PatchTotalTranslationsLabelText = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchTotalTranslationsLabel"),
			PatchLanguagesLabelText = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchLanguagesLabel"),
			PatchInvalidLanguagesLabelText = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchInvalidLanguagesLabel"),
			PatchWillLabelText = GetLocalizedText("LocalizationTools.UploadDialogContent.PatchWillLabel"),
			CancelButtonText = GetLocalizedText("LocalizationTools.UploadDialogContent.CancelButton"),
			ConfirmButtonText = GetLocalizedText("LocalizationTools.UploadDialogContent.ConfirmButton"),
		},
		AddWebEntriesToRbxEntries = {
			WrongFormatedWebTableMessage = GetLocalizedText(
		"LocalizationTools.AddWebEntriesToRbxEntries.WrongFormatWebTableMessage"),
			ExpectedTableTypeMessage = GetLocalizedText("LocalizationTools.AddWebEntriesToRbxEntries.ExpectedTableTypeMessage"),
			NoLocaleMessage = GetLocalizedText("LocalizationTools.AddWebEntriesToRbxEntries.NoLocaleMessage"),
		},
		PageDownloader = {
			DecodeFailedMessage = GetLocalizedText("LocalizationTools.PageDownloader.DecodeFailedMessage"),
			FormatFailedWithStatusCodeMessage = function(...)
				return GetLocalizedText("LocalizationTools.PageDownloader.FailedWithStatusCodeMessage", {...})
			end,
			DownloadFailedMessage = GetLocalizedText("LocalizationTools.PageDownloader.DownloadFailedMessage"),
		},
		UploadDownloadFlow = {
			UnexpectedErrorMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.UnexpectedErrorMessage"),
			CSVReadFailedMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.CSVReadFailedMessage"),
			OpenCSVCanceledMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.OpenCSVCanceledMessage"),
			CSVWriteFailedMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.CSVWriteFailedMessage"),
			SaveCSVCanceledMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.SaveCSVCanceledMessage"),
			BusyMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.BusyMessage"),
			OpenCSVFileMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.OpenCSVFileMessage"),
			ComputingPatchMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.ComputingPatchMessage"),
			ConfirmUploadMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.ConfirmUploadMessage"),
			ConfirmUploadDialogTitle = GetLocalizedText("LocalizationTools.UploadDownloadFlow.ConfirmUploadDialogTitle"),
			UploadingPatchMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.UploadingPatchMessage"),
			UploadCompleteMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.UploadCompleteMessage"),
			UploadFailedMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.UploadFailedMessage"),
			UploadCanceledMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.UploadCanceledMessage"),
			ComputePatchFailedMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.ComputePatchFailedMessage"),
			DownloadingTableMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.DownloadingTableMessage"),
			SelectCSVFileMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.SelectCSVFileMessage"),
			TableWrittenToFileMessage = GetLocalizedText("LocalizationTools.UploadDownloadFlow.TableWrittenToFileMessage"),
		}
	}
else
	return {
		Main = {
			RibbonBarButtonText = "Tools",
			ToolbarLabelText = "Localization",
			TooltipText = "Hide/show the Localization Tools View",
			WindowTitleText = "Localization Tools",
		},
		EmbeddedTableSection = {
			TextCaptureStartText = "Start untranslated text capture",
			TextCaptureStopText = "Stop untranslated text capture",
			EmbeddedTableSectionLabelText = "Embedded Localization Table",
			TextCaptureButtonText = "Text Capture",
			ExportButtonText = "Export",
			ImportButtonText = "Import",
			ExportLabelText = "Export LocalizationTables under LocalizationService to CSV files",
			ImportLabelText = "Import CSV files to LocalizationTables under LocalizationService",
		},
		GameTableSection = {
			CloudTablePageLinkText = "Click here to configure your cloud localization table",
			DownloadButtonText = "Download",
			DownloadTableLabelText = "Download table as CSV",
			UpdateButtonText = "Update",
			UpdateTableLabelText = "Update with new content from CSV",
			AdvancedButtonText = "Advanced",
			ReplaceButtonText = "Replace",
			ReplaceTableLabelText = "Replace entire cloud table with CSV",
			PublishPlaceMessage = "Publish this place to upload a table",
			CloudTableSectionLabel = "Cloud Localization Table",
		},
		UploadDialogContent = {
			PatchEmptyMessage = "Patch empty. Upload anyway?",
			UploadPatchMessage = "Upload patch?",
			AddEntriesPretext = "Add entries: ",
			AddTranslationsPretext = "Add translations: ",
			ChangeTranslationsPretext = "Change translations: ",
			DeleteEntriesPretext = "Delete entries: ",
			DeleteTranslationsPretext = "Delete translations: ",
			AddLanguagesPretext = "Add languages: ",
			PatchContainsLabelText = "This patch contains:",
			PatchTotalRowsLabelText = "Total rows: ",
			PatchTotalTranslationsLabelText = "Total translations: ",
			PatchLanguagesLabelText = "Languages: ",
			PatchInvalidLanguagesLabelText = "Invalid columns: ",
			PatchWillLabelText = "This patch will:",
			CancelButtonText = "Cancel",
			ConfirmButtonText = "Confirm",
		},
		AddWebEntriesToRbxEntries = {
			WrongFormatedWebTableMessage = "Wrongly formatted web table.",
			ExpectedTableTypeMessage = "Expected table type.",
			NoLocaleMessage = "Web table contained translation with no locale",
		},
		PageDownloader = {
			DecodeFailedMessage = GetLocalizedText("LocalizationTools.PageDownloader.DecodeFailedMessage"),
			FormatFailedWithStatusCodeMessage = function(...)
				return string.format(
					"Uploading table failed with status code: %s, and response: %s",
					...)
			end,
			DownloadFailedMessage = "Download failed",
		},
		UploadDownloadFlow = {
			UnexpectedErrorMessage = "Unexpected error",
			CSVReadFailedMessage = "CSV read failed",
			OpenCSVCanceledMessage = "Open CSV canceled",
			CSVWriteFailedMessage = "CSV write failed",
			SaveCSVCanceledMessage = "Save CSV canceled",
			BusyMessage = "busy",
			OpenCSVFileMessage = "Open CSV file...",
			ComputingPatchMessage = "Computing patch...",
			ConfirmUploadMessage = "Confirm upload...",
			ConfirmUploadDialogTitle = "Comfirm Upload",
			UploadingPatchMessage = "Uploading patch...",
			UploadCompleteMessage = "Upload complete",
			UploadFailedMessage = "Upload failed",
			UploadCanceledMessage = "Upload canceled",
			ComputePatchFailedMessage = "Compute patch failed",
			DownloadingTableMessage = "Downloading table...",
			SelectCSVFileMessage = "Select CSV file...",
			TableWrittenToFileMessage = "Table written to file",
		}
	}
end