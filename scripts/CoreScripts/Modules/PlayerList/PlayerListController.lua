--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local ColorMode = Foundation.Enums.ColorMode
local StyleConstants = UIBlox.App.Style.Constants
local ApolloClientInstance = require(CoreGui.RobloxGui.Modules.ApolloClient)
local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
local ApolloProvider = ApolloClientModule.ApolloProvider
local PlayerList = script.Parent
local Signals = require(CorePackages.Packages.Signals)
local InExperienceTopBar = require(CorePackages.Workspace.Packages.InExperienceTopBar)

local Reducer = require(PlayerList.Reducers.Reducer)
local GlobalConfig = require(PlayerList.GlobalConfig)
local PlayerListSwitcher = require(PlayerList.PlayerListSwitcher)
local MakePlayerInfoRequests = require(PlayerList.Thunks.MakePlayerInfoRequests)

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local PlatformLeaderboardsClient = require(CorePackages.Workspace.Packages.PlatformLeaderboardsClient)
local PlayerIconInfoStorePackage = require(CorePackages.Workspace.Packages.PlayerIconInfoStore)
local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)
local PlayerListConstants = PlayerListPackage.Common.Constants
local PlayerRelationshipStore = PlayerListPackage.PlayerRelationshipStore

-- Actions
local SetPlayerListEnabled = require(PlayerList.Actions.SetPlayerListEnabled)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)
local SetTempHideKey = require(PlayerList.Actions.SetTempHideKey)
local SetTenFootInterface = require(PlayerList.Actions.SetTenFootInterface)
local SetSmallTouchDevice = require(PlayerList.Actions.SetSmallTouchDevice)
local SetIsUsingGamepad = require(PlayerList.Actions.SetIsUsingGamepad)
local SetMinimized = require(PlayerList.Actions.SetMinimized)
local SetSubjectToChinaPolicies = require(PlayerList.Actions.SetSubjectToChinaPolicies)
local SetSettings = require(PlayerList.Actions.SetSettings)

if not Players.LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav
local FStringPlayerListOverrideType = require(PlayerList.Flags.FStringPlayerListOverrideType)
local FFlagReplacePlayerIconRoduxWithSignal =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagReplacePlayerIconRoduxWithSignal
local FFlagBadgeVisibilitySettingEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagBadgeVisibilitySettingEnabled
local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav
local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole
local FFlagPlayerListUseMobileOnSmallDisplay = PlayerListPackage.Flags.FFlagPlayerListUseMobileOnSmallDisplay
local FFlagPlayerListIgnoreDevGamepadBindings = PlayerListPackage.Flags.FFlagPlayerListIgnoreDevGamepadBindings
local FFlagPlatformLeaderboardPersistStoreOnRemount =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagPlatformLeaderboardPersistStoreOnRemount

local FFlagPlayerListReskin = PlayerListPackage.Flags.FFlagPlayerListReskin
local FFlagPlayerListPersistVisibility = require(PlayerList.Flags.FFlagPlayerListPersistVisibility)

local PlayerListContainer = PlayerListPackage.Container.PlayerListContainer
local LeaderboardStoreInstanceManager = PlayerListPackage.LeaderboardStoreInstanceManager
local PlayerListVisibilityStore = PlayerListPackage.PlayerListVisibilityStore
local PlayerContextualMenuStore = PlayerListPackage.PlayerContextualMenuStore
local PlayerIconInfoStore = PlayerIconInfoStorePackage.PlayerIconInfoStore

local FFlagTopBarSignalizeSetCores = InExperienceTopBar.Flags.FFlagTopBarSignalizeSetCores

-- selene: allow(global_usage)
local function isUnderTestEZ(): boolean
	return _G.__TESTEZ_RUNNING_TEST__ == true
end

-- Foundation's useBreakpoint / usePreferredInput are React hooks (render-time only); these
-- checks run imperatively at controller construction, so we compute them locally instead.
local function isTouchOrGamepadInput(): boolean
	return UserInputService.PreferredInput == Enum.PreferredInput.Touch
		or UserInputService.PreferredInput == Enum.PreferredInput.Gamepad
end

