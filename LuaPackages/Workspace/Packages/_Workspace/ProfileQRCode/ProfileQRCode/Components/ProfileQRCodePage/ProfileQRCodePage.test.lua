local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local runWhileMounted = SocialTestHelpers.TestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.ProfileQRCodePageStories)
local defaultStory = Stories.default
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)
local mockRobloxEventReceiver = require(ProfileQRCode.TestHelpers.createMockRobloxEventReceiver)
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local jest = JestGlobals.jest
local configureRoduxUsers = require(ProfileQRCode.Networking.configureRoduxUsers)
local configureRoduxFriends = require(ProfileQRCode.Networking.configureRoduxFriends)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local FirstFriendRequesterUserId = require(ProfileQRCode.TestHelpers.FirstFriendRequesterUserId)
local SecondFriendRequesterUserId = require(ProfileQRCode.TestHelpers.SecondFriendRequesterUserId)
local NetworkingFriends = require(Packages.NetworkingFriends)
local validateEvent = require(ProfileQRCode.TestHelpers.validateEvent)
local EventNames = require(script.Parent.Parent.Parent.Analytics.EventNames)

local function fireSignalREvent(eventReceiver: any, type: any, details: any)
	local callback = eventReceiver.events[type]
	if callback then
		callback(details)
	end
end

local useGetUsersInfoUrlMock, useAcceptFriendUrlMock

beforeEach(function()
	createOrGetProfileShareUrl.Mock.reply(function()
		return {
			responseBody = {
				shortUrl = "www.bbc.co.uk",
			},
		}
	end)

	useGetUsersInfoUrlMock = jest.fn()
	configureRoduxUsers.GetUserV2FromUserId.Mock.reply(function(url)
		useGetUsersInfoUrlMock(url)
		return {
			responseBody = {
				displayName = "mock test user",
			},
		}
	end)

	useAcceptFriendUrlMock = jest.fn()
	configureRoduxFriends.AcceptFriendRequestFromUserId.Mock.reply(function(url)
		useAcceptFriendUrlMock(url)
		return {
			responseBody = {},
		}
	end)
end)

afterEach(function()
	createOrGetProfileShareUrl.Mock.clear()
	configureRoduxUsers.GetUserV2FromUserId.Mock.clear()
	configureRoduxFriends.AcceptFriendRequestFromUserId.Mock.clear()
end)

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show description and qrcode", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		local topBar = findElementHelpers.findTopBarTitle(parent, { assertElementExists = true })
		local description = findElementHelpers.findDescription(parent, { assertElementExists = true })
		local qrCode = findElementHelpers.findQRCodeView(parent, { assertElementExists = true })

		expect(topBar:getRbxInstance()).toBeAbove(qrCode:getRbxInstance())
		expect(qrCode:getRbxInstance()).toBeAbove(description:getRbxInstance())
	end)
end)

it("SHOULD ignore signalR event that is not a friendship request", function()
	local mockEventReceieverSetup = mockRobloxEventReceiver()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			robloxEventReceiver = mockEventReceieverSetup.mockEventReceiver,
		},
	})

	runWhileMounted(component, function(parent)
		fireSignalREvent(mockEventReceieverSetup, "ChatNotifications", {})
		local qrCodeAlert = findElementHelpers.findAlertView(parent, { assertElementExists = false })
		local toastAlert = findElementHelpers.findToastView(parent, { assertElementExists = false })

		expect(useGetUsersInfoUrlMock).never.toHaveBeenCalled()
		expect(qrCodeAlert).toBeNil()
		expect(toastAlert).toBeNil()
	end)
end)

it("SHOULD ignore signalR friendship request event that is not from a qrcode", function()
	local mockEventReceieverSetup = mockRobloxEventReceiver()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			robloxEventReceiver = mockEventReceieverSetup.mockEventReceiver,
		},
	})

	runWhileMounted(component, function(parent)
		fireSignalREvent(mockEventReceieverSetup, "FriendshipNotifications", {
			Type = "FriendshipRequested",
			EventArgs = {
				UserId1 = 156,
				UserId2 = 1234,
				SourceType = NetworkingFriends.Enums.FriendshipOriginSourceType.Unknown.rawValue(),
			},
		})
		local qrCodeAlert = findElementHelpers.findAlertView(parent, { assertElementExists = false })
		local toastAlert = findElementHelpers.findToastView(parent, { assertElementExists = false })

		expect(useGetUsersInfoUrlMock).never.toHaveBeenCalled()
		expect(qrCodeAlert).toBeNil()
		expect(toastAlert).toBeNil()
	end)
end)

