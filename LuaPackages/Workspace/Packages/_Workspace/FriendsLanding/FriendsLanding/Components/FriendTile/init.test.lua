local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local userPresenceText = require(FriendsLanding.Friends.userPresenceText)
local NotLocalizedStrings = require(FriendsLanding.Enums.NotLocalizedStrings)
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

local devDependencies = require(FriendsLanding.devDependencies)
local DarkTheme = devDependencies.AppStyle.DarkTheme
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local friendsWithPresence = require(script.Parent.friendsWithPresence)
local withEveryPresenceStory = require(script.Parent.withEveryPresence)
local FriendTile = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProviders(mockLocale)(FriendTile, {})

		cleanup()
	end)
end)

describe("WHEN you press on a tile", function()
	local openPlayerProfileMock, openUnfriendMock, setupOpenPlayerProfileMock, setupOpenUnfriendMock, openPlayerProfile

	beforeEach(function()
		openPlayerProfileMock = jest.fn()
		openUnfriendMock = jest.fn()

		setupOpenPlayerProfileMock = jest.fn().mockReturnValue(function()
			openPlayerProfileMock()
		end)

		setupOpenUnfriendMock = jest.fn().mockReturnValue(function()
			openUnfriendMock()
		end)

		openPlayerProfile = function(user: any)
			if user.isDeleted then
				-- required for prop validation, as jest.fn is a table
				return function(...)
					return setupOpenUnfriendMock(...)
				end
			else
				-- required for prop validation, as jest.fn is a table
				return function(...)
					return setupOpenPlayerProfileMock(...)
				end
			end
		end
	end)

	it("SHOULD call the openPlayerProfile with user's id", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {
			openPlayerProfile = openPlayerProfile(friendsWithPresence.OnlineFriend),
		})

		local OnlineFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "OnlineFriend",
		})
		expect(OnlineFriend).toEqual(expect.any("Instance"))

		RhodiumHelpers.clickInstance(OnlineFriend)

		expect(setupOpenPlayerProfileMock).toHaveBeenCalledWith("37", 1, friendsWithPresence.OnlineFriend)

		expect(openPlayerProfileMock).toHaveBeenCalledTimes(1)
		expect(openUnfriendMock).never.toHaveBeenCalled()
		cleanup()
	end)

	it("SHOULD call openPlayerProfile with Profile card for deleted friend", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {
			openPlayerProfile = openPlayerProfile(friendsWithPresence.DeletedFriend),
		})

		local DeletedFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "DeletedFriend",
		})

		expect(DeletedFriend).toEqual(expect.any("Instance"))

		RhodiumHelpers.clickInstance(DeletedFriend)

		expect(setupOpenUnfriendMock).toHaveBeenCalledWith("37", 1, friendsWithPresence.DeletedFriend)

		expect(openUnfriendMock).toHaveBeenCalledTimes(1)
		expect(openPlayerProfileMock).never.toHaveBeenCalled()
		cleanup()
	end)
end)

describe("WHEN friends with each presence are rendered", function()
	it("SHOULD render Online text for Online presence", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local OnlineFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "OnlineFriend",
		})
		expect(OnlineFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(OnlineFriend, {
			Text = userPresenceText[EnumPresenceType.Online],
		})
		expect(presenceText).toEqual(expect.any("Instance"))
		expect(presenceText.Text).toBe("Common.Presence.Label.Online")

		cleanup()
	end)

	it("SHOULD render Green Circle for Online presence", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local OnlineFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "OnlineFriend",
		})
		expect(OnlineFriend).toEqual(expect.any("Instance"))

		local presenceIcon = RhodiumHelpers.findFirstInstance(OnlineFriend, {
			Name = "icon",
		})
		expect(presenceIcon).toEqual(expect.any("Instance"))
		expect(presenceIcon.ImageColor3).toBe(DarkTheme.OnlineStatus.Color)
		expect(presenceIcon.AbsoluteSize).toBe(Vector2.new(12, 12))

		cleanup()
	end)

	it("SHOULD render Offline text for Offline presence", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local OfflineFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "OfflineFriend",
		})
		expect(OfflineFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(OfflineFriend, {
			Text = userPresenceText[EnumPresenceType.Offline],
		})
		expect(presenceText).toEqual(expect.any("Instance"))
		expect(presenceText.Text).toBe("Common.Presence.Label.Offline")

		cleanup()
	end)

	it("SHOULD NOT render Green Circle for Offline presence", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local OfflineFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "OfflineFriend",
		})
		expect(OfflineFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(OfflineFriend, {
			Text = userPresenceText[EnumPresenceType.Offline],
		})
		expect(presenceText).toEqual(expect.any("Instance"))

		local presenceIcon = RhodiumHelpers.findFirstInstance(OfflineFriend, {
			Name = "icon",
		})

		expect(presenceIcon).toBeNil()

		cleanup()
	end)

	it("SHOULD render LastLocation text for InStudio presence with LastLocation", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local InStudioFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "InStudioFriend",
		})
		expect(InStudioFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(InStudioFriend, {
			Text = "LastLocation",
		})
		expect(presenceText).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render InStudio text for InStudio presence without LastLocation", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local InStudioWithoutLastLocationFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "InStudioWithoutLastLocationFriend",
		})
		expect(InStudioWithoutLastLocationFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(InStudioWithoutLastLocationFriend, {
			Text = NotLocalizedStrings.StudioPresenceTextGlobal.rawValue(),
		})
		expect(presenceText).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render InStudio text for InStudio presence for LuoBu user with LastLocation", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {
			isLuobu = true,
		})

		local InStudioFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "InStudioFriend",
		})
		expect(InStudioFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(InStudioFriend, {
			Text = "LastLocation",
		})
		expect(presenceText).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render InStudio text for InStudio presence for LuoBu user without LastLocation", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {
			isLuobu = true,
		})

		local InStudioWithoutLastLocationFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "InStudioWithoutLastLocationFriend",
		})
		expect(InStudioWithoutLastLocationFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(InStudioWithoutLastLocationFriend, {
			Text = NotLocalizedStrings.StudioPresenceTextLuobu.rawValue(),
		})
		expect(presenceText).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render Online text for InGame presence without LastLocation", function()
		local friendsList, cleanup = createInstanceWithProps(mockLocale)(withEveryPresenceStory, {})

		local InGameWithoutLastLocationFriend = RhodiumHelpers.findFirstInstance(friendsList, {
			Name = "InGameWithoutLastLocationFriend",
		})
		expect(InGameWithoutLastLocationFriend).toEqual(expect.any("Instance"))

		local presenceText = RhodiumHelpers.findFirstInstance(InGameWithoutLastLocationFriend, {
			Text = userPresenceText[EnumPresenceType.Online],
		})
		expect(presenceText).toEqual(expect.any("Instance"))

		cleanup()
	end)
end)

describe("WHEN mounted", function()
	it("SHOULD call pageLoadingTimeReportMock", function()
		local pageLoadingTimeReportMock = jest.fn()

		local _, cleanup = createInstanceWithProps(mockLocale)(FriendTile, {
			pageLoadingTimeReport = function()
				pageLoadingTimeReportMock()
			end,
			index = 1,
		})

		expect(pageLoadingTimeReportMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
