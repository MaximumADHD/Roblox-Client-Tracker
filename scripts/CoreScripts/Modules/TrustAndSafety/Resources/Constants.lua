--[[
	Constants for TrustAndSafety module.
]]
local Constants = {
	EnableCategoryListing = true,
	InputType = {
		MouseAndKeyboard = "MouseAndKeyboard",
		Touch = "Touch",
		Gamepad = "Gamepad",
	},
	ReportType = {
		Any = "Any",
		Place = "Place",
		Player = "Player",
	},
	Category = {
		None = "",
		Voice = "Voice",
		Text = "Text",
		Other = "Other",
		Experience = "Experience",
	},
	Page = {
		None = "",
		Category = "Category",
		Listing = "Listing",
		ReportForm = "ReportForm",
		ReportSent = "ReportSent",
		ScreenshotDialog = "ScreenshotDialog"
	},
	Analytics = {
		ReportSubmittedName = "ingame_menu_report_submitted",
		ReportSourceInGame = "ingame",
		ReportFlowOpened = "report_flow_opened",
		ReportType = "ReportType", -- adding this to use instead of Page.Category since T&S uses "category" differently
		ReportTypeUser = "user",
		ReportTypeGame = "game",
		ReportFlowAbandoned = "ingame_menu_report_abandoned",
		ReportFlowBack = "ingame_menu_report_navigate_back",
		ReportFlowAdvance = "ingame_menu_report_advance_to_form"
	},
	Session = {
		StructuralIdentifier = {
			Level1 = "level1",
			AbuseReport = "AbuseReport"
		},
		Metadata = {
			EntryPoint = "entryPoint",
			DeleteOnGameLeave = "_deleteOnGameLeave"
		}
	}
}

return Constants
