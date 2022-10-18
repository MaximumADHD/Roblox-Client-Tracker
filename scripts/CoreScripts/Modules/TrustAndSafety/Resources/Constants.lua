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
		PlayerBlocking = "PlayerBlocking",
	},
}

return Constants