-- Reskin console-mobile routing kicks in only when the device would otherwise be a
-- TenFoot user — Large display AND touch/gamepad input. Display size alone can
-- misclassify a desktop on a very large monitor (APPEXP-3482 established this on the
-- Small side; the Large side needs the symmetric check). Also requires
-- FFlagEnableMobilePlayerListOnConsole so a PC user with a gamepad is not treated
-- as console.
local function isReskinConsoleMobileRoute(): boolean
	return FFlagPlayerListReskin
		and FFlagEnableMobilePlayerListOnConsole
		and GuiService.ViewportDisplaySize == Enum.DisplaySize.Large
		and isTouchOrGamepadInput()
end

-- 10-foot (TV) layout is suppressed when either the reskin console-mobile routing or
-- master's mobile-on-console path applies. Otherwise fall back to TenFootInterface.
local function resolveIsTenFoot(): boolean
	return if isReskinConsoleMobileRoute() or FFlagEnableMobilePlayerListOnConsole
		then false
		else TenFootInterface:IsEnabled()
end

-- Uses ViewportDisplaySize rather than TenFootInterface — the latter is being retired
-- across PlayerList (see APPEXP-3354). Requires Large + touch/gamepad and
-- FFlagEnableMobilePlayerListOnConsole so a PC gamepad user is not treated as console
-- (see isReskinConsoleMobileRoute for rationale).
local function isLargeConsoleLayout(): boolean
	if GuiService.ViewportDisplaySize ~= Enum.DisplaySize.Large or not isTouchOrGamepadInput() then
		return false
	end
	return FFlagEnableMobilePlayerListOnConsole
end

local function isSmallTouchScreen()
	if isUnderTestEZ() then
		return false
	end
	local isSmallDisplay = FFlagPlayerListUseMobileOnSmallDisplay
		and GuiService.ViewportDisplaySize == Enum.DisplaySize.Small
	return SettingsUtil:IsSmallTouchScreen()
		or isLargeConsoleLayout()
		or (isSmallDisplay and isTouchOrGamepadInput())
		or (FStringPlayerListOverrideType == "mobile")
end

local function setupSettings(store)
	local function updateSettings()
		store:dispatch(SetSettings({
			reducedMotion = UserGameSettings.ReducedMotion,
			preferredTransparency = UserGameSettings.PreferredTransparency,
		}))
	end

	updateSettings()

	UserGameSettings:GetPropertyChangedSignal("PreferredTransparency"):Connect(function()
		updateSettings()
	end)
	UserGameSettings:GetPropertyChangedSignal("ReducedMotion"):Connect(function()
		updateSettings()
	end)
end

local PlayerListController = {}
PlayerListController.__index = PlayerListController

