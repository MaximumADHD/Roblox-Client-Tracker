export type EventNames =
	"EditingFlowGalleryNoCapturesAvailable"
	| "EditingFlowGalleryItemSelected"
	| "EditingFlowMusicButtonPressed"
	| "EditingFlowMusicSelected"
	| "EditingFlowMusicBackButtonPressed"
	| "EditingFlowMusicDoneButtonPressed"
	| "EditingFlowTextOverlayButtonPressed"
	| "EditingFlowTextOverlayBackButtonPressed"
	| "EditingFlowTextOverlayDoneButtonPressed"
	| "EditingFlowTrimButtonPressed"
	| "EditingFlowTrimBackButtonPressed"
	| "EditingFlowTrimDoneButtonPressed"
	| "EditingFlowDescriptionEdited"
	| "EditingFlowNextButtonPressed"
	| "EditingFlowReturnButtonPressed"
	| "MomentsEditingFlowContinueToEditButtonPressed"
	| "MomentsEditingFlowContinueToDescriptionButtonPressed"
	| "MomentsEditingFlowPublished"
	| "MomentsEditingFlowExited"

local EventNames = {
	-- Existing events, no prefix
	EditingFlowGalleryNoCapturesAvailable = "EditingFlowGalleryNoCapturesAvailable" :: "EditingFlowGalleryNoCapturesAvailable",
	EditingFlowGalleryItemSelected = "EditingFlowGalleryItemSelected" :: "EditingFlowGalleryItemSelected",
	EditingFlowMusicButtonPressed = "EditingFlowMusicButtonPressed" :: "EditingFlowMusicButtonPressed",
	EditingFlowMusicSelected = "EditingFlowMusicSelected" :: "EditingFlowMusicSelected",
	EditingFlowMusicBackButtonPressed = "EditingFlowMusicBackButtonPressed" :: "EditingFlowMusicBackButtonPressed",
	EditingFlowMusicDoneButtonPressed = "EditingFlowMusicDoneButtonPressed" :: "EditingFlowMusicDoneButtonPressed",
	EditingFlowTextOverlayButtonPressed = "EditingFlowTextOverlayButtonPressed" :: "EditingFlowTextOverlayButtonPressed",
	EditingFlowTextOverlayBackButtonPressed = "EditingFlowTextOverlayBackButtonPressed" :: "EditingFlowTextOverlayBackButtonPressed",
	EditingFlowTextOverlayDoneButtonPressed = "EditingFlowTextOverlayDoneButtonPressed" :: "EditingFlowTextOverlayDoneButtonPressed",
	EditingFlowTrimButtonPressed = "EditingFlowTrimButtonPressed" :: "EditingFlowTrimButtonPressed",
	EditingFlowTrimBackButtonPressed = "EditingFlowTrimBackButtonPressed" :: "EditingFlowTrimBackButtonPressed",
	EditingFlowTrimDoneButtonPressed = "EditingFlowTrimDoneButtonPressed" :: "EditingFlowTrimDoneButtonPressed",
	EditingFlowDescriptionEdited = "EditingFlowDescriptionEdited" :: "EditingFlowDescriptionEdited",
	EditingFlowNextButtonPressed = "EditingFlowNextButtonPressed" :: "EditingFlowNextButtonPressed",
	EditingFlowReturnButtonPressed = "EditingFlowReturnButtonPressed" :: "EditingFlowReturnButtonPressed",

	-- New events, with "Moments" prefix
	MomentsEditingFlowContinueToEditButtonPressed = "MomentsEditingFlowContinueToEditButtonPressed" :: "MomentsEditingFlowContinueToEditButtonPressed",
	MomentsEditingFlowContinueToDescriptionButtonPressed = "MomentsEditingFlowContinueToDescriptionButtonPressed" :: "MomentsEditingFlowContinueToDescriptionButtonPressed",
	MomentsEditingFlowPublished = "MomentsEditingFlowPublished" :: "MomentsEditingFlowPublished",
	MomentsEditingFlowExited = "MomentsEditingFlowExited" :: "MomentsEditingFlowExited",
}

return EventNames
