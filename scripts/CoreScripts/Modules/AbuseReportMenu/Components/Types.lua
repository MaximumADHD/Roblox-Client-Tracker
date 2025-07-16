local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local AvatarIdentificationPkg = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local AdIdentificationPkg = require(CorePackages.Workspace.Packages.TnSAdIdentification)
local ReportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)

export type GenericMenuItemType = {
	componentType: "generic",
	getIsVisible: (menuUIStates: any) -> boolean,
	fieldLabel: string,
	componentName: string,
}

export type FreeCommentsMenuItemType = {
	componentType: "freeComments",
	getIsVisible: (menuUIStates: any) -> boolean,
	onUpdate: (newValue: string, menuUIStates: any, dispatchUIStates: any, menuUtilityProps: MenuUtilityProps) -> (),
	componentName: string,
}

export type ButtonMenuItemType = {
	componentType: "button",
	getIsVisible: (menuUIStates: any) -> boolean,
	fieldLabel: string,
	componentName: string,
	variant: string,
	getIconSrc: (utilityProps: MenuUtilityProps) -> string,
	getButtonLabel: (utilityProps: MenuUtilityProps) -> string,
	onClick: (menuUIStates: any, dispatchUIStates: any, utilityProps: MenuUtilityProps) -> (),
}

export type DropdownMenuItemType = {
	componentType: "dropdown",
	getIsVisible: (menuUIStates: any) -> boolean,
	getMenuItems: (menuUIStates: any) -> { string },
	onUpdateSelectedOption: (
		newValue: any,
		menuUIStates: any,
		dispatchUIStates: any,
		utilityProps: MenuUtilityProps
	) -> (),
	fieldLabel: string,
	componentName: string,
}

-- Should stay consistent with ModalBaseSelectorDialog's cellData prop.
export type ModalSelectorMenuItemCellDataType = {
	label: string,
	subLabel: string?,
	identifier: string?,
}

export type ModalSelectorMenuItemType = {
	componentType: "modalSelector",
	getIsVisible: (menuUIStates: ReportPersonState) -> boolean,
	getMenuItems: (menuUIStates: ReportPersonState) -> { ModalSelectorMenuItemCellDataType },
	onUpdateSelectedOption: (
		selectedItem: ModalSelectorMenuItemCellDataType,
		menuUIStates: ReportPersonState,
		dispatchUIStates: any,
		utilityProps: MenuUtilityProps
	) -> (),
	getSelectedValue: (menuUIStates: ReportPersonState) -> string?,
	fieldLabel: string,
	componentName: string,
}

export type MenuItemConfigType =
	GenericMenuItemType
	| DropdownMenuItemType
	| ButtonMenuItemType
	| FreeCommentsMenuItemType
	| ModalSelectorMenuItemType

export type ReportType = "Person" | "Experience"

export type ReportPersonState = {
	reportType: string, -- should be "Person" but the type system has a hard time with custom "enums"
	allegedAbuserId: number?,
	allegedAbuser: any,
	comment: string,
	abuseReason: string?,
	methodOfAbuse: string?,
	isVoiceEnabled: boolean?,
	menuOpenedUnixTimestampMilliseconds: number?,
	menuContainerWidth: number,
	modalSelectorCellData: { { label: string, subLabel: string } }?,
	playerObjects: { any },
	isModalSelectorShown: boolean?,
	preselectedPlayer: Player?, -- will be cleared soon after being set once the Player list is populated
	--[[
		Items not included here but still relevant:
		* submitter ID (stays the same for the form lifecycle, can grab at any time)
		* menu entry point (get from analytics object after setting it there when the form is opened)
	]]
}

export type ReportExperienceState = {
	reportType: string,
	comment: string,
	abuseReason: string?,
	menuContainerWidth: number,
}

export type MenuUtilityProps = {
	onReportComplete: (text: string) -> (),
	isReportTabVisible: boolean?,
	hideReportTab: () -> (),
	reportAnythingAnalytics: typeof(ReportAnythingAnalytics),
	reportAnythingState: ReportAnythingState,
	reportAnythingDispatch: (action: { type: string }) -> (),
	showReportSentPage: (reportedPlayer: any) -> (),
	analyticsState: AnalyticsState,
	analyticsDispatch: (action: { type: string }) -> (),
	preselectedPlayer: Player?,
	setPreselectedPlayer: (nil) -> (),
	menuWidth: number,
	viewportDimension: {
		width: number,
		height: number,
	},
}

export type IdentificationResults = {
	identifiedAvatars: AvatarIdentificationPkg.AvatarIDResults,
	identifiedAds: AdIdentificationPkg.AdIDResults,
	avatarIDStats: AvatarIdentificationPkg.AvatarIDStats,
	adIDStats: AdIdentificationPkg.AdIDResults,
}

export type ViewportInfo = AvatarIdentificationPkg.ViewportInfo

export type ReportAnythingState = {
	-- per screenshot
	identificationResults: IdentificationResults,
	screenshotId: string,
	screenshotContentId: string,

	-- cleared when the report is considered abandoned
	attachCompleted: boolean,
	annotationPoints: { Vector2 },
	annotationCircleRadius: number,
	annotationAreaWidth: number,
	annotationAreaHeight: number,
	annotationOptionSeen: boolean,
	annotationPageSeen: boolean,
}

type PartialAnalyticsState = {
	viewportSizeX: number,
	viewportSizeY: number,
	isPortraitMode: boolean,
	menuOpenedUnixTimestampMilliseconds: number,
	experiencePersonChangeCount: number,
	typeofabuseChangeCount: number,
	personChangeCount: number,
	reasonChangeCount: number,
	captureSceneCount: number,

	-- Keep a copy of these in here since we don't have access to the real
	-- source of truth when at the top level of the menu
	typeofabuseSelection: string?,
	reasonSelection: string?,
	commentAdded: boolean,
	experiencePersonSelection: string?,
	memoryRequirementMet: number,
}

type AnalayticsExtras = {
	-- Not passed along to BE
	menuEverShown: boolean,
	isSubmissionCompleted: boolean,
}

export type AnalyticsState = PartialAnalyticsState & AnalayticsExtras

-- Passing along to BE
export type AnalyticsArguments = ReportAnythingAnalytics.ReportAnythingAnalyticsState & PartialAnalyticsState & {
	placeId: number,
	timeSpentMs: number,

	annotationFinalCount: number,
	avatarFinalCount: number,

	interactionType: number,
	inferredTypeofabuseSelection: string, -- If they don't select the MoA, we default to Chat
}

return {}
