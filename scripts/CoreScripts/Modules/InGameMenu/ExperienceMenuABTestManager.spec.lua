local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Mock = InGameMenuDependencies.Mock

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION = "ExperienceMenuCSATQualification"


local GetFFlagDisableChromeV3Baseline = require(script.Parent.Parent.Flags.GetFFlagDisableChromeV3Baseline)()
local GetFFlagDisableChromeV3Captures = require(script.Parent.Parent.Flags.GetFFlagDisableChromeV3Captures)()
local GetFFlagDisableChromeV3StaticSelfView = require(script.Parent.Parent.Flags.GetFFlagDisableChromeV3StaticSelfView)()
local GetFFlagDisableChromeV3Icon = require(script.Parent.Parent.Flags.GetFFlagDisableChromeV3Icon)()
local GetFFlagDisableChromeV3DockedMic = require(script.Parent.Parent.Flags.GetFFlagDisableChromeV3DockedMic)()

local isV2Valid = false
local isV3Valid = false
local isControlsValid = false
local isModernizationValid = false
local isConsoleModernizationValid = true
local isReportAbuseV2Valid = false

return function()
	describe("lifecycle", function()
		beforeEach(function()
			if IsExperienceMenuABTestEnabled() then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, "")
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION, "")
				AppStorageService:Flush()
			end
		end)

		afterEach(function()
			if IsExperienceMenuABTestEnabled() then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, "")
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION, "")
				AppStorageService:Flush()
			end
		end)

		it("should return instance without error", function()
			if IsExperienceMenuABTestEnabled() then
				local manager = ExperienceMenuABTestManager.new()
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })
			end
		end)

		it("returns default menu version v2 when nothing is cached initially", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.v2VersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when we launch initially menu version should read from cache
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should still be v1 even though recently fetched version is v2
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns v2 menu for user in v2 variant", function()
			if IsExperienceMenuABTestEnabled() and isV2Valid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.v2VersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version is v2
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v2VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is v2
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v2VersionId())
				expect(manager:isV2MenuEnabled()).toBe(true)
			end
		end)

		it("returns menu controls for user in the baseline controls variant", function()
			if IsExperienceMenuABTestEnabled() and isControlsValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.controlsBaselineVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.controlsBaselineVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.controlsBaselineVersionId())
				expect(manager:areMenuControlsEnabled()).toBe(true)
				expect(manager:isV2MenuEnabled()).toBe(false)

				expect(manager:shouldShowNewNavigationLayout()).toBe(true)
				expect(manager:shouldShowHomeButton()).toBe(false)
			end
		end)

		it("returns menu controls for user in the old layout controls variant", function()
			if IsExperienceMenuABTestEnabled() and isControlsValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.controlsOldLayoutVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.controlsOldLayoutVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.controlsOldLayoutVersionId())
				expect(manager:areMenuControlsEnabled()).toBe(true)
				expect(manager:isV2MenuEnabled()).toBe(false)

				expect(manager:shouldShowNewNavigationLayout()).toBe(false)
				expect(manager:shouldShowHomeButton()).toBe(false)
			end
		end)

		it("returns menu controls for user in the home button controls variant", function()
			if IsExperienceMenuABTestEnabled() and isControlsValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.controlsHomeButtonVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.controlsHomeButtonVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.controlsHomeButtonVersionId())
				expect(manager:areMenuControlsEnabled()).toBe(true)
				expect(manager:isV2MenuEnabled()).toBe(false)

				expect(manager:shouldShowNewNavigationLayout()).toBe(true)
				expect(manager:shouldShowHomeButton()).toBe(true)
			end
		end)

		it("returns menu modernization for user in the modernized variant", function()
			if IsExperienceMenuABTestEnabled() and isModernizationValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = {
						menuVersion = ExperienceMenuABTestManager.default.modernizationModernizedVersionId(),
					},
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.modernizationModernizedVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.modernizationModernizedVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).toBe(true)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
				expect(manager:isChromeEnabled()).toBe(false)

				expect(manager:shouldShowBiggerText()).toBe(false)
				expect(manager:shouldShowStickyBar()).toBe(false)
			end
		end)

		it("returns menu modernization for user in the modernized big text variant", function()
			if IsExperienceMenuABTestEnabled() and isModernizationValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.modernizationBigTextVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.modernizationBigTextVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.modernizationBigTextVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).toBe(true)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)

				expect(manager:shouldShowBiggerText()).toBe(true)
				expect(manager:shouldShowStickyBar()).toBe(false)
			end
		end)

		it("returns menu modernization for user in the modernized sticky bar variant", function()
			if IsExperienceMenuABTestEnabled() and isModernizationValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = {
						menuVersion = ExperienceMenuABTestManager.default.modernizationStickyBarVersionId(),
					},
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.modernizationStickyBarVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.modernizationStickyBarVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).toBe(true)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)

				expect(manager:shouldShowBiggerText()).toBe(false)
				expect(manager:shouldShowStickyBar()).toBe(true)
			end
		end)

		it("returns menu modernization for user in the console modernization variant", function()
			if IsExperienceMenuABTestEnabled() and isConsoleModernizationValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = {
						menuVersion = ExperienceMenuABTestManager.default.consoleModernizationVersionId(),
					},
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version modernization
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.consoleModernizationVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is modernization
				expect(manager:getVersion()).toBe(
				ExperienceMenuABTestManager.default.consoleModernizationVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).toBe(true)
				expect(manager:isChromeEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)

				expect(manager:shouldShowBiggerText()).toBe(false)
				expect(manager:shouldShowStickyBar()).toBe(false)
			end
		end)
		
		it("returns report abuse V2 for user in the variant", function()
			if IsExperienceMenuABTestEnabled() and isReportAbuseV2Valid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = {
						menuVersion = ExperienceMenuABTestManager.default.reportAbuseMenuV2VersionId(),
					},
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be Report Abuse v2
				expect(manager:getVersion()).toBe(
					ExperienceMenuABTestManager.default.reportAbuseMenuV2VersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is Report Abuse v2
				expect(manager:getVersion()).toBe(
					ExperienceMenuABTestManager.default.reportAbuseMenuV2VersionId()
				)
				expect(manager:isReportAbuseMenuV2Enabled()).toBe(true)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
				expect(manager:isChromeEnabled()).toBe(false)
			end
		end)

		it("returns chrome v3 for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeV3BaselineVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3Baseline then ExperienceMenuABTestManager.default.chromeV3BaselineVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3Baseline then ExperienceMenuABTestManager.default.chromeV3BaselineVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeV3Baseline)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeV3Baseline)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeV3Baseline)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:shouldShowCaptures()).toBe(false)
				expect(manager:shouldShowStaticSelfView()).toBe(false)
				expect(manager:shouldShowNewIcon()).toBe(false)
				expect(manager:shouldDockMic()).toBe(false)
			end
		end)

		it("returns chrome v3 with screenshot utility for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeCapturesVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3Captures then ExperienceMenuABTestManager.default.chromeCapturesVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3Captures then ExperienceMenuABTestManager.default.chromeCapturesVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeV3Captures)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeV3Captures)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeV3Captures)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:shouldShowCaptures()).toBe(not GetFFlagDisableChromeV3Captures)
				expect(manager:shouldShowStaticSelfView()).toBe(false)
				expect(manager:shouldShowNewIcon()).toBe(false)
				expect(manager:shouldDockMic()).toBe(false)
			end
		end)

		it("returns chrome v3 with static self view icon for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeStaticSelfViewVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3StaticSelfView then ExperienceMenuABTestManager.default.chromeStaticSelfViewVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3StaticSelfView then ExperienceMenuABTestManager.default.chromeStaticSelfViewVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeV3StaticSelfView)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeV3StaticSelfView)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeV3StaticSelfView)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:shouldShowCaptures()).toBe(false)
				expect(manager:shouldShowStaticSelfView()).toBe(not GetFFlagDisableChromeV3StaticSelfView)
				expect(manager:shouldShowNewIcon()).toBe(false)
				expect(manager:shouldDockMic()).toBe(false)
			end
		end)

		it("returns chrome v3 with new icon for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeIconVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3Icon then ExperienceMenuABTestManager.default.chromeIconVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3Icon then ExperienceMenuABTestManager.default.chromeIconVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeV3Icon)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeV3Icon)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeV3Icon)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:shouldShowCaptures()).toBe(false)
				expect(manager:shouldShowStaticSelfView()).toBe(false)
				expect(manager:shouldShowNewIcon()).toBe(not GetFFlagDisableChromeV3Icon)
				expect(manager:shouldDockMic()).toBe(false)
			end
		end)

		it("returns chrome v3 with docked mic for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeDockedMicVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3DockedMic then ExperienceMenuABTestManager.default.chromeDockedMicVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeV3DockedMic then ExperienceMenuABTestManager.default.chromeDockedMicVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeV3DockedMic)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeV3DockedMic)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeV3DockedMic)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:shouldShowCaptures()).toBe(false)
				expect(manager:shouldShowStaticSelfView()).toBe(false)
				expect(manager:shouldShowNewIcon()).toBe(false)
				expect(manager:shouldDockMic()).toBe(not GetFFlagDisableChromeV3DockedMic)
			end
		end)

		it("returns default menu if ixp service is not providing valid value", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({ returnValue = { menuVersion = nil } })

				-- pre-set cache to v2
				AppStorageService:SetItem(
					LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION,
					ExperienceMenuABTestManager.default.v2VersionId()
				)
				AppStorageService:Flush()

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when we launch initially menu version should read from cache
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should still be v1
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is v1
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns default menu if ixp service is providing variant of menu that is not supported", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({ returnValue = { menuVersion = "v100" } })

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when we launch initially menu version should read from cache
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should be v3
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is v3
				expect(manager:getVersion()).toBe(ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isV2MenuEnabled()).toBe(false)
				expect(manager:isV3MenuEnabled()).toBe(false)
			end
		end)

		it("keeps track of CSAT qualification and threshold", function()
			if IsExperienceMenuABTestEnabled() and isV3Valid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.v3VersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should be v3
				expect(manager:getVersion()).toBe(manager.v3VersionId())

				-- beginning of second session
				manager:initialize()

				expect(manager:getCSATQualification()).toBe(false)

				for i = 1, manager.getCSATQualificationThreshold() - 1 do
					manager:setCSATQualification()
					expect(manager:getCSATQualification()).toBe(false)
				end

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).toBe(true)

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).toBe(true)
			end
		end)

		it("keeps track of CSAT qualification and threshold, starting with junk data", function()
			if IsExperienceMenuABTestEnabled() and isV3Valid then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION, tostring(true))

				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.v3VersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should be v3
				expect(manager:getVersion()).toBe(manager.v3VersionId())

				-- beginning of second session
				manager:initialize()

				expect(manager:getCSATQualification()).toBe(false)

				for i = 1, manager.getCSATQualificationThreshold() - 1 do
					manager:setCSATQualification()
					expect(manager:getCSATQualification()).toBe(false)
				end

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).toBe(true)

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).toBe(true)
			end
		end)
	end)
end
