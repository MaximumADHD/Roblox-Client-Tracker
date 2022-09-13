local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Mock = InGameMenuDependencies.Mock

local GetFFlagShareInviteLinkContextMenuV1ABTestEnabled =
	require(script.Parent.Flags.GetFFlagShareInviteLinkContextMenuV1ABTestEnabled)
local ShareInviteLinkABTestManager = require(script.Parent.ShareInviteLinkABTestManager)

local LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED = "ShareInviteLinkExperimentEnabled"
local HAS_KEY_IN_GAME_ENGINE = game:GetEngineFeature("UniversalAppShareLinksStorageKey")

return function()
	describe("lifecycle", function()
		beforeEach(function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "")
				AppStorageService:Flush()
			end
		end)

		afterEach(function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "")
				AppStorageService:Flush()
			end
		end)

		it("should return instance without error", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local manager = ShareInviteLinkABTestManager.new()
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
			end
		end)

		it("returns default value when isShareInviteLinkEnabled is called before initialize", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
				expect(manager._currentSessionIsEnabled).to.equal(nil)
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)
			end
		end)

		it("returns cached value when isShareInviteLinkEnabled is called before initialize", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				-- pre-set cache to true
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "true")
				AppStorageService:Flush()

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
				expect(manager._currentSessionIsEnabled).to.equal(nil)
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)
			end
		end)

		it("returns cached value when launched a second time", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
				expect(manager._currentSessionIsEnabled).to.equal(nil)

				-- initialize test manager to get experiment info from IXP
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)

				-- verify share_invite_link_enabled value is written to cache
				expect(manager.getCachedValue()).to.equal(true)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)
			end
		end)

		it("returns proper value when ixp status is updated", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
				expect(manager._currentSessionIsEnabled).to.equal(nil)

				-- initialize test manager to get experiment info from IXP
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)

				-- verify share_invite_link_enabled value is written to cache
				expect(manager.getCachedValue()).to.equal(true)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- change ixp status
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "false" } })

				-- initialize again to get new value from IXP
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- verify share_invite_link_enabled value is written to cache
				expect(manager.getCachedValue()).to.equal(false)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)
			end
		end)

		it("returns false if ixp service returns layer data w/ nil params", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = nil } })

				-- pre-set cache to true
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "true")
				AppStorageService:Flush()

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
				expect(manager._currentSessionIsEnabled).to.equal(nil)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- verify default value is written to cache
				expect(manager.getCachedValue()).to.equal(false)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)
			end
		end)

		it("returns false if ixp service returns nil layer data", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = nil })

				-- pre-set cache to true
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "true")
				AppStorageService:Flush()

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()
				expect(manager._currentSessionIsEnabled).to.equal(nil)

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- verify default value is written to cache
				expect(manager.getCachedValue()).to.equal(false)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)
			end
		end)
	end)
end
