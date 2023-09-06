local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Mock = InGameMenuDependencies.Mock

local GetFFlagShareInviteLinkContextMenuABTestEnabled =
	require(script.Parent.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)
local ShareInviteLinkABTestManager = require(script.Parent.ShareInviteLinkABTestManager)

local LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED = "ShareInviteLinkExperimentEnabled"
local HAS_KEY_IN_GAME_ENGINE = game:GetEngineFeature("UniversalAppShareLinksStorageKey")

return function()
	describe("lifecycle", function()
		beforeEach(function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "")
				AppStorageService:Flush()
			end
		end)

		afterEach(function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "")
				AppStorageService:Flush()
			end
		end)

		it("should return instance without error", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local manager = ShareInviteLinkABTestManager.new()
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
				})
			end
		end)

		it("returns default value when isShareInviteLinkEnabled is called before initialize", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
					_currentSessionIsEnabled = expect.anything(),
				})
				expect(manager:isShareInviteLinkEnabled()).toBe(false)
			end
		end)

		it("returns cached value when isShareInviteLinkEnabled is called before initialize", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				-- pre-set cache to true
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "true")
				AppStorageService:Flush()

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
					_currentSessionIsEnabled = expect.anything(),
				})
				expect(manager:isShareInviteLinkEnabled()).toBe(true)
			end
		end)

		it("returns cached value when launched a second time", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
					_currentSessionIsEnabled = nil,
				})

				-- initialize test manager to get experiment info from IXP
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).toBe(false)

				-- verify share_invite_link_enabled value is written to cache
				expect(manager.getCachedValue()).toBe(true)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).toBe(true)
			end
		end)

		it("returns proper value when ixp status is updated", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "true" } })

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
					_currentSessionIsEnabled = nil,
				})

				-- initialize test manager to get experiment info from IXP
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).toBe(false)

				-- verify share_invite_link_enabled value is written to cache
				expect(manager.getCachedValue()).toBe(true)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).toBe(true)

				-- change ixp status
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = "false" } })

				-- initialize again to get new value from IXP
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).toBe(true)

				-- verify share_invite_link_enabled value is written to cache
				expect(manager.getCachedValue()).toBe(false)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).toBe(false)
			end
		end)

		it("returns false if ixp service returns layer data w/ nil params", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = { share_invite_link_enabled = nil } })

				-- pre-set cache to true
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "true")
				AppStorageService:Flush()

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
					_currentSessionIsEnabled = nil,
				})

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).toBe(true)

				-- verify default value is written to cache
				expect(manager.getCachedValue()).toBe(false)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).toBe(false)
			end
		end)

		it("returns false if ixp service returns nil layer data", function()
			if GetFFlagShareInviteLinkContextMenuABTestEnabled() and HAS_KEY_IN_GAME_ENGINE then
				local ixpServiceWrapperMock = Mock.MagicMock.new({ name = "IXPServiceWrapper" })
				ixpServiceWrapperMock.IsEnabled = Mock.MagicMock.new({ returnValue = true })
				ixpServiceWrapperMock.GetLayerData =
					Mock.MagicMock.new({ returnValue = nil })

				-- pre-set cache to true
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED, "true")
				AppStorageService:Flush()

				local manager = ShareInviteLinkABTestManager.new(ixpServiceWrapperMock)
				expect(manager).toEqual({
					_ixpServiceWrapper = expect.anything(),
					_currentSessionIsEnabled = nil,
				})

				-- when we launch initially value should read from cache
				expect(manager:isShareInviteLinkEnabled()).toBe(true)

				-- when ixp layers are registered, test manager is initialized
				manager:initialize()

				-- isShareInviteLinkEnabled should still return the old value
				expect(manager:isShareInviteLinkEnabled()).toBe(true)

				-- verify default value is written to cache
				expect(manager.getCachedValue()).toBe(false)

				-- reset _currentSessionIsEnabled to simulate recreating the manager
				manager._currentSessionIsEnabled = nil

				-- isShareInviteLinkEnabled should return the cached value
				expect(manager:isShareInviteLinkEnabled()).toBe(false)
			end
		end)
	end)
end
