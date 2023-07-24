local LATEST_PLACE_VERSION = "CoreScripts.InGameMenu.GameSettings.PlaceVersionWithLatest"
local PLACE_VERSION = "CoreScripts.InGameMenu.GameSettings.PlaceVersion"

local AnalyticsService = game:GetService("RbxAnalyticsService")
local ContentProvider = game:GetService("ContentProvider")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local RunService = game:GetService("RunService")
local StarterPlayer = game:GetService("StarterPlayer")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local PlayerPermissions = require(CoreGui.RobloxGui.Modules.PlayerPermissionsModule)

local InGameMenu = script.Parent.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local Divider = require(InGameMenu.Components.Divider)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local canGetCoreScriptVersion = game:GetEngineFeature("CoreScriptVersionEnabled")

local GetFFlagNewEventIngestPlayerScriptsDimensions =
	require(RobloxGui.Modules.Flags.GetFFlagNewEventIngestPlayerScriptsDimensions)
local GetFFlagRemoveAssetVersionEndpoint = require(RobloxGui.Modules.Flags.GetFFlagRemoveAssetVersionEndpoint)

local VersionReporter = Roact.PureComponent:extend("VersionReporter")
VersionReporter.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
})

local function inferPlayerScriptStatus(starterPlayerScripts)
	local loader = starterPlayerScripts:FindFirstChild("PlayerScriptsLoader")
	local playerModule = starterPlayerScripts:FindFirstChild("PlayerModule")
	local playerScriptStatus

	if loader ~= nil and playerModule ~= nil then
		if not playerModule.Archivable and not loader.Archivable then
			playerScriptStatus = Constants.PlayerScriptStatusStrings.Default
		else
			playerScriptStatus = Constants.PlayerScriptStatusStrings.PossiblyCustom
		end
	else
		local cameraScript = starterPlayerScripts:FindFirstChild("CameraScript")
		local controlScript = starterPlayerScripts:FindFirstChild("ControlScript")
		if cameraScript ~= nil or controlScript ~= nil then
			playerScriptStatus = Constants.PlayerScriptStatusStrings.CustomOld
		else
			playerScriptStatus = Constants.PlayerScriptStatusStrings.Custom
		end
	end

	AnalyticsService:SetRBXEventStream(
		Constants.AnalyticsTargetName,
		"player_scripts_status",
		"player_scripts_status_action",
		{
			defaultPlayerScripts = playerScriptStatus == Constants.PlayerScriptStatusStrings.Default,
			placeID = tostring(game.PlaceId),
			rawValue = if GetFFlagNewEventIngestPlayerScriptsDimensions() then playerScriptStatus else nil,
			context = if GetFFlagNewEventIngestPlayerScriptsDimensions() then "IGMv2" else nil,
		}
	)

	return playerScriptStatus
end

function VersionReporter:init()
	local initalPlayerscriptStatus = "PlayerScript Status: Unknown"
	local starterPlayerScripts = StarterPlayer:FindFirstChild("StarterPlayerScripts")
	if starterPlayerScripts then
		initalPlayerscriptStatus = inferPlayerScriptStatus(starterPlayerScripts)
	else
		self.playerScriptsAddedConnection = StarterPlayer.ChildAdded:Connect(function(child)
			if child.Name == "StarterPlayerScripts" then
				self.playerScriptsAddedConnection:Disconnect()
				self.playerScriptsAddedConnection = nil
				self:setState({
					playerScriptStatus = inferPlayerScriptStatus(child),
				})
			end
		end)
	end

	self:setState({
		baseUrl = ContentProvider.BaseUrl,
		clientVersion = RunService:GetRobloxVersion(),
		isAdmin = false,
		latestPlaceVersion = nil,
		placeVersion = game.PlaceVersion,
		serverVersion = nil,
		playerScriptStatus = initalPlayerscriptStatus,
		coreScriptVersion = canGetCoreScriptVersion and RunService:GetCoreScriptVersion() or nil,
	})
end

