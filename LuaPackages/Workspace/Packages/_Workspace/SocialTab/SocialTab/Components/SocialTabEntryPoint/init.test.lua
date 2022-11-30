local SocialTab = script:FindFirstAncestor("SocialTab")
local SocialTabContext = require(SocialTab.SocialTabContext)
local Requests = require(SocialTab.Requests)
local AndroidBackButtonConnection = require(SocialTab.AndroidBackButtonConnection)
local findImageSet = require(SocialTab.TestHelpers.findImageSet)

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local UIBlox = dependencies.UIBlox
local DarkTheme = dependencies.AppStyle.DarkTheme
local Gotham = dependencies.AppStyle.Gotham
local localizationProvider = dependencies.LocalizationProvider
local UniversalAppPolicy = dependencies.UniversalAppPolicy
local Mock = dependencies.Mock
local Cryo = dependencies.Cryo
local RetrievalStatus = dependencies.RetrievalStatus

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SocialTabEntryPoint = require(script.Parent)

describe("SocialTabEntryPoint", function()
	local fetchUnreadConversationCount: any
	local notificationService: any
	local isVisible: boolean?
	local fetchChatSettings: any
	local GetUserV2FromUserId: any

	afterEach(function()
		fetchUnreadConversationCount = nil
		notificationService = nil
		isVisible = nil
		fetchChatSettings = nil
		GetUserV2FromUserId = nil
	end)

	local localization = Mock.MagicMock.new({ name = "localization" })
	localization.format = function(key)
		return key
	end

	local initialState = {
		SocialTab = {
			NetworkStatus = {
				["https://chat.roblox.com/v2/chat-settings"] = RetrievalStatus.NotStarted,
			},
		},
	}
	local mockData = { responseBody = { data = {} } }

	local function getAndroidBackButtonConnection(guiService)
		guiService = guiService or Mock.MagicMock.new({ name = "guiService" })
		local NotificationType, _ = pcall(guiService.GetNotificationTypeList, guiService)
		return AndroidBackButtonConnection(guiService, NotificationType)
	end

	local MockSignal = Mock.MagicMock.new({ name = "signal" })

	local MockStore = Rodux.Store.new(function(state, action)
		return state
	end, initialState, { Rodux.thunkMiddleware })

	local function MockRequestWithCallback(req, callback)
		req.Mock.clear()
		req.Mock.reply(function(url, method, options)
			callback(url, method, options)
			return mockData
		end)
	end

	local function makeTree(props)
		props = props or {} :: any
		local socialTabContext = Mock.MagicMock.new()
		socialTabContext.fetchUnreadConversationCount = fetchUnreadConversationCount or jest.fn()
		socialTabContext.toggleChatPaused = jest.fn()
		socialTabContext.notificationService = notificationService
		socialTabContext.config = { General = { PerformanceTestingMode = Enum.VirtualInputMode.None } }
		socialTabContext.getFriendsLandingEntryPoint = function()
			return function()
				return Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
				})
			end
		end
		return Roact.createElement(UIBlox.Style.Provider, {
			style = {
				Theme = DarkTheme,
				Font = Gotham,
			},
		}, {
			storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = props.mockStore or MockStore,
			}, {
				policyProvider = Roact.createElement(UniversalAppPolicy.Provider, {
					policy = {
						function()
							return {
								getProfileShareEnabled = function()
									return true
								end,
								getContactImporterEnabled = function()
									return true
								end,
							}
						end,
					},
				}, {
					localizationProvider = Roact.createElement(localizationProvider, {
						localization = localization,
					}, {
						socialTabContext = Roact.createElement(SocialTabContext.Provider, {
							value = socialTabContext,
						}, {
							socialTabEntryPoint = Roact.createElement(
								SocialTabEntryPoint,
								Cryo.Dictionary.join({
									androidBackButtonConnection = getAndroidBackButtonConnection(),
									isVisible = isVisible,
									notificationService = notificationService or jest.fn(),
									fetchChatSettings = fetchChatSettings or jest.fn(),
									debug_mockRenderAppContainer = function()
										return Roact.createFragment({
											mockSocialTabFrame = Roact.createElement("Frame", {
												Size = UDim2.fromScale(1, 1),
											}),
										})
									end,
									debug_mockRenderRoactChat = function()
										return Roact.createFragment({
											mockRoactChatFrame = Roact.createElement("Frame", {
												Size = UDim2.fromScale(1, 1),
											}),
										})
									end,
									signal = MockSignal,
								}, props)
							),
						}),
					}),
				}),
			}),
		})
	end

	local function mount(props)
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game:GetService("CoreGui")

		local tree = makeTree(props)

		return screenGui, Roact.mount(tree, screenGui)
	end

	describe("When mounted", function()
		beforeEach(function()
			fetchUnreadConversationCount = jest.fn().mockName("fetchUnreadConversationCount")
			fetchChatSettings = jest.fn().mockName("fetchChatSettings")
			GetUserV2FromUserId = jest.fn().mockName("GetUserV2FromUserId")

			Requests.GetUserV2FromUserId.Mock.clear()
			Requests.FetchChatSettings.Mock.clear()

			MockRequestWithCallback(Requests.GetUserV2FromUserId, GetUserV2FromUserId)
			MockRequestWithCallback(Requests.FetchChatSettings, fetchChatSettings)
			mount()
			wait()
		end)

		it("Should call fetchUnreadConversationCount", function()
			expect(fetchUnreadConversationCount).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD call FetchChatSettings", function()
			expect(fetchChatSettings).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("rendering SocialTab", function()
		beforeEach(function()
			isVisible = true
		end)

		describe("WHEN props.retrievalStatus = DONE", function()
			local screenGui

			beforeEach(function()
				local initialState = {
					SocialTab = {
						NetworkStatus = {
							["https://chat.roblox.com/v2/chat-settings"] = RetrievalStatus.Done,
						},
					},
				}

				local mockStore = Rodux.Store.new(function(state, action)
					return state
				end, initialState, { Rodux.thunkMiddleware })

				screenGui = mount({ mockStore = mockStore })
			end)

			it("SHOULD mount social tab when chat settings resolve", function()
				expect(screenGui:FindFirstChild("mockSocialTabFrame", true)).toBeDefined()
			end)
		end)

		describe("WHEN props.retrievalStatus = Failed", function()
			local screenGui

			beforeEach(function()
				local initialState = {
					SocialTab = {
						NetworkStatus = {
							["https://chat.roblox.com/v2/chat-settings"] = RetrievalStatus.Failed,
						},
					},
				}

				local mockStore = Rodux.Store.new(function(state, action)
					return state
				end, initialState, { Rodux.thunkMiddleware })

				screenGui = mount({ mockStore = mockStore })
			end)

			it("SHOULD show retry button", function()
				local retryButton = RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/common/refresh"))

				expect(retryButton).toBeDefined()
			end)
		end)
	end)

	describe("didUpdate", function()
		describe("props.chatLoaded", function()
			describe("chatLoaded = false -> chatLoaded = true", function()
				beforeEach(function()
					notificationService = jest.fn()
					notificationService.ActionEnabled = jest.fn()
					isVisible = true
					Roact.update(Roact.mount(makeTree({ chatLoaded = false })), makeTree({ chatLoaded = true }))
				end)

				it("SHOULD call props.notificationService.ActionEnabled", function()
					expect(notificationService.ActionEnabled).toHaveBeenCalledTimes(1)
					expect(notificationService.ActionEnabled).toHaveBeenCalledWith(
						notificationService,
						Enum.AppShellActionType.TapConversationEntry
					)
				end)

				describe("WHEN we have never fetched for chat settings", function()
					beforeEach(function()
						fetchUnreadConversationCount = jest.fn().mockName("fetchUnreadConversationCount")
						fetchChatSettings = jest.fn().mockName("fetchChatSettings")
						GetUserV2FromUserId = jest.fn().mockName("GetUserV2FromUserId")

						MockRequestWithCallback(Requests.GetUserV2FromUserId, GetUserV2FromUserId)
						MockRequestWithCallback(Requests.FetchChatSettings, fetchChatSettings)
					end)

					it("SHOULD fire props.fetchChatSettings", function()
						mount()

						expect(fetchChatSettings).toHaveBeenCalledTimes(1)
					end)
				end)

				describe("WHEN we are currently fetching chat settings", function()
					beforeEach(function()
						local initialState = {
							SocialTab = {
								NetworkStatus = {
									["https://chat.roblox.com/v2/chat-settings"] = RetrievalStatus.Fetching,
								},
							},
						}

						local mockStore = Rodux.Store.new(function(state, action)
							return state
						end, initialState, { Rodux.thunkMiddleware })

						mount({ mockStore = mockStore })
						fetchUnreadConversationCount = jest.fn().mockName("fetchUnreadConversationCount")
						fetchChatSettings = jest.fn().mockName("fetchChatSettings")
						GetUserV2FromUserId = jest.fn().mockName("GetUserV2FromUserId")

						MockRequestWithCallback(Requests.GetUserV2FromUserId, GetUserV2FromUserId)
						MockRequestWithCallback(Requests.FetchChatSettings, fetchChatSettings)

						mount({ mockStore = mockStore })
					end)

					it("SHOULD NEVER fire props.fetchChatSettings", function()
						expect(fetchChatSettings).toHaveBeenCalledTimes(0)
					end)
				end)
			end)

			describe("chatLoaded = true -> chatLoaded = false", function()
				beforeEach(function()
					notificationService = jest.fn()
					notificationService.ActionEnabled = jest.fn()

					Roact.update(Roact.mount(makeTree({ chatLoaded = true })), makeTree({ chatLoaded = false }))
				end)

				it("SHOULD NEVER call props.notificationService.ActionEnabled", function()
					expect(notificationService.ActionEnabled).toHaveBeenCalledTimes(0)
				end)
			end)

			describe("WHEN we previously failed to fetch chat settings", function()
				beforeEach(function()
					local initialState = {
						SocialTab = {
							NetworkStatus = {
								["https://chat.roblox.com/v2/chat-settings"] = RetrievalStatus.Failed,
							},
						},
					}

					local mockStore = Rodux.Store.new(function(state, action)
						return state
					end, initialState, { Rodux.thunkMiddleware })

					fetchChatSettings = jest.fn().mockName("fetchChatSettings")

					mount({ mockStore = mockStore })
				end)

				it("SHOULD NEVER fire props.fetchChatSettings", function()
					expect(fetchChatSettings).toHaveBeenCalledTimes(0)
				end)
			end)
		end)
	end)
end)
