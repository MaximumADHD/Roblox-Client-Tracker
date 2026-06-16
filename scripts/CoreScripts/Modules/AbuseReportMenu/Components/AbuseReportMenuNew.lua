--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local GuiService = game:GetService("GuiService")
local IXPService = game:GetService("IXPService")
local LocalizationService = game:GetService("LocalizationService")
local PlayersService = game:GetService("Players")
local SafetyService = game:GetService("SafetyService")
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider

local ReportTypeSelector = require(root.Components.ReportTypeSelector)
local Constants = require(root.Components.Constants)
local ReportModes = Constants.ReportModes
local ReportTypes = Constants.ReportTypes
local SelectInSceneReportMenu = require(root.Components.SelectInSceneReportMenu)
local ReportPersonMenuItemsContainer = require(root.Components.Containers.ReportPersonMenuItemsContainer)
local ReportExperienceMenuItemsContainer = require(root.Components.Containers.ReportExperienceMenuItemsContainer)
local ReportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)
local ReportAbuseAnalytics = require(root.Analytics.ReportAbuseAnalytics)
local AnnotationModal = require(root.ReportAnything.Components.AnnotationModal)
local ChatModalSelectorDialogController = require(root.Components.ChatModalSelectorDialogController)
local ModalBasedSelectorDialogController = require(root.Components.ModalBasedSelectorDialogController)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout

local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useReportAnythingWithScreenshot = require(root.Hooks.useReportAnythingWithScreenshot)
local getMenuItemSizings = require(root.Utility.getMenuItemSizings)
local analyticsReducer = require(root.Reducers.analyticsReducer)
local createCleanup = require(root.Components.createCleanup)

local useTokens = Foundation.Hooks.useTokens
local Text = Foundation.Text
local View = Foundation.View

local DSAReportingPackage = require(CorePackages.Workspace.Packages.DsaIllegalContentReporting)
local isShowEUDSAIllegalContentReportingLink = DSAReportingPackage.isShowEUDSAIllegalContentReportingLink
local DSAReportLink = DSAReportingPackage.DSAReportLink
local isShowUKOSAIllegalContentReportingLink = DSAReportingPackage.isShowUKOSAIllegalContentReportingLink
local OSAReportLink = DSAReportingPackage.OSAReportLink
local isShowGenericIllegalContentReportingLink = DSAReportingPackage.isShowGenericIllegalContentReportingLink
local GenericReportLink = DSAReportingPackage.GenericReportLink
local getTakeItDownReportLinkVisibility = DSAReportingPackage.getTakeItDownReportLinkVisibility
local TakeItDownReportLink = DSAReportingPackage.TakeItDownReportLink

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local isAbuseReportMenuOpenCloseSignalEnabled = require(root.Flags.isAbuseReportMenuOpenCloseSignalEnabled)
local FIntAbuseReportTabClearCapturedScreenshotOnCloseFixDelay =
	require(root.Flags.FIntAbuseReportTabClearCapturedScreenshotOnCloseFixDelay)
local GetFFlagWHAM1707ExperimentForceEnabled = require(root.Flags.GetFFlagWHAM1707ExperimentForceEnabled)
local IXPFieldWHAM1707 = require(root.Flags.FStringWHAM1707IXPField)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FStringReportMenuIXPLayer = SharedFlags.FStringReportMenuIXPLayer
local FStringEARReportMenuIXPLayer = SharedFlags.FStringEARReportMenuIXPLayer
local IXPField = game:DefineFastString("SelectInSceneIXPField", "EnableSelectInScene")
local FFlagHighlightModePreciseSelectionEnabled = SharedFlags.FFlagHighlightModePreciseSelectionEnabled
local FFlagHideShortcutsOnReportDropdown = require(root.Flags.FFlagHideShortcutsOnReportDropdown)
local FFlagAbuseReportTabClearCapturedScreenshotOnCloseFix =
	game:DefineFastFlag("AbuseReportTabClearCapturedScreenshotOnCloseFix", false)
local FFlagMigrateAllOsaMessagingToCentralService =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagMigrateAllOsaMessagingToCentralService
local FFlagIEMReportScrollingFix = game:DefineFastFlag("IEMReportScrollingFix", false)
local FFlagReportFocusNavIEMButtons = require(root.Flags.FFlagReportFocusNavIEMButtons)
local FFlagIEMTabFocusNav = SharedFlags.FFlagIEMTabFocusNav
local FFlagAddTakeItDownReportLinkToSurfaces = SharedFlags.FFlagAddTakeItDownReportLinkToSurfaces

