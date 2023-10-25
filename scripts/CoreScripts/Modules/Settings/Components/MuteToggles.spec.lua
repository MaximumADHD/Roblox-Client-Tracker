local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)

local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local JestGlobals = require(CorePackages.JestGlobals)
local jest = JestGlobals.jest
local expect = JestGlobals.expect

local MuteToggles = require(script.Parent.MuteToggles)

local MockPlayers = {}
MockPlayers.__index = MockPlayers

function MockPlayers.new(mockGetFriendsAsync, mockGetPlayersAsync)
	local friendStatusChangedBindable = Instance.new("BindableEvent")

	local self = setmetatable({
		GetFriendsAsync = function()
			mockGetFriendsAsync()
		end,
		GetPlayers = function()
			mockGetPlayersAsync()
		end,
		LocalPlayer = {
			UserId = 111,
			_friendStatusChangedBindable = friendStatusChangedBindable,
			FriendStatusChanged = friendStatusChangedBindable.Event,
		},
		_players = {},
	}, MockPlayers)

	return self
end

return function()
	it("should mount and unmount without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				MuteToggles = Roact.createElement(MuteToggles, {
					Players = MockPlayers.new(jest.fn(), jest.fn()) :: any,
					initialTogglesState = false,
					playersFriends = {},
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should get the user's friends list and get players in experience when mounted/rendered", function()
		game:SetFastFlagForTesting("UseFriendsPropsInMuteToggles2", false)
		local mockGetFriendsAsync = jest.fn()
		local mockGetPlayers = jest.fn()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				MuteToggles = Roact.createElement(MuteToggles, {
					Players = MockPlayers.new(mockGetFriendsAsync, mockGetPlayers) :: any,
					initialTogglesState = false,
					playersFriends = {},
				}),
			}),
		})

		local instance = Roact.mount(element)
		expect(instance).toBeDefined()
		expect(mockGetFriendsAsync).toHaveBeenCalledTimes(1)
		expect(mockGetPlayers).toHaveBeenCalledTimes(1)

		Roact.unmount(instance)
	end)

	it("should render mute label and dropdown correctly", function()
		local localization = Localization.new("en-us")
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				MuteToggles = Roact.createElement(MuteToggles, {
					Players = MockPlayers.new(jest.fn(), jest.fn()) :: any,
					initialTogglesState = false,
					playersFriends = {},
				}),
			}),
		})

		local screenGui = Instance.new("ScreenGui", CoreGui)
		local instance = Roact.mount(element, screenGui)
		expect(instance).toBeDefined()

		-- Find the "Mute" label and ensure that exists
		local muteFrame = screenGui:FindFirstChild("MuteFrame", true)
		expect(muteFrame).toBeDefined()

		local muteLabel = RhodiumHelpers.findFirstInstance(muteFrame, {
			text = localization:Format("Feature.SettingsHub.Label.Mute"),
		})
		expect(muteLabel).toBeDefined()

		-- Find dropdown menu and ensure that exists
		local dropdownMenu = screenGui:FindFirstChild("DropdownMenu", true)
		expect(dropdownMenu).toBeDefined()

		Roact.unmount(instance)
	end)
end
