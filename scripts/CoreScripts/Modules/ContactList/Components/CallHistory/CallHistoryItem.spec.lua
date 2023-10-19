return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local LocalizationService = game:GetService("LocalizationService")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
	local ApolloProvider = ApolloClientModule.ApolloProvider

	local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
	local ApolloClientTestUtils = GraphQLServer.ApolloClientTestUtils
	local mockApolloClient = ApolloClientTestUtils.mockApolloClient

	local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local CallHistoryItem = require(ContactList.Components.CallHistory.CallHistoryItem)
	local Reducer = require(ContactList.Reducer)
	local function createCallHistoryItem(callerId, status, localUserId, endUtc, startUtc)
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local client = mockApolloClient({})
		UserProfiles.TestUtils.writeProfileDataToCache(client, {
			["1"] = {
				combinedName = "testuser_0",
				username = "testuser_0",
			},
			["2"] = {
				combinedName = "testuser_1",
				username = "testuser_1",
			},
		})

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ApolloProvider = Roact.createElement(ApolloProvider, {
					client = client,
				}, {
					CallHistoryItem = Roact.createElement(CallHistoryItem, {
						callRecord = {
							callId = "test_call_id",
							callerId = callerId,
							participants = {
								{
									userId = 1,
									displayName = "testuser_0",
									userName = "testuser_0",
								},
								{
									userId = 2,
									displayName = "testuser_1",
									userName = "testuser_1",
								},
							},
							status = status,
							startUtc = startUtc,
							endUtc = endUtc,
							universeId = 123,
							placeId = 456,
						},
						localUserId = localUserId,
						showDivider = true,
						dismissCallback = function() end,
					}),
				}),
			}),
		})
	end

	it("should mount and unmount without errors", function()
		local element = createCallHistoryItem(
			2,
			"CallMissed",
			1,
			DateTime.now().UnixTimestampMillis,
			DateTime.now().UnixTimestampMillis - 100000
		)
		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
		local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel
		if game:GetFastFlag("ApolloClientUserProfileReadPolicy") then
			expect(usernameElement.Text).toBe("@testuser_1")
			expect(displayNameElement.Text).toBe("testuser_1")
		else
			expect(usernameElement.Text).toBe("")
			expect(displayNameElement.Text).toBe("")
		end
		Roact.unmount(instance)
	end)

	describe("CallHistoryItem - call status and context image", function()
		it("should display correct status and context image for missed call", function()
			local element = createCallHistoryItem(
				2,
				"CallMissed",
				1,
				DateTime.now().UnixTimestampMillis,
				DateTime.now().UnixTimestampMillis - 100000
			)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
			local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
			local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel

			if game:GetFastFlag("ApolloClientUserProfileReadPolicy") then
				expect(usernameElement.Text).toBe("@testuser_1")
				expect(displayNameElement.Text).toBe("testuser_1")
			else
				expect(usernameElement.Text).toBe("")
				expect(displayNameElement.Text).toBe("")
			end

			expect(string.sub(statusElement.Text, 1, 6)).toBe("Missed")
			Roact.unmount(instance)
		end)

		it("should display correct status and context image for incoming call", function()
			local element = createCallHistoryItem(
				2,
				"CallFinished",
				1,
				DateTime.now().UnixTimestampMillis,
				DateTime.now().UnixTimestampMillis - 100000
			)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
			local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
			local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel

			if game:GetFastFlag("ApolloClientUserProfileReadPolicy") then
				expect(usernameElement.Text).toBe("@testuser_1")
				expect(displayNameElement.Text).toBe("testuser_1")
			else
				expect(usernameElement.Text).toBe("")
				expect(displayNameElement.Text).toBe("")
			end

			expect(string.sub(statusElement.Text, 1, 8)).toBe("Incoming")
			Roact.unmount(instance)
		end)

		it("should display correct status and context image for outgoing call", function()
			local element = createCallHistoryItem(
				2,
				"CallFinished",
				2,
				DateTime.now().UnixTimestampMillis,
				DateTime.now().UnixTimestampMillis - 100000
			)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
			local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
			local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel

			if game:GetFastFlag("ApolloClientUserProfileReadPolicy") then
				expect(usernameElement.Text).toBe("@testuser_0")
				expect(displayNameElement.Text).toBe("testuser_0")
			else
				expect(usernameElement.Text).toBe("")
				expect(displayNameElement.Text).toBe("")
			end

			expect(string.sub(statusElement.Text, 1, 8)).toBe("Outgoing")
			Roact.unmount(instance)
		end)
	end)

	describe("CallHistoryItem - dynamic timestamp formatting", function()
		local dayMilliseconds = 24 * 60 * 60 * 1000

		it("should display correct timestamp string for current day", function()
			local currentTimeUtc = DateTime.now().UnixTimestampMillis
			local expectedTimeString = DateTime.fromUnixTimestampMillis(currentTimeUtc)
				:FormatLocalTime("LT", LocalizationService.RobloxLocaleId)
			local element = createCallHistoryItem(2, "CallFinished", 2, currentTimeUtc, currentTimeUtc - 100000)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel

			expect(statusElement.Text).toBe("Outgoing • " .. expectedTimeString)
			Roact.unmount(instance)
		end)

		it("should display correct timestamp string for the previous day", function()
			local previousDayUtc = DateTime.now().UnixTimestampMillis - dayMilliseconds
			local expectedTimeString = "Yesterday"
			local element = createCallHistoryItem(2, "CallFinished", 2, previousDayUtc, previousDayUtc - 100000)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel

			expect(statusElement.Text).toBe("Outgoing • " .. expectedTimeString)
			Roact.unmount(instance)
		end)

		it("should display correct timestamp string for within a week", function()
			local withinWeekUtc = DateTime.now().UnixTimestampMillis - (6 * dayMilliseconds)
			local expectedTimeString = DateTime.fromUnixTimestampMillis(withinWeekUtc)
				:FormatLocalTime("dddd", LocalizationService.RobloxLocaleId)
			local element = createCallHistoryItem(2, "CallFinished", 2, withinWeekUtc, withinWeekUtc - 100000)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel

			expect(statusElement.Text).toBe("Outgoing • " .. expectedTimeString)
			Roact.unmount(instance)
		end)

		it("should display correct timestamp string for more than a week", function()
			local moreThanYearUtc = DateTime.now().UnixTimestampMillis - (400 * dayMilliseconds)
			local expectedTimeString = DateTime.fromUnixTimestampMillis(moreThanYearUtc)
				:FormatLocalTime("L", LocalizationService.RobloxLocaleId)
			local element = createCallHistoryItem(2, "CallFinished", 2, moreThanYearUtc, moreThanYearUtc - 100000)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel

			expect(statusElement.Text).toBe("Outgoing • " .. expectedTimeString)
			Roact.unmount(instance)
		end)
	end)
end