function PlayerListController.new()
	local self = setmetatable({}, PlayerListController)

	if FFlagPlayerListReskin then
		return self:_setupReskin()
	end

	if GlobalConfig.propValidation then
		Roact.setGlobalConfig({
			propValidation = true,
		})
	end
	if GlobalConfig.elementTracing then
		Roact.setGlobalConfig({
			elementTracing = true,
		})
	end

	self.layerCollectorRef = Roact.createRef()

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	setupSettings(self.store)

	if not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList) then
		self.store:dispatch(SetPlayerListEnabled(false))
	end

	coroutine.wrap(function()
		self.store:dispatch(SetSmallTouchDevice(isSmallTouchScreen()))
	end)()

	self.store:dispatch(SetTenFootInterface(resolveIsTenFoot()))

	coroutine.wrap(function()
		self.store:dispatch(SetSubjectToChinaPolicies(CachedPolicyService:IsSubjectToChinaPolicies()))
	end)()

	self:_trackEnabled()

	local appStyleForUiModeStyleProvider = {
		themeName = ColorMode.Dark,
		fontName = StyleConstants.FontName.Gotham,
	}

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		Switcher = Roact.createElement(PlayerListSwitcher, {
			appStyleForUiModeStyleProvider = appStyleForUiModeStyleProvider,
			setLayerCollectorEnabled = function(enabled)
				if not self.layerCollectorRef.current then
					return
				end
				self.layerCollectorRef.current.Enabled = enabled
			end,
		}),
	})

	self.root = Roact.createElement(ApolloProvider, {
		client = ApolloClientInstance,
	}, {
		StoreProvider = self.root,
	})
	self._setIsUsingGamepad = function()
		local lastInputType = UserInputService:GetLastInputType()
		local isGamepad = lastInputType and lastInputType.Name:find("Gamepad")
		self.store:dispatch(SetIsUsingGamepad(isGamepad ~= nil))
	end

	self._mountLeaderboardStore = function()
		LeaderboardStoreInstanceManager.createLeaderboardStoreInstance()
	end

	self._unmountLeaderboardStore = function()
		LeaderboardStoreInstanceManager.cleanUpInstance()
	end

	self._unmountPlayerIconInfoStore = if FFlagReplacePlayerIconRoduxWithSignal
		then function()
			PlayerIconInfoStore.cleanUp()
		end
		else nil

	self._mountLeaderboardStore()
	self._setIsUsingGamepad()
	self.root = Roact.createElement(PlayerListContainer, {
		leaderboardStore = LeaderboardStoreInstanceManager.getLeaderboardStoreInstance,
		TopBarConstants = require(RobloxGui.Modules.TopBar.Constants),
		isTenFoot = resolveIsTenFoot(),
	}, {
		PlayerListRoot = self.root,
	})

	self.root = Roact.createElement("ScreenGui", {
		AutoLocalize = false,
		IgnoreGuiInset = true,
		DisplayOrder = 1,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		[Roact.Ref] = self.layerCollectorRef,
	}, {
		PlayerListRoot = self.root,
	})

	self.element = Roact.mount(self.root, CoreGui, "PlayerList")

	self.topBarEnabled = true
	self.mounted = true
	self.coreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
	self:_updateMounted()

	self.SetVisibleChangedEvent = Instance.new("BindableEvent")
	if FFlagAddNewPlayerListFocusNav then
		self.VisibilityChangedEvent = Instance.new("BindableEvent")
	end

	if FFlagTopBarSignalizeSetCores then
		self.disposeEffect = Signals.createEffect(function(scope)
			local getTopBarStore = InExperienceTopBar.Stores.GetTopBarStore
			if getTopBarStore then
				self:SetTopBarEnabled(getTopBarStore(scope).getTopBarCoreGuiEnabled(scope))
			end
		end)
	end

	self.store.changed:connect(function(newState, oldState)
		if newState.displayOptions.setVisible ~= oldState.displayOptions.setVisible then
			self.SetVisibleChangedEvent:Fire(newState.displayOptions.setVisible)
		end
		if FFlagAddNewPlayerListFocusNav then
			if newState.displayOptions.isVisible ~= oldState.displayOptions.isVisible then
				self.VisibilityChangedEvent:Fire(newState.displayOptions.isVisible)
			end
		end
	end)

	return self
end

function PlayerListController:_updateMounted()
	if not resolveIsTenFoot() then
		local shouldMount = self.coreGuiEnabled and self.topBarEnabled
		if shouldMount and not self.mounted then
			self._mountLeaderboardStore()
			self._setIsUsingGamepad()
			self.element = Roact.mount(self.root, CoreGui, "PlayerList")
			self.mounted = true
		elseif not shouldMount and self.mounted then
			Roact.unmount(self.element)
			self._unmountLeaderboardStore()
			if self._unmountPlayerIconInfoStore then
				self._unmountPlayerIconInfoStore()
			end
			self.mounted = false
			if self.inspector then
				self.inspector:destroy()
				self.inspector = nil
			end
		end
	end
end

function PlayerListController:_trackEnabled()
	StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
		if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.PlayerList then
			self.coreGuiEnabled = enabled
			self:_updateMounted()
			self.store:dispatch(SetPlayerListEnabled(enabled))
			if FFlagPlayerListIgnoreDevGamepadBindings then
				if not enabled then
					GuiService:SetMenuIsOpen(false, PlayerListConstants.PLAYER_LIST_MENU)
				end
			end
		end
	end)
end

if FFlagAddNewPlayerListMobileFocusNav then
	function PlayerListController:GetIsModal()
		if FFlagPlayerListReskin then
			return isSmallTouchScreen()
		end
		return self.store:getState().displayOptions.isSmallTouchDevice
	end