it("SHOULD show alert when signalR friendship request event is received but no toast when not accepted", function()
	local mockEventReceieverSetup = mockRobloxEventReceiver()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			profileQRCodeFriendRequestAlertsEnabled = true,
			robloxEventReceiver = mockEventReceieverSetup.mockEventReceiver,
		},
	})

	local requesterUserId = tonumber(FirstFriendRequesterUserId)

	runWhileMounted(component, function(parent)
		fireSignalREvent(mockEventReceieverSetup, "FriendshipNotifications", {
			Type = "FriendshipRequested",
			EventArgs = {
				UserId1 = 156,
				UserId2 = requesterUserId,
				SourceType = NetworkingFriends.Enums.FriendshipOriginSourceType.QrCode.rawValue(),
			},
		})

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		local qrCodeAlert = findElementHelpers.findAlertView(parent, { assertElementExists = true })
		local toastAlert = findElementHelpers.findToastView(parent, { assertElementExists = false })

		expect(useGetUsersInfoUrlMock).toHaveBeenCalledTimes(1)
		--Get the received url that contains the user id and ensure that user id is contained in it
		local receivedUserIdUrl = useGetUsersInfoUrlMock.mock.calls[1][1]
		expect(receivedUserIdUrl).toContain(tostring(requesterUserId))
		expect(qrCodeAlert).toBeDefined()

		local closeButton = findElementHelpers.findCloseButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(closeButton:getRbxInstance())

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		qrCodeAlert = findElementHelpers.findAlertView(parent, { assertElementExists = false })

		expect(useAcceptFriendUrlMock).never.toHaveBeenCalled()
		expect(qrCodeAlert).toBeNil()
		expect(toastAlert).toBeNil()
	end)
end)

it("SHOULD fire event stream and diag events when friend request alert is dismissed", function()
	local mockEventReceieverSetup = mockRobloxEventReceiver()
	local component, analytics = createTreeWithProviders(defaultStory, {
		props = {
			profileQRCodeFriendRequestAlertsEnabled = true,
			robloxEventReceiver = mockEventReceieverSetup.mockEventReceiver,
		},
	})

	local requesterUserId = tonumber(FirstFriendRequesterUserId)

	runWhileMounted(component, function(parent)
		fireSignalREvent(mockEventReceieverSetup, "FriendshipNotifications", {
			Type = "FriendshipRequested",
			EventArgs = {
				UserId1 = 156,
				UserId2 = requesterUserId,
				SourceType = NetworkingFriends.Enums.FriendshipOriginSourceType.QrCode.rawValue(),
			},
		})

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		local closeButton = findElementHelpers.findCloseButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(closeButton:getRbxInstance())

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			analytics.analyticsMock.EventStream,
			validateEvent(EventNames.QRPageFriendRequestBannerDismissed, {
				qrCodeBannerQueueSize = 1,
				uid = "123",
			})
		)

		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
			analytics.analyticsMock.Diag,
			"ProfileQRPageFriendRequestBannerDismissed",
			1
		)
	end)
end)

it("SHOULD show alert when signalR friendship request event is received and toast when accepted", function()
	local mockEventReceieverSetup = mockRobloxEventReceiver()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			profileQRCodeFriendRequestAlertsEnabled = true,
			robloxEventReceiver = mockEventReceieverSetup.mockEventReceiver,
		},
	})

	local requesterUserId = tonumber(SecondFriendRequesterUserId)

	runWhileMounted(component, function(parent)
		fireSignalREvent(mockEventReceieverSetup, "FriendshipNotifications", {
			Type = "FriendshipRequested",
			EventArgs = { UserId1 = requesterUserId, UserId2 = 156, SourceType = "QrCode" },
		})

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		local qrCodeAlert = findElementHelpers.findAlertView(parent, { assertElementExists = true })
		local toastAlert = findElementHelpers.findToastView(parent, { assertElementExists = false })

		expect(useGetUsersInfoUrlMock).toHaveBeenCalledTimes(1)
		--Get the received url that contains the user id and ensure that user id is contained in it
		local receivedUserIdUrl = useGetUsersInfoUrlMock.mock.calls[1][1]
		expect(receivedUserIdUrl).toContain(tostring(requesterUserId))
		expect(qrCodeAlert).toBeDefined()

		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(acceptButton:getRbxInstance())

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		qrCodeAlert = findElementHelpers.findAlertView(parent, { assertElementExists = false })
		toastAlert = findElementHelpers.findToastView(parent, { assertElementExists = true })

		expect(useAcceptFriendUrlMock).toHaveBeenCalledTimes(1)
		--Get the received url that contains the user id and ensure that user id is contained in it
		local receivedAcceptUserIdUrl = useAcceptFriendUrlMock.mock.calls[1][1]
		expect(receivedAcceptUserIdUrl).toContain(tostring(requesterUserId))
		expect(qrCodeAlert).toBeNil()
		expect(toastAlert).toBeDefined()
	end)
end)

it("SHOULD fire event stream and diag events when friend request alert is accepted", function()
	local mockEventReceieverSetup = mockRobloxEventReceiver()
	local component, analytics = createTreeWithProviders(defaultStory, {
		props = {
			profileQRCodeFriendRequestAlertsEnabled = true,
			robloxEventReceiver = mockEventReceieverSetup.mockEventReceiver,
		},
	})

	local requesterUserId = tonumber(SecondFriendRequesterUserId)

	runWhileMounted(component, function(parent)
		fireSignalREvent(mockEventReceieverSetup, "FriendshipNotifications", {
			Type = "FriendshipRequested",
			EventArgs = { UserId1 = requesterUserId, UserId2 = 156, SourceType = "QrCode" },
		})

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(acceptButton:getRbxInstance())

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			analytics.analyticsMock.EventStream,
			validateEvent(EventNames.QRPageFriendRequestBannerAccepted, {
				qrCodeBannerQueueSize = 1,
				uid = "123",
			})
		)

		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
			analytics.analyticsMock.Diag,
			"ProfileQRPageFriendRequestBannerAccepted",
			1
		)
	end)
end)