local isShowSelectInSceneReportMenu = require(root.Utility.isShowSelectInSceneReportMenu)

local InGameAssetReporting = require(CorePackages.Workspace.Packages.InGameAssetReporting)
local getHighlightModeVariant = InGameAssetReporting.getHighlightModeVariant

local UIBlox = require(CorePackages.Packages.UIBlox)
local SegmentedControl = UIBlox.App.Control.SegmentedControl

local REPORT_MODES = { ReportModes.Classic, ReportModes.SelectInScene }
local REPORT_TYPES = { ReportTypes.Person, ReportTypes.Experience }

export type Props = {
	hideReportTab: () -> (),
	showReportTab: () -> (),
	showReportSentPage: (reportedPlayer: any) -> (),
	registerOnReportTabHidden: (() -> ()) -> (),
	registerOnReportTabDisplayed: (() -> ()) -> (),
	registerOnSettingsHidden: (() -> ()) -> (),
	registerSetNextPlayerToReport: ((player: Player) -> ()) -> (),
	registerOnMenuWidthChange: ((width: number) -> ()) -> (),
	onReportComplete: (text: string) -> (),
	onDropdownMenuOpenChange: (isOpen: boolean) -> (),
	getSettingsHubRef: (() -> any)?,
	setFirstSelectableObjects: ((selectableList: { GuiObject }) -> ())?,
	setLastSelectableObjects: ((selectableList: { GuiObject }) -> ())?,
}

local function isInSelectInSceneExperiment(): boolean
	-- Getting IXP layer data
	local success, IXPData = pcall(function()
		return IXPService:GetUserLayerVariables(FStringReportMenuIXPLayer)
	end)
	if not success or not IXPData or IXPData[IXPField] == nil then
		return false
	end

	-- Log user layer exposure (enrollment here)
	IXPService:LogUserLayerExposure(FStringReportMenuIXPLayer)
	return IXPData[IXPField]
end

local function isInWHAM1707Experiment(): boolean -- also need engine feature check
	if GetFFlagWHAM1707ExperimentForceEnabled() then
		return true
	end

	-- Getting IXP layer data
	local success, IXPData = pcall(function()
		return IXPService:GetUserLayerVariables(FStringEARReportMenuIXPLayer)
	end)
	if not success or not IXPData or IXPData[IXPFieldWHAM1707] == nil then
		return false
	end

	-- Log user layer exposure (enrollment here)
	IXPService:LogUserLayerExposure(FStringEARReportMenuIXPLayer)
	return IXPData[IXPFieldWHAM1707]
end

