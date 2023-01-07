local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking
local llama = dependencies.llama
local FriendRequestCreated = dependencies.RoduxFriends.Actions.FriendRequestCreated
local RoduxNetworking = dependencies.RoduxNetworking
local ContactImporterConstants = dependencies.ContactImporterConstants

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local contactImporterWarning = require(script.Parent.contactImporterWarning)
local ContactImporterWarningSeen = require(script.Parent.Actions.ContactImporterWarningSeen)

describe("contactImporterWarning", function()
	local configuredReducer

	beforeAll(function()
		FriendsNetworking.AcceptFriendRequestFromUserId.Mock.clear()
		FriendsNetworking.DeclineFriendRequestFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequests.Mock.clear()
	end)

	beforeEach(function()
		configuredReducer = Rodux.combineReducers({
			ContactImporterWarningTooltip = contactImporterWarning,
			FriendsLanding = Rodux.combineReducers({
				NetworkStatus = RoduxNetworking.installReducer(),
			}),
		})
	end)

	afterEach(function()
		FriendsNetworking.AcceptFriendRequestFromUserId.Mock.clear()
		FriendsNetworking.DeclineFriendRequestFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequests.Mock.clear()
	end)

	describe("AcceptFriendRequestFromUserId", function()
		local DEFAULT_STATE = {
			ContactImporterWarningTooltip = {
				contactImporterFriendRequests = {},
				seenContactImporterFriendRequest = false,
			},
			FriendsLanding = { NetworkStatus = {} },
		}

		describe("Default state", function()
			it("SHOULD return a function", function()
				expect(contactImporterWarning).toEqual(expect.any("function"))
			end)

			it("SHOULD initialize with non-nil value", function()
				local state = contactImporterWarning(nil, {})

				expect(state).toEqual(DEFAULT_STATE.ContactImporterWarningTooltip)
			end)

			it("SHOULD not change the state if an unrelated action is called", function()
				local newState = contactImporterWarning(nil, { type = "random action" })

				expect(newState).toEqual(DEFAULT_STATE.ContactImporterWarningTooltip)
			end)
		end)

		describe("AcceptFriendRequestFromUserId.Succeeded", function()
			it("SHOULD remove accepted users", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true, ["1989"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["1989"] = true },
					seenContactImporterFriendRequest = false,
				}

				FriendsNetworking.AcceptFriendRequestFromUserId.Mock.reply({ responseBody = { isVerified = true } })

				store:dispatch(
					FriendsNetworking.AcceptFriendRequestFromUserId.API({ targetUserId = "123", currentUserId = "222" })
				)

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)
		end)

		describe("DeclineFriendRequestFromUserId.Succeeded", function()
			it("SHOULD remove accepted users", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true, ["1989"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["1989"] = true },
					seenContactImporterFriendRequest = false,
				}

				FriendsNetworking.DeclineFriendRequestFromUserId.Mock.reply({ responseBody = { isVerified = true } })

				store:dispatch(FriendsNetworking.DeclineFriendRequestFromUserId.API({
					targetUserId = "123",
					currentUserId = "222",
				}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)
		end)

		describe("GetFriendRequests.Succeeded", function()
			it("SHOULD add new ContactImporterWarningSeen user", function()
				local store = Rodux.Store.new(configuredReducer, nil, { Rodux.thunkMiddleware })

				local expectedState = {
					contactImporterFriendRequests = { ["1989"] = true },
					seenContactImporterFriendRequest = false,
				}

				FriendsNetworking.GetFriendRequests.Mock.reply({
					responseBody = {
						data = {
							{
								id = "1989",
								friendRequest = { originSourceType = ContactImporterConstants.PHONE_CONTACT_IMPORTER },
							},
						},
					},
				})

				store:dispatch(FriendsNetworking.GetFriendRequests.API({}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)

			it("SHOULD not add duplicates for user", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true, ["1989"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["123"] = true, ["1989"] = true },
					seenContactImporterFriendRequest = false,
				}

				FriendsNetworking.GetFriendRequests.Mock.reply({
					responseBody = {
						data = {
							{
								id = "1989",
								friendRequest = { originSourceType = ContactImporterConstants.PHONE_CONTACT_IMPORTER },
							},
						},
					},
				})

				store:dispatch(FriendsNetworking.GetFriendRequests.API({}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)

			it("SHOULD not add user who is not PhoneContactImporter", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["123"] = true },
					seenContactImporterFriendRequest = false,
				}

				FriendsNetworking.GetFriendRequests.Mock.reply({
					responseBody = {
						data = {
							{
								id = "1989",
								friendRequest = { originSourceType = "Unknown" },
							},
						},
					},
				})

				store:dispatch(FriendsNetworking.GetFriendRequests.API({}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)

			it("SHOULD handle a long list of requests", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["123"] = true, ["22"] = true, ["15"] = true },
					seenContactImporterFriendRequest = false,
				}

				FriendsNetworking.GetFriendRequests.Mock.reply({
					responseBody = {
						data = {
							{
								id = "1989",
								friendRequest = { originSourceType = "Unknown" },
							},
							{
								id = "22",
								friendRequest = { originSourceType = ContactImporterConstants.PHONE_CONTACT_IMPORTER },
							},
							{
								id = "15",
								friendRequest = { originSourceType = ContactImporterConstants.PHONE_CONTACT_IMPORTER },
							},
						},
					},
				})

				store:dispatch(FriendsNetworking.GetFriendRequests.API({}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)
		end)

		describe("FriendRequestCreated", function()
			it("SHOULD add new ContactImporterWarningSeen user", function()
				local store = Rodux.Store.new(configuredReducer, nil, { Rodux.thunkMiddleware })

				local expectedState = {
					contactImporterFriendRequests = { ["1989"] = true },
					seenContactImporterFriendRequest = false,
				}

				store:dispatch(FriendRequestCreated({
					id = "1989",
					originSourceType = ContactImporterConstants.PHONE_CONTACT_IMPORTER,
				}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)

			it("SHOULD not add duplicates for user", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true, ["1989"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["123"] = true, ["1989"] = true },
					seenContactImporterFriendRequest = false,
				}

				store:dispatch(FriendRequestCreated({
					id = "1989",
					originSourceType = ContactImporterConstants.PHONE_CONTACT_IMPORTER,
				}))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)

			it("SHOULD not add user who is not PhoneContactImporter", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)

				local expectedState = {
					contactImporterFriendRequests = { ["123"] = true },
					seenContactImporterFriendRequest = false,
				}

				store:dispatch(FriendRequestCreated({ id = "1989", originSourceType = "PhoneContactImporte" }))

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)
		end)

		describe("ContactImporterWarningSeen", function()
			it("SHOULD update seenContactImporterFriendRequest", function()
				local store = Rodux.Store.new(
					configuredReducer,
					llama.Dictionary.join(DEFAULT_STATE, {
						ContactImporterWarningTooltip = {
							contactImporterFriendRequests = { ["123"] = true },
							seenContactImporterFriendRequest = false,
						},
					}),
					{ Rodux.thunkMiddleware }
				)
				local expectedState = {
					contactImporterFriendRequests = { ["123"] = true },
					seenContactImporterFriendRequest = true,
				}

				store:dispatch(ContactImporterWarningSeen())

				expect(store:getState().ContactImporterWarningTooltip).toEqual(expectedState)
			end)

			it(
				"SHOULD not update seenContactImporterFriendRequest if there are no contact importer friend requests",
				function()
					local store = Rodux.Store.new(configuredReducer, nil, { Rodux.thunkMiddleware })

					store:dispatch(ContactImporterWarningSeen())

					expect(store:getState().ContactImporterWarningTooltip).toEqual(
						DEFAULT_STATE.ContactImporterWarningTooltip
					)
				end
			)
		end)
	end)
end)
