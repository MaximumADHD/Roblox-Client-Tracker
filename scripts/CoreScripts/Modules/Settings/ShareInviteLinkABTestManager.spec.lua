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

		it("returns default value of false when nothing is cached", function()
			if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).to.be.ok()
				expect(manager._ixpServiceWrapper).to.be.ok()

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be updated to be true
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

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be updated to be true
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is true
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

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- version should now be updated to be true
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- beginning of second session
				manager:initialize()

				-- on second session, we will read from the cache which is true
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- change ixp status
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "false" } })

				-- beginning of third session
				manager:initialize()

				-- on third session, we will read from the cache which is false
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

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- value should equal the default value, which is false
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

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).to.equal(true)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- value should equal the default value, which is false
				expect(manager:isShareInviteLinkEnabled()).to.equal(false)
			end
		end)
	end)
end