end

-- Reskin path: mounts the new React + Foundation + Signals leaderboard tree.
function PlayerListController:_setupReskin()
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local TopBarConstants = require(RobloxGui.Modules.TopBar.Constants)
	local Foundation = require(CorePackages.Packages.Foundation)
	local FoundationProvider = Foundation.FoundationProvider
	local ColorMode = Foundation.Enums.ColorMode
	local Device = Foundation.Enums.Device
	local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

	local PlayerListPanel = PlayerListPackage.Presentation.PlayerListPanel
	local PlayerContextualMenuView = PlayerListPackage.Presentation.PlayerContextualMenuView
	local LeaderboardScrim = PlayerListPackage.Presentation.LeaderboardScrim
	local ContextMenuController = require(PlayerList.ContextMenuController)

	local function translate(key, fallback)
		local ok, result = pcall(function()
			return RobloxTranslator:FormatByKey(key)
		end)
		if ok and result and result ~= "" then
			return result
		end
		return fallback
	end

	local leaderboardTitle = translate("InGame.PlayerList.Leaderboard", "Leaderboard")

	local isTenFoot = resolveIsTenFoot()
	local isSmallTouchDevice = isSmallTouchScreen()

	-- Foundation applies a 1.5x platform scale only for Device.Console (Foundation Tokens
	-- getPlatformScale). Pass Device.Console for TV (isTenFoot) and mobile-on-console
	-- (isLargeConsoleLayout — Large + touch/gamepad); desktop-Large-KB renders at desktop
	-- size. Gating on ViewportDisplaySize alone would misclassify a desktop on a very
	-- large monitor (same trap as APPEXP-3482 on the Small side).
	local foundationDevice = if isTenFoot or isLargeConsoleLayout() then Device.Console else Device.Unknown

	if isSmallTouchDevice then
		PlayerContextualMenuStore.setOnDismiss(function()
			if PlayerContextualMenuStore.takeSuppressNextDismissRestore() then
				return
			end
			PlayerListVisibilityStore.setVisible(true)
		end)
	end

	PlayerContextualMenuStore.setContextMenuOpener(function(player, anchorPosition, generation, friendStatusOverride)
		task.spawn(function()
			local data = ContextMenuController.buildMenuData(
				player,
				PlayerContextualMenuStore.closeContextMenu,
				isSmallTouchDevice,
				friendStatusOverride
			)
			-- buildMenuData yields on friend/block-status lookups; bail if the player left
			-- so we don't resurrect a menu for someone who is gone.
			if player.Parent == nil then
				return
			end
			-- Desktop anchors the menu to the left of the activated row; ignored on mobile/console.
			data.anchorPosition = anchorPosition
			PlayerContextualMenuStore.setMenuDataIfCurrent(data, generation)
		end)
	end)

	local PlayerListInitialVisibleState = require(PlayerList.PlayerListInitialVisibleState)
	PlayerListVisibilityStore.reset()
	if FFlagPlatformLeaderboardPersistStoreOnRemount then
		PlatformLeaderboardsClient.reset()
	end
	local function setStorePersistVisibility()
		PlayerListVisibilityStore.setShouldPersistVisibility(
			FFlagPlayerListPersistVisibility and not isSmallTouchDevice and not isTenFoot
		)
	end
	setStorePersistVisibility()
	PlayerListVisibilityStore.setVisible(PlayerListInitialVisibleState())

	self.SetVisibleChangedEvent = Instance.new("BindableEvent")
	self.VisibilityChangedEvent = Instance.new("BindableEvent")

	local function setupVisibilityEffect()
		local setVisibleInitialized = false
		self._reskinSetVisibleEffect = Signals.createEffect(function(scope)
			local setVisible = PlayerListVisibilityStore.getVisible(scope)
			if setVisibleInitialized then
				self.SetVisibleChangedEvent:Fire(setVisible)
			else
				setVisibleInitialized = true
			end
		end)

		local effectiveVisibleInitialized = false
		self._reskinVisibilityEffect = Signals.createEffect(function(scope)
			local visible = PlayerListVisibilityStore.getEffectiveVisible(scope)
			if effectiveVisibleInitialized then
				self.VisibilityChangedEvent:Fire(visible)
			else
				effectiveVisibleInitialized = true
			end
		end)
	end

	local topBarOffset = TopBarConstants.TopBarHeight
	-- ApplyDisplayScale can return 0 before the Display store primes; floor the mobile
	-- gap at 8px so the panel visibly clears Unibar shadow/safe-area padding even at low DPR.
	local function computeMobileTopInset()
		local edgeGap = PlayerListConstants.MOBILE_EDGE_GAP
		return math.max(edgeGap, TopBarConstants.ApplyDisplayScale(edgeGap))
	end
	local function computeMobilePosition()
		return UDim2.new(0.5, 0, 0, topBarOffset + computeMobileTopInset())
	end
	local mobilePositionBinding, setMobilePosition = React.createBinding(computeMobilePosition())
	local function resolveContainerProps()
		if isSmallTouchDevice then
			return {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = mobilePositionBinding,
				Size = UDim2.fromOffset(0, 0),
				tag = "auto-xy",
			}
		end
		local edgeInset = math.max(4, TopBarConstants.ApplyDisplayScale(4))
		return {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -edgeInset, 0, edgeInset + topBarOffset),
			Size = UDim2.fromOffset(0, 0),
			tag = "auto-xy",
		}
	end

	local function buildReskinElement()
		return React.createElement(FoundationProvider, {
			colorMode = ColorMode.Dark,
			device = foundationDevice,
			preferences = {
				preferredTransparency = UserGameSettings.PreferredTransparency,
			},
		}, {
			-- Full-screen dim behind the panel on mobile/console.
			-- ZIndex 0 keeps it below the panel + in-experience menu.
			Scrim = React.createElement(LeaderboardScrim, {
				isSmallTouchDevice = isSmallTouchDevice,
			}),

			Container = React.createElement(Foundation.View, resolveContainerProps(), {
				ReskinContainer = React.createElement(PlayerListContainer, {
					leaderboardStore = LeaderboardStoreInstanceManager.getLeaderboardStoreInstance,
					TopBarConstants = TopBarConstants,
					isTenFoot = isTenFoot,
				}, {
					PlayerListPanel = React.createElement(PlayerListPanel, {
						isSmallTouchDevice = isSmallTouchDevice,
						title = leaderboardTitle,
					}),
				}),
			}),

			ContextMenu = React.createElement(PlayerContextualMenuView, {
				isSmallTouchDevice = isSmallTouchDevice,
			}),
		})
	end

	-- Legacy PlayerServiceConnector (Rodux) is not mounted on the reskin path.
	-- Route MakePlayerInfoRequests through a shim into the Signals stores.
	local function setupPlayerInfoRequests()
		local shimStore = {
			getState = function()
				return { players = Players:GetPlayers() }
			end,
			dispatch = function(_, action)
				if type(action) ~= "table" then
					return
				end
				if action.type == "SetPlayerIsBlocked" and action.userId then
					PlayerRelationshipStore.patchPlayerRelationship(action.userId, {
						isBlocked = action.isBlocked,
					})
				elseif action.type == "SetPlayerFriendStatus" and action.userId then
					PlayerRelationshipStore.patchPlayerRelationship(action.userId, {
						friendStatus = action.friendStatus,
					})
				end
			end,
		}
		local function request(player)
			MakePlayerInfoRequests(player)(shimStore)
		end
		for _, player in ipairs(Players:GetPlayers()) do
			request(player)
		end
		self._reskinPlayerAddedConn = Players.PlayerAdded:Connect(request)
		self._reskinPlayerRemovingConn = Players.PlayerRemoving:Connect(function(player)
			PlayerIconInfoStore.removePlayer(player.UserId)
			PlayerRelationshipStore.removePlayer(player.UserId)
		end)
		local function refreshOpenMenuForPlayer(player, friendStatus)
			local menuData = PlayerContextualMenuStore.getMenuData(false)
			if menuData ~= nil and menuData.player == player then
				PlayerContextualMenuStore.openContextMenu(player, menuData.anchorPosition, friendStatus)
			end
		end

		self._reskinBlockedStatusConn = BlockingUtility:GetBlockedStatusChangedEvent()
			:Connect(function(userId, isBlocked)
				local id = tonumber(userId)
				if id then
					PlayerRelationshipStore.patchPlayerRelationship(id, { isBlocked = isBlocked })
				end
			end)
		self._reskinFriendStatusConn = Players.LocalPlayer.FriendStatusChanged:Connect(function(player, friendStatus)
			PlayerRelationshipStore.patchPlayerRelationship(player.UserId, {
				friendStatus = friendStatus,
			})
			refreshOpenMenuForPlayer(player, friendStatus)
		end)
		if FFlagBadgeVisibilitySettingEnabled then
			task.spawn(function()
				local event =
					RobloxReplicatedStorage:WaitForChild("SendPlayerProfileSettings", math.huge) :: RemoteEvent
				self._reskinProfileSettingsConn = event.OnClientEvent:Connect(function(userIdStr)
					local player = Players:GetPlayerByUserId(tonumber(userIdStr) :: number)
					if player then
						request(player)
					end
				end)
			end)
		end
	end

	local function teardownPlayerInfoRequests()
		if self._reskinPlayerAddedConn then
			self._reskinPlayerAddedConn:Disconnect()
			self._reskinPlayerAddedConn = nil
		end
		if self._reskinPlayerRemovingConn then
			self._reskinPlayerRemovingConn:Disconnect()
			self._reskinPlayerRemovingConn = nil
		end
		if self._reskinBlockedStatusConn then
			self._reskinBlockedStatusConn:Disconnect()
			self._reskinBlockedStatusConn = nil
		end
		if self._reskinFriendStatusConn then
			self._reskinFriendStatusConn:Disconnect()
			self._reskinFriendStatusConn = nil
		end
		if self._reskinProfileSettingsConn then
			self._reskinProfileSettingsConn:Disconnect()
			self._reskinProfileSettingsConn = nil
		end
		PlayerRelationshipStore.cleanUp()
	end

	local function mountReskin()
		setStorePersistVisibility()
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "PlayerListReskin"
		screenGui.AutoLocalize = false
		screenGui.IgnoreGuiInset = true
		-- DisplayOrder 1 in production. Under Rhodium/TestEZ the reskin is a
		-- default-visible CoreGui surface that would obscure DisplayOrder-0
		-- components-under-test (e.g. the LegacyRoact report-dialog isolation
		-- tests), so park it below them during tests.
		screenGui.DisplayOrder = if isUnderTestEZ() then -1 else 1
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = CoreGui
		local root = ReactRoblox.createRoot(screenGui)
		root:render(buildReskinElement())
		self._reskinRoot = root
		self._reskinScreenGui = screenGui
		if isSmallTouchDevice then
			local function connectViewport(cam)
				if self._reskinViewportConn then
					self._reskinViewportConn:Disconnect()
					self._reskinViewportConn = nil
				end
				if cam then
					self._reskinViewportConn = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
						setMobilePosition(computeMobilePosition())
					end)
					setMobilePosition(computeMobilePosition())
				end
			end
			self._reskinCameraConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
				connectViewport(workspace.CurrentCamera)
			end)
			connectViewport(workspace.CurrentCamera)
		end
		setupPlayerInfoRequests()
	end

	local function unmountReskin()
		PlayerListVisibilityStore.setShouldPersistVisibility(false)
		teardownPlayerInfoRequests()
		if self._reskinCameraConn then
			self._reskinCameraConn:Disconnect()
			self._reskinCameraConn = nil
		end
		if self._reskinViewportConn then
			self._reskinViewportConn:Disconnect()
			self._reskinViewportConn = nil
		end
		if self._reskinRoot then
			self._reskinRoot:unmount()
			self._reskinRoot = nil
		end
		if self._reskinScreenGui then
			self._reskinScreenGui:Destroy()
			self._reskinScreenGui = nil
		end
		if self._reskinVisibilityEffect then
			self._reskinVisibilityEffect()
			self._reskinVisibilityEffect = nil
		end
		if self._reskinSetVisibleEffect then
			self._reskinSetVisibleEffect()
			self._reskinSetVisibleEffect = nil
		end
	end

	self.topBarEnabled = true
	self.coreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)

	self._reskin = {
		mountReskin = mountReskin,
		unmountReskin = unmountReskin,
		setupVisibilityEffect = setupVisibilityEffect,
	}

	if self.coreGuiEnabled then
		LeaderboardStoreInstanceManager.createLeaderboardStoreInstance()
		setupVisibilityEffect()
		mountReskin()
		self.mounted = true
	else
		self.mounted = false
	end

	self._reskinCoreGuiConn = StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
		if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.PlayerList then
			self.coreGuiEnabled = enabled
			self:SetTopBarEnabled(self.topBarEnabled)
		end
	end)

	ContextActionService:BindCoreAction("RbxPlayerListToggle", function(_actionName, inputState, _inputObject)
		if not self.mounted then
			return Enum.ContextActionResult.Pass
		end
		if isSmallTouchDevice then
			return Enum.ContextActionResult.Pass
		end
		if GuiService.MenuIsOpen then
			return Enum.ContextActionResult.Pass
		end
		if inputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		self:SetVisibility(not self:GetVisibility())
		return Enum.ContextActionResult.Sink
	end, false, Enum.KeyCode.Tab)

	if FFlagTopBarSignalizeSetCores then
		self._reskinTopBarEffect = Signals.createEffect(function(scope)
			local getTopBarStore = InExperienceTopBar.Stores.GetTopBarStore
			if getTopBarStore then
				self:SetTopBarEnabled(getTopBarStore(scope).getTopBarCoreGuiEnabled(scope))
			end
		end)
	end

	return self
