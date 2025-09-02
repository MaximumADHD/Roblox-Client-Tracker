--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local IXPService = game:GetService("IXPService")
local LocalizationService = game:GetService("LocalizationService")
local PlayersService = game:GetService("Players")
local SafetyService = game:GetService("SafetyService")
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local Style = require(CorePackages.Workspace.Packages.Style)
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
local ModalBasedSelectorDialogController = require(root.Components.ModalBasedSelectorDialogController)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useReportAnythingWithScreenshot = require(root.Hooks.useReportAnythingWithScreenshot)
local getMenuItemSizings = require(root.Utility.getMenuItemSizings)
local analyticsReducer = require(root.Reducers.analyticsReducer)
local createCleanup = require(root.Components.createCleanup)

local View = Foundation.View

local DSAReportingPackage = require(CorePackages.Workspace.Packages.DsaIllegalContentReporting)
local isShowEUDSAIllegalContentReportingLink = DSAReportingPackage.isShowEUDSAIllegalContentReportingLink
local DSAReportLink = DSAReportingPackage.DSAReportLink
local isShowUKOSAIllegalContentReportingLink = DSAReportingPackage.isShowUKOSAIllegalContentReportingLink
local OSAReportLink = DSAReportingPackage.OSAReportLink
local StyleProviderWithDefaultTheme = Style.StyleProviderWithDefaultTheme

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local isAbuseReportMenuOpenCloseSignalEnabled = require(root.Flags.isAbuseReportMenuOpenCloseSignalEnabled)
local GetFFlagWHAM1707ExperimentForceEnabled = require(root.Flags.GetFFlagWHAM1707ExperimentForceEnabled)
local FFlagAbuseReportTabRenderPerformanceFixEnabled =
	require(root.Flags.FFlagAbuseReportTabRenderPerformanceFixEnabled)
local FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled =
	require(root.Flags.FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled)

local FStringReportMenuIXPLayer = SharedFlags.FStringReportMenuIXPLayer
local FStringEARReportMenuIXPLayer = SharedFlags.FStringEARReportMenuIXPLayer
local IXPField = game:DefineFastString("SelectInSceneIXPField", "EnableSelectInScene")
local IXPFieldWHAM1707 = game:DefineFastString("WHAM1707IXPField", "EnableWHAM1707")
local FFlagHideShortcutsOnReportDropdown = require(root.Flags.FFlagHideShortcutsOnReportDropdown)
local FFlagFixDuplicateFoundationStylesheets = game:DefineFastFlag("FixDuplicateFoundationStylesheets", false)

local isShowSelectInSceneReportMenu = require(root.Utility.isShowSelectInSceneReportMenu)

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
			ModalBasedSelectorDialogController.unmountModalSelector() -- added so that modal selector doesnt stay after closing menu
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
			if ReportAbuseAnalytics:getAbuseReportSessionEntryPoint() == "" then
				reportAnythingDispatch({
					type = Constants.ReportAnythingActions.ClearAll,
				})
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

	if FFlagAbuseReportTabRenderPerformanceFixEnabled and not isReportTabVisible then
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
			isIsolated = true,
			isAutoFocusRoot = true,
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
					Padding = if FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled
						then React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, sizings.ItemPadding),
							PaddingBottom = UDim.new(0, sizings.ItemPadding),
						})
						else nil,
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
							}),
						})
						else nil,
					Menu = if reportMode == ReportModes.SelectInScene
						then React.createElement(SelectInSceneReportMenu, { hideReportTab = props.hideReportTab })
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
							DSALinkFrame = if isShowEUDSAIllegalContentReportingLink()
								then React.createElement("Frame", {
									BackgroundTransparency = 1,
									LayoutOrder = 2,
									AutomaticSize = Enum.AutomaticSize.Y,
									Size = UDim2.new(1, 0, 0, 0),
								}, {
									DSALink = React.createElement(DSAReportLink),
								})
								else nil,
							OSALinkFrame = if isShowUKOSAIllegalContentReportingLink()
								then React.createElement(View, {
									tag = "size-full-0 auto-y",
									LayoutOrder = 2,
								}, {
									OSALink = React.createElement(OSAReportLink),
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

	if FFlagFixDuplicateFoundationStylesheets then
		return React.createElement(CoreScriptsRootProvider, {}, {
			LocalizationProvider = React.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				[Constants.AbuseReportMenuRootName] = React.createElement(AbuseReportMenuNew, props),
			}),
		})
	end

	return React.createElement(StyleProviderWithDefaultTheme, {
		withDarkTheme = true,
	}, {
		CoreScriptsRootProvider = React.createElement(CoreScriptsRootProvider, {}, {
			LocalizationProvider = React.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				FoundationProvider = React.createElement(Foundation.FoundationProvider, {
					theme = Foundation.Enums.Theme.Dark,
				}, {
					[Constants.AbuseReportMenuRootName] = React.createElement(AbuseReportMenuNew, props),
				}),
			}),
		}),
	})
end

return MenuContainer
