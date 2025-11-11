--[[
Wraps old People.lua page and its new refactored version that uses the 
Settings Framework.
Flag flip will determine whether the old or new page is attached.
]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules 

-- React
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

-- Flags
local FFlagRefactorPeoplePage = require(Modules.Settings.Flags.FFlagRefactorPeoplePage)
local FFlagBuilderIcons = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon
local FFlagNavigateToBlockingModal = require(Modules.Common.Flags.FFlagNavigateToBlockingModal)
local FFlagEnableNewBlockingModal = require(Modules.Common.Flags.FFlagEnableNewBlockingModal)
local FFlagEnableToastForBlockingModal = require(Modules.Common.Flags.FFlagEnableToastForBlockingModal)
local FFlagRenderPeoplePageOnTabSwitch = game:DefineFastFlag("RenderPeoplePageOnTabSwitch", false)
local FFlagRemovePeoplePageFoundationProvider = game:DefineFastFlag("RemovePeoplePageFoundationProvider", false)
local FFlagRelocateMobileMenuButtons = require(Modules.Settings.Flags.FFlagRelocateMobileMenuButtons)
local FIntRelocateMobileMenuButtonsVariant = require(Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)

-- Chrome check
local Chrome = RobloxGui.Modules.Chrome
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local LocalStore = if ChromeEnabled then require(Chrome.ChromeShared.Service.LocalStore) else nil

-- Modules
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)
local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local Theme = require(RobloxGui.Modules.Settings.Theme)
local locales = Localization.new(LocalizationService.RobloxLocaleId)
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local BlockingModalScreen = require(Modules.Settings.Components.Blocking.BlockingModalScreen)
local migrationLookup = BuilderIcons.Migration['uiblox']
local PeopleService = require(CorePackages.Workspace.Packages.PeopleService)

-- Focus Navigation
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local useRegistryEntry = FocusNavigationUtils.FocusNavigableSurfaceRegistry.useRegistryEntry

local Integrations
local Constants
local Utils
if FFlagRefactorPeoplePage() then
	Constants = require(CorePackages.Workspace.Packages.PeopleReactView).Constants
	Integrations = require(Modules.Settings.Integrations)
	Utils = Integrations.Utils
end

-- Flags
local PeopleFlags = PeopleService.getService("Flags")
local GetFFlagAddPeoplePageCardLayout = PeopleFlags.GetFFlagAddPeoplePageCardLayout
local GetFFlagPeoplePageLazyRenderCards = PeopleFlags.GetFFlagPeoplePageLazyRenderCards

local tree: ReactRoblox.RootType? = nil
local getDisplayed, setDisplayed = Signals.createSignal(false)

local function PeopleFocusRoot(props)
	local centralOverlay = useRegistryEntry(FocusNavigableSurfaceIdentifierEnum.CentralOverlay)
	-- Only enable auto focus when no modal is open
	local shouldAutoFocus = centralOverlay == nil
	
	return React.createElement(FocusRoot, {
		surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
		isAutoFocusRoot = shouldAutoFocus,
	}, props.children)
end