end

function PlayerListController:GetVisibility()
	if FFlagPlayerListReskin then
		return PlayerListVisibilityStore.getEffectiveVisible(false)
	end
	return self.store:getState().displayOptions.isVisible
end

if FFlagAddNewPlayerListFocusNav then
	function PlayerListController:GetVisibilityChangedEvent()
		return self.VisibilityChangedEvent
	end
end

function PlayerListController:GetSetVisible()
	if FFlagPlayerListReskin then
		return PlayerListVisibilityStore.getVisible(false)
	end
	return self.store:getState().displayOptions.setVisible
end

function PlayerListController:GetSetVisibleChangedEvent()
	return self.SetVisibleChangedEvent
end

function PlayerListController:SetVisibility(value)
	if FFlagPlayerListReskin then
		if not value then
			PlayerContextualMenuStore.closeContextMenu()
		end
		PlayerListVisibilityStore.setVisible(value)
		return
	end
	self.store:dispatch(SetPlayerListVisibility(value))
end

function PlayerListController:HideTemp(requester, hidden)
	if FFlagPlayerListReskin then
		if hidden then
			-- Close the menu so its overlay doesn't linger when temp-hidden. Guard on menu
			-- data: closeContextMenu fires onDismiss (which restores visibility), so calling
			-- it with no menu open would spuriously un-hide the list.
			if PlayerContextualMenuStore.getMenuData(false) ~= nil then
				PlayerContextualMenuStore.closeContextMenu()
			end
		end
		PlayerListVisibilityStore.setTempHide(requester, hidden)
		return
	end
	if hidden == false then
		hidden = nil
	end
	self.store:dispatch(SetTempHideKey(requester, hidden))
end

function PlayerListController:SetTopBarEnabled(value)
	if FFlagPlayerListReskin then
		self.topBarEnabled = value
		local shouldMount = self.coreGuiEnabled and value
		if shouldMount and not self.mounted then
			LeaderboardStoreInstanceManager.createLeaderboardStoreInstance()
			self._reskin.setupVisibilityEffect()
			self._reskin.mountReskin()
			self.mounted = true
		elseif not shouldMount and self.mounted then
			self._reskin.unmountReskin()
			LeaderboardStoreInstanceManager.cleanUpInstance()
			self.mounted = false
		end
		return
	end
	self.topBarEnabled = value
	self:_updateMounted()
end

function PlayerListController:SetMinimized(value)
	if FFlagPlayerListReskin then
		return
	end
	self.store:dispatch(SetMinimized(value))
end

return PlayerListController