local AbuseReportMenuNew = function(props: Props)
	local isReportTabVisible, setIsReportTabVisible = React.useState(false)
	local reportModeIndex, setReportModeIndex = React.useState(1)
	local reportTypeIndex, setReportTypeIndex = React.useState(1)
	local preselectedPlayer: Player?, setPreselectedPlayer = React.useState(nil :: Player?)
	local menuWidth, setMenuWidth = React.useState(0)
	local isOnlyPlayerInGame, setIsOnlyPlayerInGame = React.useState(false)
	local shouldSelectorRender, setShouldSelectorRender = React.useState(false)
	local isAutoFocusEnabled, setIsAutoFocusEnabled = React.useState(true)
	local modeSelectorRef = React.useRef(nil :: GuiObject?)
	local abuseMenuFrameRef = React.useRef(nil :: GuiObject?)

	local viewportDimension, setViewportDimension = React.useState({ width = 0, height = 0 })
	local isSmallPortraitViewport = viewportDimension.width < viewportDimension.height and viewportDimension.width < 700

	local analyticsState, analyticsDispatch = React.useReducer(analyticsReducer, Constants.AnalyticsInitialState)
	local reportMode = REPORT_MODES[reportModeIndex]
	local reportType = REPORT_TYPES[reportTypeIndex]
	local cleanup = React.useCallback(
		createCleanup(analyticsState, analyticsDispatch, setPreselectedPlayer, reportType),
		{ analyticsState, reportTypeIndex } :: { any }
	)

	local reportAnythingState, reportAnythingDispatch =
		useReportAnythingWithScreenshot(isReportTabVisible, props.hideReportTab, props.showReportTab, cleanup)

	local sizings = getMenuItemSizings()
	local tokens = useTokens()

	local localizedText = useLocalization(Constants.localizationKeys)

	React.useEffect(function()
		props.registerOnReportTabDisplayed(function()
			setIsReportTabVisible(true)
			-- only send menu open signal AFTER screenshot capture
			if isAbuseReportMenuOpenCloseSignalEnabled() and isInWHAM1707Experiment() then
				if reportAnythingState.screenshotContentId ~= "" then
					SafetyService:ReportMenuTabOpen()
				end
			end
		end)
		props.registerOnReportTabHidden(function()
			setIsReportTabVisible(false)
			AnnotationModal.unmountAnnotationPage()
			-- We need to unmount all modals when the report tab is closed to prevent weird open/close state bugs
			ChatModalSelectorDialogController.unmountModalSelector()
			ModalBasedSelectorDialogController.unmountModalSelector()
			if isAbuseReportMenuOpenCloseSignalEnabled() and isInWHAM1707Experiment() then
				SafetyService:ReportMenuTabClose()
			end
		end)
		props.registerSetNextPlayerToReport(function(player: Player)
			setPreselectedPlayer(player)
		end)
		props.registerOnMenuWidthChange(function(width)
			setMenuWidth(width)
		end)
		props.registerOnSettingsHidden(function()
			if FFlagAbuseReportTabClearCapturedScreenshotOnCloseFix then
				-- When the user has Reduce Motion enabled, the signal for the IGM closing
				-- can come before the signal for the Report tab closing. Given that the AR
				-- session (which we are checking below) is cleared as a result of the Report
				-- tab closing, we want to make sure this check happens after that, rather
				-- than relying on the assumption that it does, as is the case without Reduce Motion.
				setTimeout(function()
					if ReportAbuseAnalytics:getAbuseReportSessionEntryPoint() == "" then
						reportAnythingDispatch({
							type = Constants.ReportAnythingActions.ClearAll,
						})
					else
					end
				end, FIntAbuseReportTabClearCapturedScreenshotOnCloseFixDelay)
			else
				if ReportAbuseAnalytics:getAbuseReportSessionEntryPoint() == "" then
					reportAnythingDispatch({
						type = Constants.ReportAnythingActions.ClearAll,
					})
				end
			end
		end)
	end, { reportAnythingState })

	React.useEffect(function()
		if not isReportTabVisible then
			-- unmount sub menu containers when not on report tab
			setReportTypeIndex(0)
			-- set report menu type selector back to default report mode when not on report tab
			setReportModeIndex(1)
			-- set selector render condition to false so we can do the check on open again
			setShouldSelectorRender(false)
		else
			local playerObjects = PlayersService:GetPlayers()
			if #playerObjects <= 1 then
				setIsOnlyPlayerInGame(true)
				setReportTypeIndex(2)
			else
				setReportTypeIndex(1)
				setIsOnlyPlayerInGame(false)
			end
		end
	end, { isReportTabVisible })

	React.useEffect(function()
		if isReportTabVisible then
			analyticsDispatch({
				type = Constants.AnalyticsActions.SetMenuOpenedTimestamp,
				timestamp = math.floor(workspace:GetServerTimeNow() * 1000),
			})
			-- This is the only start... call if the user opens the report page by
			-- going to it directly.
			-- For a prepopulated player report, start... is called inside
			-- `PageInstance:ReportPlayer` before this. In that case, this call will leave
			-- the session and recorded entryPoint alone.
			ReportAbuseAnalytics:startAbuseReportSession("ReportPage")
			if isShowSelectInSceneReportMenu(analyticsDispatch) then
				-- check if we should show selector once every time we open the report tab
				-- this is so the selector doesn't render while the report has already been open for a bit
				if isInSelectInSceneExperiment() then
					setShouldSelectorRender(true)
				end
			end
		end

		local camera = game.Workspace.CurrentCamera
		if camera ~= nil then
			local viewportSize = camera.ViewportSize
			setViewportDimension({ width = viewportSize.X, height = viewportSize.Y })
			analyticsDispatch({
				type = Constants.AnalyticsActions.SetViewportInformation,
				viewportSizeX = viewportSize.X,
				viewportSizeY = viewportSize.Y,
			})
		end
	end, { isReportTabVisible, menuWidth } :: { any })

	if FFlagReportFocusNavIEMButtons then
		React.useEffect(function()
			if not isReportTabVisible then
				return
			end

			local function isMenuSelected()
				local getSettingsHubRef = props.getSettingsHubRef
				local hub = getSettingsHubRef and getSettingsHubRef()
				local menuContainer = hub and hub.MenuContainer
				return GuiService.SelectedCoreObject ~= nil
					and menuContainer ~= nil
					and GuiService.SelectedCoreObject:IsDescendantOf(menuContainer)
			end

			setIsAutoFocusEnabled(not isMenuSelected())

			local conn = GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
				setIsAutoFocusEnabled(not isMenuSelected())
			end)

			return function()
				conn:Disconnect()
			end
		end, { isReportTabVisible, props.getSettingsHubRef } :: { any })
	end

	if FFlagIEMTabFocusNav then
		React.useEffect(
			function()
				if not isReportTabVisible then
					return
				end

				local firstItems = nil
				if modeSelectorRef.current and modeSelectorRef.current.tabRefs then
					firstItems = {
						modeSelectorRef.current.tabRefs[1].current:FindFirstChild("Tab"),
						modeSelectorRef.current.tabRefs[2].current:FindFirstChild("Tab"),
					}
				end
				if props.setFirstSelectableObjects and firstItems then
					props.setFirstSelectableObjects(firstItems)
				end
			end,
			{ isReportTabVisible, modeSelectorRef, props.setFirstSelectableObjects, shouldSelectorRender } :: { unknown }
		)
	end

	if not isReportTabVisible then
		return nil
	end

	local menuItems = nil

	local utilityProps = {
		onReportComplete = props.onReportComplete,
		onDropdownMenuOpenChange = if FFlagHideShortcutsOnReportDropdown then props.onDropdownMenuOpenChange else nil,
		reportAnythingAnalytics = ReportAnythingAnalytics,
		reportAnythingState = reportAnythingState,
		reportAnythingDispatch = reportAnythingDispatch,
		hideReportTab = props.hideReportTab,
		isReportTabVisible = isReportTabVisible,
		showReportSentPage = props.showReportSentPage,
		analyticsState = analyticsState,
		analyticsDispatch = analyticsDispatch,
		preselectedPlayer = preselectedPlayer,
		setPreselectedPlayer = setPreselectedPlayer,
		menuWidth = menuWidth,
		viewportDimension = viewportDimension,
		setLastSelectableObjects = if FFlagReportFocusNavIEMButtons then props.setLastSelectableObjects else nil,
	}

	if reportType == ReportTypes.Person then
		menuItems = React.createElement(ReportPersonMenuItemsContainer, {
			utilityProps = utilityProps,
			isSmallPortraitViewport = isSmallPortraitViewport,
		})
	elseif reportType == ReportTypes.Experience then
		menuItems = React.createElement(ReportExperienceMenuItemsContainer, {
			utilityProps = utilityProps,
			isSmallPortraitViewport = isSmallPortraitViewport,
		})
	end

	return React.createElement("Frame", {
		ref = abuseMenuFrameRef,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
		Position = UDim2.new(0, 0, 0, sizings.TopPadding),
	}, {
		FocusNavigationCoreScriptsWrapper = React.createElement(FocusRoot, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
			frameProps = {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			},
			isIsolated = if FFlagIEMReportScrollingFix then nil else true,
			isAutoFocusRoot = if FFlagReportFocusNavIEMButtons then isAutoFocusEnabled else true,
			shouldRestoreFocus = if FFlagReportFocusNavIEMButtons then false else true,
		}, {
			-- placeholder frame added to attach our modal selector and screenshot dialog
			-- necessary for proper selection UI behavior (console)
			[Constants.AbuseReportMenuPlaceholderFrame] = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				MenuLayoutFrame = React.createElement("Frame", {
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					Layout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = 0,
						Padding = UDim.new(0, 12),
					}),
					Padding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, sizings.ItemPadding),
						PaddingBottom = UDim.new(0, sizings.ItemPadding),
					}),
					SelectInSceneToggleFrame = if shouldSelectorRender
						then React.createElement("Frame", {
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.XY,
							Position = UDim2.new(0.5, 0, 0, 0),
							AnchorPoint = Vector2.new(0.5, 0),
							LayoutOrder = 0,
						}, {
							SelectInSceneToggle = React.createElement(SegmentedControl, {
								onTabActivated = function(tabIndex)
									setReportModeIndex(tabIndex)
								end,
								selectedTabIndex = reportModeIndex,
								tabs = {
									{
										tabName = localizedText.BuildAReport,
									},
									{
										tabName = localizedText.SelectInScene,
									},
								},
								width = UDim.new(0, menuWidth),
								ref = if FFlagIEMTabFocusNav then modeSelectorRef else nil,
							}),
						})
						else nil,
					Menu = if reportMode == ReportModes.SelectInScene
						then React.createElement(SelectInSceneReportMenu, {
							hideReportTab = props.hideReportTab,
							variant = if FFlagHighlightModePreciseSelectionEnabled
								then getHighlightModeVariant()
								else nil,
						})
						elseif reportMode == ReportModes.Classic then React.createElement("Frame", {
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.new(1, 0, 0, 0),
							LayoutOrder = 1,
						}, {
							Layout = React.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Vertical,
								SortOrder = Enum.SortOrder.LayoutOrder,
								Padding = UDim.new(0, sizings.ItemPadding),
							}),
							ReportTypeSelector = React.createElement(ReportTypeSelector, {
								label = localizedText.ReportType,
								abuseType = localizedText[REPORT_TYPES[reportTypeIndex]],
								layoutOrder = 0,
								utilityProps = utilityProps,
								isSelectionDisabled = isOnlyPlayerInGame,
								menuWidth = menuWidth,
								isSmallPortraitViewport = isSmallPortraitViewport,
								onClickLeft = function()
									reportAnythingDispatch({
										type = Constants.ReportAnythingActions.ClearAnnotationFlowProperties,
									})
									analyticsDispatch({
										type = Constants.AnalyticsActions.IncrementExperiencePersonChanged,
									})
									-- lua table index starts at 1 so we have to make some adjustents to the mod operations here
									setReportTypeIndex((reportTypeIndex - 1 - 1) % #REPORT_TYPES + 1)
								end,
								onClickRight = function()
									reportAnythingDispatch({
										type = Constants.ReportAnythingActions.ClearAnnotationFlowProperties,
									})
									analyticsDispatch({
										type = Constants.AnalyticsActions.IncrementExperiencePersonChanged,
									})
									-- lua table index starts at 1 so we have to make some adjustents to the mod operations here
									setReportTypeIndex((reportTypeIndex - 1 + 1) % #REPORT_TYPES + 1)
								end,
							}),
							MenuItemsContainer = React.createElement("Frame", {
								BackgroundTransparency = 1,
								LayoutOrder = 1,
								AutomaticSize = Enum.AutomaticSize.Y,
								Size = UDim2.new(1, 0, 0, 0),
							}, {
								MenuItems = menuItems,
							}),
							FooterFrame = React.createElement(View, {
								tag = "size-full-0 auto-y",
								LayoutOrder = 2,
							}, {
								TextFrame = React.createElement(View, {
									tag = "size-full col align-x-left gap-small padding-top-medium",
								}, {
									Divider = React.createElement(View, {
										tag = "size-full-0 stroke-muted padding-top-medium",
										LayoutOrder = 1,
									}),
									InfoText = React.createElement(Text, {
										Text = if isShowUKOSAIllegalContentReportingLink()
											then localizedText.FooterInformation2
											else localizedText.FooterInformation1,
										fontStyle = tokens.Typography.BodySmall,
										textStyle = tokens.Color.Content.Muted,
										TextWrapped = true,
										TextXAlignment = Enum.TextXAlignment.Left,
										tag = "auto-xy",
										LayoutOrder = 2,
									}),
								}),
							}),
							DSALinkFrame = if not FFlagMigrateAllOsaMessagingToCentralService
									and isShowEUDSAIllegalContentReportingLink()
								then React.createElement("Frame", {
									BackgroundTransparency = 1,
									LayoutOrder = 3,
									AutomaticSize = Enum.AutomaticSize.Y,
									Size = UDim2.new(1, 0, 0, 0),
								}, {
									DSALink = React.createElement(DSAReportLink),
								})
								else nil,
							OSALinkFrame = if not FFlagMigrateAllOsaMessagingToCentralService
									and isShowUKOSAIllegalContentReportingLink()
								then React.createElement(View, {
									tag = "size-full-0 auto-y",
									LayoutOrder = 3,
								}, {
									OSALink = React.createElement(OSAReportLink),
								})
								else nil,
							GenericIllegalContentReportLink = if FFlagMigrateAllOsaMessagingToCentralService
									and isShowGenericIllegalContentReportingLink()
								then React.createElement(View, {
									tag = "size-full-0 auto-y",
									LayoutOrder = 3,
								}, React.createElement(GenericReportLink))
								else nil,
							TakeItDownReportLink = if FFlagAddTakeItDownReportLinkToSurfaces
									and getTakeItDownReportLinkVisibility()
								then React.createElement(TakeItDownReportLink, {
									layoutOrder = 4,
								})
								else nil,
						})
						else nil,
				}),
			}),
		}),
	})
end

local MenuContainer = function(props: Props)
	local localization = Localization.new(LocalizationService.RobloxLocaleId)
	return React.createElement(CoreScriptsRootProvider, {}, {
		LocalizationProvider = React.createElement(LocalizationProvider, {
			localization = localization,
		}, {
			[Constants.AbuseReportMenuRootName] = React.createElement(AbuseReportMenuNew, props),
		}),
	})
end

return MenuContainer