-- Returns GameSettings Page with Settings Framework
local function createPeoplePage()
	local PeopleReactView = require(CorePackages.Workspace.Packages.PeopleReactView).PeopleReactView
	local PeopleService = require(CorePackages.Workspace.Packages.PeopleService)
	local PeoplePage = SettingsPageFactory:CreateNewPage()
	
	------ TAB CUSTOMIZATION -------
	PeoplePage.TabHeader.Name = Constants.PEOPLEPAGE.TAB_HEADER.NAME
	PeoplePage.Page.Name = Constants.PEOPLEPAGE.PAGE_ID
	local icon
	if FFlagBuilderIcons then
		icon = migrationLookup[Constants.PEOPLEPAGE.TAB_HEADER.ICON]
		PeoplePage.TabHeader.TabLabel.Icon.Text = icon.name
		PeoplePage.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[icon.variant]
	else
		icon = Theme.Images[Constants.PEOPLEPAGE.TAB_HEADER.ICON]
		PeoplePage.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		PeoplePage.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		PeoplePage.TabHeader.TabLabel.Icon.Image = icon.Image
	end
	PeoplePage.TabHeader.TabLabel.Title.Text = locales:Format(Constants.PEOPLEPAGE.TAB_HEADER.TEXT)

	-- Register the SettingsHub instance with the PeopleService
	local SettingsHubService = PeopleService.getService("SettingsHubService")
	SettingsHubService.register(PeoplePage)

	function PeoplePage:CreateMenuButtonsContainer()
		SettingsHubService.setShowMenuButtonsContainer(true)
	end

	if FFlagRelocateMobileMenuButtons and FIntRelocateMobileMenuButtonsVariant == 2 then
		function PeoplePage:UnmountMenuButtonsContainer()
			SettingsHubService.setShowMenuButtonsContainer(false)
		end
	end

	------ PAGE CUSTOMIZATION -------	
	local function createReactTree()
		if tree then
			return
		end
		
		local scrollingFrame = if GetFFlagPeoplePageLazyRenderCards() then PeoplePage.Page:FindFirstAncestorWhichIsA("ScrollingFrame") else nil

		local PeopleConditionalView = function()
			local displayed = SignalsReact.useSignalState(getDisplayed)

			-- Remove function and place elements inline when FFlagRemovePeoplePageFoundationProvider is cleaned up
			local function withFoundationProvider(children)
				if FFlagRemovePeoplePageFoundationProvider then
					return children
				else
					return React.createElement(FoundationProvider, {
						theme = Foundation.Enums.Theme.Dark,
						device = Utils.getDeviceType(),
					}, children)
				end
			end

			local People = if displayed then React.createElement(CoreScriptsRootProvider, {}, {
					LocalizationProvider = React.createElement(LocalizationProvider, {
						localization = locales,
					}, withFoundationProvider({
							FocusRoot = React.createElement(PeopleFocusRoot, {}, {
								PeopleReactView = React.createElement(PeopleReactView, {
									blockingModalScreen = BlockingModalScreen,
									blockingFlags = {
										FFlagNavigateToBlockingModal = FFlagNavigateToBlockingModal,
										FFlagEnableNewBlockingModal = FFlagEnableNewBlockingModal,
										FFlagEnableToastForBlockingModal = FFlagEnableToastForBlockingModal,
									},
									scrollingFrame = if GetFFlagPeoplePageLazyRenderCards() then scrollingFrame else nil,
									chromeEnabled = ChromeEnabled,
									getUniversesExposedTo = if GetFFlagAddPeoplePageCardLayout() and LocalStore then LocalStore.getUniversesExposedTo else nil,
									addUniverseToExposureList = if GetFFlagAddPeoplePageCardLayout() and LocalStore then LocalStore.addUniverseToExposureList else nil,
								})
							})
						})
					)
				}) else nil

			return People
		end

		tree = ReactRoblox.createRoot(PeoplePage.Page)
		if tree then tree:render(React.createElement(PeopleConditionalView)) end
	end

	PeoplePage.Displayed.Event:Connect(function()
		if not FFlagRenderPeoplePageOnTabSwitch or not getDisplayed(false) then
			createReactTree()
			setDisplayed(true)
		end
	end)

	if FFlagRenderPeoplePageOnTabSwitch then
		SettingsShowSignal:connect(function(isOpen)
			if not isOpen then
				setDisplayed(false)
			end
		end)
	else
		PeoplePage.Hidden.Event:Connect(function()
			setDisplayed(false)
		end)
	end

	PeoplePage.Page.Size = UDim2.new(1, 0, 0, 0)
	PeoplePage.Page.AutomaticSize = Enum.AutomaticSize.Y

	return PeoplePage
end

-- FFlag switch for the new people page
if FFlagRefactorPeoplePage() then
	return createPeoplePage()
end
return require(Modules.Settings.Pages.Players)
