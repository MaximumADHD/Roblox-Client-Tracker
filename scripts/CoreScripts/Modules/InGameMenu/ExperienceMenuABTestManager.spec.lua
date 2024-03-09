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

local GetFFlagDisableChromeUnibar = require(script.Parent.Parent.Flags.GetFFlagDisableChromeUnibar)()
local GetFFlagDisableChromePinnedChat = require(script.Parent.Parent.Flags.GetFFlagDisableChromePinnedChat)()
local GetFFlagDisableChromeDefaultOpen = require(script.Parent.Parent.Flags.GetFFlagDisableChromeDefaultOpen)()

local GetFFlagDisableChromeFollowupUnibar = require(script.Parent.Parent.Flags.GetFFlagDisableChromeFollowupUnibar)()
local GetFFlagDisableChromeFollowupFTUX = require(script.Parent.Parent.Flags.GetFFlagDisableChromeFollowupFTUX)()
local GetFFlagDisableChromeFollowupOcclusion = require(script.Parent.Parent.Flags.GetFFlagDisableChromeFollowupOcclusion)()

local isV2Valid = false
local isV3Valid = false
local isControlsValid = false
local isModernizationValid = false
local isConsoleModernizationValid = true
local isChromeValid = false
local isChromeFollowupValid = true
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
			if IsExperienceMenuABTestEnabled() and isChromeValid then
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

		it("returns chrome for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() and isChromeValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeUnibar then ExperienceMenuABTestManager.default.chromeVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeUnibar then ExperienceMenuABTestManager.default.chromeVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeUnibar)
				expect(manager:shouldPinChat()).toBe(false)
				expect(manager:shouldDefaultOpen()).toBe(false)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns chrome with pinned chat for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() and isChromeValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromePinnedChatVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromePinnedChat then ExperienceMenuABTestManager.default.chromePinnedChatVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromePinnedChat then ExperienceMenuABTestManager.default.chromePinnedChatVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromePinnedChat)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromePinnedChat)
				expect(manager:shouldDefaultOpen()).toBe(false)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns chrome with default open for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() and isChromeValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeDefaultOpenVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeDefaultOpen then ExperienceMenuABTestManager.default.chromeDefaultOpenVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeDefaultOpen then ExperienceMenuABTestManager.default.chromeDefaultOpenVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeDefaultOpen)
				expect(manager:shouldPinChat()).toBe(false)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeDefaultOpen)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns chrome (follow-up) for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() and isChromeFollowupValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeFollowupVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeFollowupUnibar then ExperienceMenuABTestManager.default.chromeFollowupVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeFollowupUnibar then ExperienceMenuABTestManager.default.chromeFollowupVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeFollowupUnibar)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeFollowupUnibar)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeFollowupUnibar)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns chrome (follow-up) FTUX for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() and isChromeFollowupValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeFTUXVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeFollowupFTUX then ExperienceMenuABTestManager.default.chromeFTUXVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeFollowupFTUX then ExperienceMenuABTestManager.default.chromeFTUXVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeFollowupFTUX)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeFollowupFTUX)
				expect(manager:shouldDefaultOpen()).toBe(false)
				expect(manager:shouldShowFTUX()).toBe(not GetFFlagDisableChromeFollowupFTUX)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
			end
		end)

		it("returns chrome (follow-up) occlusion for user in the variant, if not disabled", function()
			if IsExperienceMenuABTestEnabled() and isChromeFollowupValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeOcclusionVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toMatchObject({ _ixpServiceWrapper = expect.anything() })

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be chrome, unless disabled
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeFollowupOcclusion then ExperienceMenuABTestManager.default.chromeOcclusionVersionId() else ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).toBe(if not GetFFlagDisableChromeFollowupOcclusion then ExperienceMenuABTestManager.default.chromeOcclusionVersionId() else ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isChromeEnabled()).toBe(not GetFFlagDisableChromeFollowupOcclusion)
				expect(manager:shouldPinChat()).toBe(not GetFFlagDisableChromeFollowupOcclusion)
				expect(manager:shouldDefaultOpen()).toBe(not GetFFlagDisableChromeFollowupOcclusion)
				expect(manager:shouldShowFTUX()).toBe(false)
				expect(manager:isMenuModernizationEnabled()).toBe(false)
				expect(manager:areMenuControlsEnabled()).toBe(false)
				expect(manager:isV2MenuEnabled()).toBe(false)
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
