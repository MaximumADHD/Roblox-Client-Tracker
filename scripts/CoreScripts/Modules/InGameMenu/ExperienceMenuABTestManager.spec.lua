local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Mock = InGameMenuDependencies.Mock

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION = "ExperienceMenuCSATQualification"

local isV2Valid = false
local isV3Valid = false
local isControlsValid = false
local isModernizationValid = false
local isChromeValid = true

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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when we launch initially menu version should read from cache
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should still be v1 even though recently fetched version is v2
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isV2MenuEnabled()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version is v2
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v2VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is v2
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v2VersionId())
				expect(manager:isV2MenuEnabled()).to.equal(true)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.controlsBaselineVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.controlsBaselineVersionId())
				expect(manager:areMenuControlsEnabled()).to.equal(true)
				expect(manager:isV2MenuEnabled()).to.equal(false)

				expect(manager:shouldShowNewNavigationLayout()).to.equal(true)
				expect(manager:shouldShowHomeButton()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.controlsOldLayoutVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.controlsOldLayoutVersionId())
				expect(manager:areMenuControlsEnabled()).to.equal(true)
				expect(manager:isV2MenuEnabled()).to.equal(false)

				expect(manager:shouldShowNewNavigationLayout()).to.equal(false)
				expect(manager:shouldShowHomeButton()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.controlsHomeButtonVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.controlsHomeButtonVersionId())
				expect(manager:areMenuControlsEnabled()).to.equal(true)
				expect(manager:isV2MenuEnabled()).to.equal(false)

				expect(manager:shouldShowNewNavigationLayout()).to.equal(true)
				expect(manager:shouldShowHomeButton()).to.equal(true)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(
					ExperienceMenuABTestManager.default.modernizationModernizedVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(
					ExperienceMenuABTestManager.default.modernizationModernizedVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).to.equal(true)
				expect(manager:areMenuControlsEnabled()).to.equal(false)
				expect(manager:isV2MenuEnabled()).to.equal(false)
				expect(manager:isChromeEnabled()).to.equal(false)

				expect(manager:shouldShowBiggerText()).to.equal(false)
				expect(manager:shouldShowStickyBar()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(
					ExperienceMenuABTestManager.default.modernizationBigTextVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(
					ExperienceMenuABTestManager.default.modernizationBigTextVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).to.equal(true)
				expect(manager:areMenuControlsEnabled()).to.equal(false)
				expect(manager:isV2MenuEnabled()).to.equal(false)

				expect(manager:shouldShowBiggerText()).to.equal(true)
				expect(manager:shouldShowStickyBar()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(
					ExperienceMenuABTestManager.default.modernizationStickyBarVersionId()
				)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(
					ExperienceMenuABTestManager.default.modernizationStickyBarVersionId()
				)
				expect(manager:isMenuModernizationEnabled()).to.equal(true)
				expect(manager:areMenuControlsEnabled()).to.equal(false)
				expect(manager:isV2MenuEnabled()).to.equal(false)

				expect(manager:shouldShowBiggerText()).to.equal(false)
				expect(manager:shouldShowStickyBar()).to.equal(true)
			end
		end)

		it("returns chrome for user in the variant", function()
			if IsExperienceMenuABTestEnabled() and isChromeValid then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({
					returnValue = { menuVersion = ExperienceMenuABTestManager.default.chromeVersionId() },
				})

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be version controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.chromeVersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is controls
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.chromeVersionId())
				expect(manager:isChromeEnabled()).to.equal(true)
				expect(manager:isMenuModernizationEnabled()).to.equal(false)
				expect(manager:areMenuControlsEnabled()).to.equal(false)
				expect(manager:isV2MenuEnabled()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when we launch initially menu version should read from cache
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should still be v1
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is v1
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isV2MenuEnabled()).to.equal(false)
			end
		end)

		it("returns default menu if ixp service is providing variant of menu that is not supported", function()
			if IsExperienceMenuABTestEnabled() then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData = Mock.MagicMock.new({ returnValue = { menuVersion = "v100" } })

				local manager = ExperienceMenuABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when we launch initially menu version should read from cache
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should be v3
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is v3
				expect(manager:getVersion()).to.equal(ExperienceMenuABTestManager.default.v1VersionId())
				expect(manager:isV2MenuEnabled()).to.equal(false)
				expect(manager:isV3MenuEnabled()).to.equal(false)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should be v3
				expect(manager:getVersion()).to.equal(manager.v3VersionId())

				-- beginning of second session
				manager:initialize()

				expect(manager:getCSATQualification()).to.equal(false)

				for i = 1, manager.getCSATQualificationThreshold() - 1 do
					manager:setCSATQualification()
					expect(manager:getCSATQualification()).to.equal(false)
				end

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).to.equal(true)

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).to.equal(true)
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
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should be v3
				expect(manager:getVersion()).to.equal(manager.v3VersionId())

				-- beginning of second session
				manager:initialize()

				expect(manager:getCSATQualification()).to.equal(false)

				for i = 1, manager.getCSATQualificationThreshold() - 1 do
					manager:setCSATQualification()
					expect(manager:getCSATQualification()).to.equal(false)
				end

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).to.equal(true)

				manager:setCSATQualification()
				expect(manager:getCSATQualification()).to.equal(true)
			end
		end)
	end)
end