function VersionReporter:render()
	local haveServerVersion = self.state.serverVersion ~= nil
	local haveLatestPlaceVersion = self.state.latestPlaceVersion ~= nil
	local isTestEnvironment = not self.state.baseUrl:find("www.roblox.com")
	local showEnvironment = isTestEnvironment
	local showPlayerScriptStatus = (isTestEnvironment or self.state.isAdmin)

	return withLocalization({
		clientVersion = {
			"CoreScripts.InGameMenu.GameSettings.ClientVersion",
			CLIENT_VERSION = self.state.clientVersion,
		},
		serverVersion = {
			"CoreScripts.InGameMenu.GameSettings.ServerVersion",
			SERVER_VERSION = self.state.serverVersion,
		},
		placeVersion = {
			haveLatestPlaceVersion and LATEST_PLACE_VERSION or PLACE_VERSION,
			PLACE_VERSION = self.state.placeVersion,
			LATEST_PLACE_VERSION = self.state.latestPlaceVersion,
		},
		coreScriptVersion = canGetCoreScriptVersion and {
			"CoreScripts.InGameMenu.GameSettings.ClientCoreScriptVersion",
			CLIENT_CORESCRIPT_VERSION = self.state.coreScriptVersion,
		} or nil,
	})(function(localized)
		local clientVersion = localized.clientVersion

		local success, result = pcall(function()
			return RunService.ClientGitHash
		end)

		if success then
			clientVersion = string.format("%s (%.6s)", clientVersion, result)
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 80),
			LayoutOrder = self.props.LayoutOrder,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 14),
				PaddingLeft = UDim.new(0, 24),
				PaddingBottom = UDim.new(0, 14),
			}),
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),
			ClientVersion = Roact.createElement(ThemedTextLabel, {
				themeKey = "TextDefault",
				fontKey = "Footer",
				Text = clientVersion,
				LayoutOrder = 1,
				Size = UDim2.new(1, -24, 0, 14),
			}),
			ServerVersion = Roact.createElement(ThemedTextLabel, {
				themeKey = "TextDefault",
				fontKey = "Footer",
				Text = haveServerVersion and localized.serverVersion or "",
				LayoutOrder = 2,
				Size = UDim2.new(1, -24, 0, 14),
			}, {
				not haveServerVersion and Roact.createElement(UIBlox.App.Loading.ShimmerPanel, {
					Size = UDim2.new(1, 0, 1, 0),
					shimmerSpeed = 2,
				}),
			}),
			PlaceVersion = Roact.createElement(ThemedTextLabel, {
				themeKey = "TextDefault",
				fontKey = "Footer",
				Text = localized.placeVersion,
				LayoutOrder = 3,
				Size = UDim2.new(1, -24, 0, 14),
			}),
			Divider = (showEnvironment or showPlayerScriptStatus) and Roact.createElement(Divider, {
				Size = UDim2.new(1, 0, 0, 1),
				LayoutOrder = 4,
			}),
			PlayerScriptStatus = showPlayerScriptStatus and Roact.createElement(ThemedTextLabel, {
				themeKey = "TextDefault",
				fontKey = "Footer",
				Text = self.state.playerScriptStatus,
				LayoutOrder = 5,
				Size = UDim2.new(1, -24, 0, 14),
			}),
			Environment = showEnvironment and Roact.createElement(ThemedTextLabel, {
				themeKey = "TextDefault",
				fontKey = "Footer",
				Text = ("Base URL: %s"):format(self.state.baseUrl),
				LayoutOrder = 6,
				Size = UDim2.new(1, -24, 0, 14),
			}),
			Divider2 = canGetCoreScriptVersion and Roact.createElement(Divider, {
				Size = UDim2.new(1, 0, 0, 1),
				LayoutOrder = 7,
			}),
			CoreScriptVersion = canGetCoreScriptVersion and Roact.createElement(ThemedTextLabel, {
				themeKey = "TextDefault",
				fontKey = "Footer",
				Text = localized.coreScriptVersion,
				LayoutOrder = 8,
				Size = UDim2.new(1, -24, 0, 14),
			}),
			VersionWatcher = Roact.createElement(ExternalEventConnection, {
				event = game:GetPropertyChangedSignal("PlaceVersion"),
				callback = function()
					self:setState({
						placeVersion = game.PlaceVersion,
					})
				end,
			}),
		})
	end)
end

function VersionReporter:didMount()
	self.mounted = true

	coroutine.wrap(function()
		local serverVersionRemote =
			RobloxReplicatedStorage:WaitForChild("GetServerVersion", math.huge) :: RemoteFunction
		local version = serverVersionRemote:InvokeServer()

		if self.mounted then
			self:setState({
				serverVersion = version,
			})
		end
	end)()

	-- Remove all logic associated with latestPlaceVersion along with this flag
	if not GetFFlagRemoveAssetVersionEndpoint() then
		coroutine.wrap(function()
			pcall(function()
				local json = HttpRbxApiService:GetAsync(string.format("assets/%d/versions", game.PlaceId))
				local versionData = HttpService:JSONDecode(json)
				local latestVersion = versionData[1].VersionNumber

				if self.mounted then
					self:setState({
						latestPlaceVersion = latestVersion,
					})
				end
			end)
		end)()
	end

	coroutine.wrap(function()
		local isAdmin = PlayerPermissions.IsPlayerAdminAsync(Players.LocalPlayer)

		if self.mounted then
			self:setState({
				isAdmin = isAdmin,
			})
		end
	end)()
end

function VersionReporter:willUnmount()
	self.mounted = false
	if self.playerScriptsAddedConnection then
		self.playerScriptsAddedConnection:Disconnect()
	end
end

return VersionReporter
