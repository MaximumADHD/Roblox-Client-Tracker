local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local Dash = dependencies.Dash
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local NetworkingContacts = dependencies.NetworkingContacts
local Promise = dependencies.Promise
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local ContactsListContainerV2 = require(script.Parent.ContactsListContainerV2)
local Constants = require(ContactImporter.Common.Constants)
local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local IXPVariants = OffPlatformFriendRequestsIXP.IXPVariants
local findElementHelpers = require(ContactImporter.TestHelpers.findElementHelpers)
local NetworkingShareLinks = dependencies.NetworkingShareLinks

local FindFriendsModal = ContactImporter.FindFriendsModal
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY
local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(FindFriendsModal.TestHelpers.mockStore)
local Analytics = require(ContactImporter.Analytics)
local EventNames = Analytics.EventNames
local mockRawContacts = require(FindFriendsModal.TestHelpers.mockRawContacts)

describe("ContactsListContainerV2", function()
	local runTestsWithProps = function(props: { variant: string })
		describe("with" .. props.variant, function()
			local screenParams = {
				closeModal = Dash.noop,
				sendContactFriendRequest = Dash.noop,
			}

			local defaultProps
			local sendAPIPostSpy, navigationProps, supportsContacts, getContacts
			local uploadContactsByUserSpy, findContactsSpy, getContactEntitiesSpy

			beforeAll(function()
				NetworkingUserSettings.UpdateUserSettings.Mock.clear()
				NetworkingContacts.UploadContactsByUser.Mock.clear()
				NetworkingContacts.FindContactFriends.Mock.clear()
				NetworkingContacts.GetContactEntitiesByContactId.Mock.clear()
			end)

			beforeEach(function()
				supportsContacts = jest.fn().mockImplementation(function()
					return Promise.resolve(true)
				end)
				getContacts = jest.fn().mockImplementation(function()
					return Promise.resolve({
						countryCode = "US",
						contacts = mockRawContacts.shortList,
					})
				end)

				defaultProps = {
					contacts = {},
					navigation = {
						getParam = function(item)
							return screenParams[item]
						end,
						pop = Dash.noop,
					},
					contactsProtocol = {
						supportsContacts = supportsContacts,
						getContacts = getContacts,
					},
					variant = props.variant,
				}

				sendAPIPostSpy = jest.fn()

				NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
					sendAPIPostSpy()
					return {
						responseBody = {},
					}
				end)

				uploadContactsByUserSpy = jest.fn()
				NetworkingContacts.UploadContactsByUser.Mock.reply(function(_, _, args)
					uploadContactsByUserSpy(#args.postBody.contacts)
					return {
						responseBody = {},
					}
				end)

				findContactsSpy = jest.fn()

				NetworkingContacts.FindContactFriends.Mock.reply(function()
					findContactsSpy()
					return {
						responseBody = { userContactIds = { user1 = "123" } },
					}
				end)

				getContactEntitiesSpy = jest.fn()

				NetworkingContacts.GetContactEntitiesByContactId.Mock.reply(function()
					getContactEntitiesSpy()
					return {
						responseBody = {},
					}
				end)

				navigationProps = {
					getParam = function(param)
						if param == Constants.BYPASS_FETCH_CONTACTS then
							return false
						elseif param == Constants.SHOULD_UPDATE_USER_SETTINGS then
							return true
						elseif param == Constants.IS_PHONE_VERIFIED then
							return true
						else
							return Dash.noop
						end
					end,
					pop = Dash.noop,
				}
			end)

			afterEach(function()
				NetworkingUserSettings.UpdateUserSettings.Mock.clear()
				NetworkingContacts.UploadContactsByUser.Mock.clear()
				NetworkingContacts.FindContactFriends.Mock.clear()
				NetworkingContacts.GetContactEntitiesByContactId.Mock.clear()
				NetworkingShareLinks.GenerateLink.Mock.clear()
			end)

			afterAll(function()
				NetworkingUserSettings.UpdateUserSettings.Mock.clear()
			end)

			it("SHOULD create and destroy without errors", function()
				local element = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
						},
					}),
					props = defaultProps,
				})

				runWhileMounted(element, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
				end)
			end)

			it("SHOULD fetch for contacts on mount", function()
				local element = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
							Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
						},
					}),
					props = Dash.join(defaultProps, {
						navigation = navigationProps,
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
					}),
				})

				runWhileMounted(element, function(parent)
					jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
					jestExpect(getContacts).toHaveBeenCalledTimes(1)
				end)
			end)

			it("SHOULD get contacts from device if already opted in", function()
				local navigationProps = {
					getParam = function(param)
						if param == Constants.BYPASS_FETCH_CONTACTS then
							return true
						else
							return Dash.noop
						end
					end,
					pop = Dash.noop,
				}

				local element = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
							Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
						},
					}),
					props = Dash.join(defaultProps, {
						navigation = navigationProps,
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
					}),
				})

				runWhileMounted(element, function(parent)
					jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
					jestExpect(getContacts).toHaveBeenCalledTimes(1)
				end)
			end)

			it("SHOULD show empty list if no matching contacts are found", function()
				local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
							Contacts = { byContactId = {}, byDeviceContactId = {} },
						},
					}),
					props = Dash.join(defaultProps, {
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
						navigation = navigationProps,
					}),
				})

				runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
					local buttons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Buttons",
					})
					jestExpect(buttons[1][1]).never.toBeNil()

					RhodiumHelpers.clickInstance(buttons[1][1])

					jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
					jestExpect(getContacts).toHaveBeenCalledTimes(1)

					findElementHelpers.checkEmptyList(parent, { assertElementExists = true })
				end)
			end)

			describe("FFlagVerifyDeviceContactsIsNotNil", function()
				local flag
				beforeAll(function()
					flag = game:SetFastFlagForTesting("VerifyDeviceContactsIsNotNil", true)
				end)

				afterAll(function()
					game:SetFastFlagForTesting("VerifyDeviceContactsIsNotNil", flag)
				end)

				it("SHOULD show empty list if contacts are nil", function()
					local getContactsNil = jest.fn().mockImplementation(function()
						return Promise.resolve({
							countryCode = "US",
							contacts = nil,
						})
					end)
					local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
						store = mockStore({
							ScreenSize = Vector2.new(100, 100),
							LocalUserId = "123",
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = { byContactId = {}, byDeviceContactId = {} },
							},
						}),
						props = Dash.join(defaultProps, {
							contactsProtocol = {
								supportsContacts = supportsContacts,
								getContacts = getContactsNil,
							},
							navigation = navigationProps,
						}),
					})

					runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
						local buttons = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Buttons",
						})
						jestExpect(buttons[1][1]).never.toBeNil()

						RhodiumHelpers.clickInstance(buttons[1][1])

						jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
						jestExpect(getContactsNil).toHaveBeenCalledTimes(1)

						findElementHelpers.checkEmptyList(parent, { assertElementExists = true })
					end)
				end)
			end)

			it("SHOULD call updateUserSettings if right param is passed in", function()
				local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
							Contacts = { byContactId = {} },
						},
					}),
					props = Dash.join(defaultProps, {
						navigation = navigationProps,
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
					}),
				})

				runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
					jestExpect(sendAPIPostSpy).toHaveBeenCalledTimes(1)
					jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
					jestExpect(getContacts).toHaveBeenCalledTimes(1)
				end)
			end)

			if devDependencies.UIBloxUniversalAppConfig.enableStandardButtonSizes then
				it(
					"SHOULD should be able to handle a mixed list of contacts from device, and matched contacts should not be shown as invitable",
					function()
						local state = {
							LocalUserId = "1111",
							ScreenSize = Vector2.new(100, 100),
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = {
									byDeviceContactId = {
										["1112"] = {
											contactName = "zack",
											id = "zack",
											phoneNumbers = { 9999, 67890 },
										},
										["123"] = {
											contactName = "bob",
											id = "bob",
											phoneNumbers = { 9999, 67890 },
										},
										["456"] = {
											contactName = "alex",
											id = "alex",
											phoneNumbers = { 9999, 67890 },
										},
										["789"] = {
											contactName = "cathy",
											id = "cathy",
											phoneNumbers = { 9999, 67890 },
										},
									},
									byContactId = {
										["zack"] = { contactName = "zack", contactId = "zack" },
									},
									deviceContactToRobloxContact = {
										["bob"] = {},
										["zack"] = {},
									},
								},
							},
						}
						local store = mockStore(state)

						local element = createTreeWithProviders(ContactsListContainerV2, {
							store = store,
							props = Dash.join(defaultProps, {
								contactsProtocol = {
									supportsContacts = supportsContacts,
									getContacts = getContacts,
								},
								navigation = navigationProps,
							}),
						})

						runWhileMounted(element, function(parent)
							local alex = RhodiumHelpers.findFirstInstance(parent, {
								name = "alex",
							})
							local bob = RhodiumHelpers.findFirstInstance(parent, {
								name = "bob",
							})
							local cathy = RhodiumHelpers.findFirstInstance(parent, {
								name = "cathy",
							})
							-- Invite only contacts have an element with their name (but matched contacts do not)
							-- so we can check if zack is shown as an invite contact or a device contact by checking if there is an element
							-- with their name or not.
							local deviceContactZack = RhodiumHelpers.findFirstInstance(parent, {
								name = "zack",
							})
							local matchedContactZach = RhodiumHelpers.findFirstInstance(parent, {
								Text = "zack",
							})
							jestExpect(alex).never.toBeNil()
							jestExpect(cathy).never.toBeNil()
							jestExpect(matchedContactZach).never.toBeNil()
							jestExpect(matchedContactZach).never.toBeNil()
							jestExpect(alex).toBeAbove(cathy)
							jestExpect(matchedContactZach).toBeAbove(alex)

							jestExpect(bob).toBeNil()
							jestExpect(deviceContactZack).toBeNil()
						end)
					end
				)

				it("SHOULD should sort contacts from device alphabetically", function()
					local state = {
						LocalUserId = "1111",
						ScreenSize = Vector2.new(100, 100),
						[RODUX_KEY] = {
							NetworkStatus = {},
							Contacts = {
								byDeviceContactId = {
									["1112"] = { contactName = "zack", id = "zack", phoneNumbers = { 9999, 67890 } },
									["123"] = { contactName = "bob", id = "bob", phoneNumbers = { 9999, 67890 } },
									["456"] = { contactName = "alex", id = "alex", phoneNumbers = { 9999, 67890 } },
									["789"] = {
										contactName = "cathy",
										id = "cathy",
										phoneNumbers = { 9999, 67890 },
									},
								},
								byContactId = {},
							},
						},
					}
					local store = mockStore(state)

					local element = createTreeWithProviders(ContactsListContainerV2, {
						store = store,
						props = Dash.join(defaultProps, {
							contactsProtocol = {
								supportsContacts = supportsContacts,
								getContacts = getContacts,
							},
							navigation = navigationProps,
						}),
					})

					runWhileMounted(element, function(parent)
						local entryA = RhodiumHelpers.findFirstInstance(parent, {
							name = "alex",
						})
						local entryB = RhodiumHelpers.findFirstInstance(parent, {
							name = "bob",
						})
						local entryC = RhodiumHelpers.findFirstInstance(parent, {
							name = "cathy",
						})
						local entryD = RhodiumHelpers.findFirstInstance(parent, {
							name = "zack",
						})
						jestExpect(entryA).never.toBeNil()
						jestExpect(entryB).never.toBeNil()
						jestExpect(entryC).never.toBeNil()
						jestExpect(entryD).never.toBeNil()
						jestExpect(entryA).toBeAbove(entryB)
						jestExpect(entryB).toBeAbove(entryC)
						jestExpect(entryC).toBeAbove(entryD)
					end)
				end)
			end

			it("SHOULD show error modal if there's an upload error and empty list", function()
				supportsContacts = jest.fn().mockImplementation(function()
					return Promise.resolve(false)
				end)

				local analyticsLog: { [string]: number } = {}
				local fireAnalyticsEvent = jest.fn(function(eventName, fields)
					analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
				end)

				local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
						},
					}),
					mockAnalytics = {
						fireAnalyticsEvent = fireAnalyticsEvent,
					},
					props = Dash.join(defaultProps, {
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
					}),
				})

				runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)

					local buttons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Buttons",
					})
					jestExpect(buttons[1][1]).never.toBeNil()

					RhodiumHelpers.clickInstance(buttons[1][1])

					jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
					jestExpect(getContacts).never.toHaveBeenCalled()
					findElementHelpers.checkFailedList(parent, { assertElementExists = true })

					jestExpect(analyticsLog[EventNames.FailedGetContactsFromDevice]).toBe(1)
				end)
			end)

			it("SHOULD show error modal if getContacts fails", function()
				getContacts = jest.fn().mockImplementation(function()
					return Promise.reject({})
				end)

				local analyticsLog: { [string]: number } = {}
				local fireAnalyticsEvent = jest.fn(function(eventName, fields)
					analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
				end)

				local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
					store = mockStore({
						ScreenSize = Vector2.new(100, 100),
						LocalUserId = "123",
						[RODUX_KEY] = {
							NetworkStatus = {},
						},
					}),
					mockAnalytics = {
						fireAnalyticsEvent = fireAnalyticsEvent,
					},
					props = Dash.join(defaultProps, {
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
						navigation = navigationProps,
					}),
				})

				runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
					local buttons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Buttons",
					})
					jestExpect(buttons[1][1]).never.toBeNil()

					RhodiumHelpers.clickInstance(buttons[1][1])

					jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
					jestExpect(getContacts).toHaveBeenCalledTimes(1)
					findElementHelpers.checkFailedList(parent, { assertElementExists = true })

					jestExpect(analyticsLog[EventNames.FailedGetContactsFromDevice]).toBe(1)
				end)
			end)

			if props.variant == IXPVariants.BLENDED then
				if devDependencies.UIBloxUniversalAppConfig.enableStandardButtonSizes then
					it("SHOULD show invites if matched fails to load", function()
						getContacts = jest.fn().mockImplementation(function()
							return Promise.reject({})
						end)

						local state = {
							LocalUserId = "1111",
							ScreenSize = Vector2.new(100, 100),
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = {
									byDeviceContactId = {
										["1112"] = {
											contactName = "zack",
											id = "zack",
											phoneNumbers = { 9999, 67890 },
										},
										["123"] = {
											contactName = "bob",
											id = "bob",
											phoneNumbers = { 9999, 67890 },
										},
										["456"] = {
											contactName = "alex",
											id = "alex",
											phoneNumbers = { 9999, 67890 },
										},
										["789"] = {
											contactName = "cathy",
											id = "cathy",
											phoneNumbers = { 9999, 67890 },
										},
									},
									byContactId = {},
								},
							},
						}
						local store = mockStore(state)

						local element = createTreeWithProviders(ContactsListContainerV2, {
							store = store,
							props = Dash.join(defaultProps, {
								contactsProtocol = {
									supportsContacts = supportsContacts,
									getContacts = getContacts,
								},
								navigation = navigationProps,
							}),
						})

						runWhileMounted(element, function(parent)
							local entryA = RhodiumHelpers.findFirstInstance(parent, {
								name = "alex",
							})
							local entryB = RhodiumHelpers.findFirstInstance(parent, {
								name = "bob",
							})
							jestExpect(entryA).never.toBeNil()
							jestExpect(entryB).never.toBeNil()
							jestExpect(entryA).toBeAbove(entryB)
						end)
					end)
				end
			end

			describe("WHEN requests are made", function()
				local originalMinValue
				beforeEach(function()
					originalMinValue = game:SetFastIntForTesting("ContactImporterUploadContactsMin", 0)
				end)

				afterEach(function()
					game:SetFastIntForTesting("ContactImporterUploadContactsMin", originalMinValue)
				end)

				it("SHOULD not show error modal if uploadContacts is called and fails", function()
					NetworkingContacts.UploadContactsByUser.Mock.clear()
					NetworkingContacts.UploadContactsByUser.Mock.replyWithError(function(_, _, args)
						uploadContactsByUserSpy(#args.postBody.contacts)
						return {
							responseBody = {},
						}
					end)

					local analyticsLog: { [string]: number } = {}
					local fireAnalyticsEvent = jest.fn(function(eventName, fields)
						analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
					end)

					local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
						store = mockStore({
							ScreenSize = Vector2.new(100, 100),
							LocalUserId = "123",
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
							},
						}),
						mockAnalytics = {
							fireAnalyticsEvent = fireAnalyticsEvent,
						},
						props = Dash.join(defaultProps, {
							contactsProtocol = {
								supportsContacts = supportsContacts,
								getContacts = getContacts,
							},
							navigation = navigationProps,
						}),
					})

					runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
						local buttons = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Buttons",
						})
						jestExpect(buttons[1][1]).never.toBeNil()

						RhodiumHelpers.clickInstance(buttons[1][1])

						jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
						jestExpect(getContacts).toHaveBeenCalledTimes(1)
						if props.variant == IXPVariants.BLENDED then
							jestExpect(uploadContactsByUserSpy).toHaveBeenCalledTimes(1)
							jestExpect(findContactsSpy).never.toHaveBeenCalled()
							jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
						else
							jestExpect(uploadContactsByUserSpy).never.toHaveBeenCalled()
							jestExpect(findContactsSpy).never.toHaveBeenCalled()
							jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
						end

						findElementHelpers.checkFailedList(parent, { assertElementExists = false })

						if props.variant == IXPVariants.BLENDED then
							jestExpect(analyticsLog[EventNames.FailedUploadContactsFromDevice]).toBe(1)
						end
					end)
				end)

				it(
					"SHOULD not call GetContactEntitiesByContactId findContacts fails if nothing is returned by findContacts",
					function()
						NetworkingContacts.FindContactFriends.Mock.clear()
						NetworkingContacts.FindContactFriends.Mock.replyWithError(function()
							findContactsSpy()
							return {}
						end)

						local analyticsLog: { [string]: number } = {}
						local fireAnalyticsEvent = jest.fn(function(eventName, fields)
							analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
						end)

						local ContactsImporterOverlayContainerComponent =
							createTreeWithProviders(ContactsListContainerV2, {
								store = mockStore({
									ScreenSize = Vector2.new(100, 100),
									LocalUserId = "123",
									[RODUX_KEY] = {
										NetworkStatus = {},
										Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
									},
								}),
								mockAnalytics = {
									fireAnalyticsEvent = fireAnalyticsEvent,
								},
								props = Dash.join(defaultProps, {
									contactsProtocol = {
										supportsContacts = supportsContacts,
										getContacts = getContacts,
									},
									navigation = navigationProps,
								}),
							})

						runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
							local buttons = RhodiumHelpers.findFirstInstance(parent, {
								Name = "Buttons",
							})
							jestExpect(buttons[1][1]).never.toBeNil()

							RhodiumHelpers.clickInstance(buttons[1][1])

							jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
							jestExpect(getContacts).toHaveBeenCalledTimes(1)
							if props.variant == IXPVariants.BLENDED then
								jestExpect(uploadContactsByUserSpy).toHaveBeenCalledTimes(1)
								jestExpect(findContactsSpy).toHaveBeenCalledTimes(1)
								jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
							else
								jestExpect(uploadContactsByUserSpy).never.toHaveBeenCalled()
								jestExpect(findContactsSpy).never.toHaveBeenCalled()
								jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
							end

							findElementHelpers.checkFailedList(parent, { assertElementExists = false })

							if props.variant == IXPVariants.BLENDED then
								jestExpect(analyticsLog[EventNames.FailedFindContacts]).toBe(1)
							end
							if props.variant == IXPVariants.INVITES_ONLY then
								-- failed analytics not called, as invitesOnly never makes this call
								jestExpect(analyticsLog[EventNames.FailedFindContacts]).toBe(nil)
							end
						end)
					end
				)

				it("SHOULD not call GetContactEntitiesByContactId if nothing is returned by findContacts", function()
					NetworkingContacts.FindContactFriends.Mock.clear()
					NetworkingContacts.FindContactFriends.Mock.reply(function()
						findContactsSpy()
						return {}
					end)

					local analyticsLog: { [string]: number } = {}
					local fireAnalyticsEvent = jest.fn(function(eventName, fields)
						analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
					end)

					local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
						store = mockStore({
							ScreenSize = Vector2.new(100, 100),
							LocalUserId = "123",
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
							},
						}),
						mockAnalytics = {
							fireAnalyticsEvent = fireAnalyticsEvent,
						},
						props = Dash.join(defaultProps, {
							contactsProtocol = {
								supportsContacts = supportsContacts,
								getContacts = getContacts,
							},
							navigation = navigationProps,
						}),
					})

					runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
						local buttons = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Buttons",
						})
						jestExpect(buttons[1][1]).never.toBeNil()

						RhodiumHelpers.clickInstance(buttons[1][1])

						jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
						jestExpect(getContacts).toHaveBeenCalledTimes(1)
						if props.variant == IXPVariants.BLENDED then
							jestExpect(uploadContactsByUserSpy).toHaveBeenCalledTimes(1)
							jestExpect(findContactsSpy).toHaveBeenCalledTimes(1)
							jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
						else
							jestExpect(uploadContactsByUserSpy).never.toHaveBeenCalled()
							jestExpect(findContactsSpy).never.toHaveBeenCalled()
							jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
						end

						findElementHelpers.checkFailedList(parent, { assertElementExists = false })

						if props.variant == IXPVariants.BLENDED then
							jestExpect(analyticsLog[EventNames.FailedFindContacts]).toBe(1)
						end
						if props.variant == IXPVariants.INVITES_ONLY then
							-- failed analytics not called, as invitesOnly never makes this call
							jestExpect(analyticsLog[EventNames.FailedFindContacts]).toBe(nil)
						end
					end)
				end)

				it("SHOULD call GetContactEntitiesByContactId if something is returned by findContacts", function()
					NetworkingContacts.FindContactFriends.Mock.clear()
					NetworkingContacts.FindContactFriends.Mock.reply(function()
						findContactsSpy()
						return {
							responseBody = {
								userContactIds = { "1234", "234" },
							},
						}
					end)

					local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainerV2, {
						store = mockStore({
							ScreenSize = Vector2.new(100, 100),
							LocalUserId = "123",
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
							},
						}),

						props = Dash.join(defaultProps, {
							contactsProtocol = {
								supportsContacts = supportsContacts,
								getContacts = getContacts,
							},
							navigation = navigationProps,
						}),
					})

					runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
						local buttons = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Buttons",
						})
						jestExpect(buttons[1][1]).never.toBeNil()

						RhodiumHelpers.clickInstance(buttons[1][1])

						jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
						jestExpect(getContacts).toHaveBeenCalledTimes(1)
						if props.variant == IXPVariants.BLENDED then
							jestExpect(uploadContactsByUserSpy).toHaveBeenCalledTimes(1)
							jestExpect(findContactsSpy).toHaveBeenCalledTimes(1)
							jestExpect(getContactEntitiesSpy).toHaveBeenCalledTimes(1)
						else
							jestExpect(uploadContactsByUserSpy).never.toHaveBeenCalled()
							jestExpect(findContactsSpy).never.toHaveBeenCalled()
							jestExpect(getContactEntitiesSpy).never.toHaveBeenCalled()
						end

						findElementHelpers.checkFailedList(parent, { assertElementExists = false })
					end)
				end)
			end)

			describe("When given Analytics", function()
				it(
					"SHOULD fire analytics event ContactsListLoaded and ContactImportingTime when the contacts list is loaded",
					function()
						local getContacts = jest.fn().mockImplementation(function()
							return Promise.resolve({
								countryCode = "us",
								contacts = mockRawContacts.longList,
							})
						end)

						local analyticsLog: { [string]: number } = {}
						local fireAnalyticsEvent = jest.fn(function(eventName, fields)
							analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
						end)

						local element = createTreeWithProviders(ContactsListContainerV2, {
							mockAnalytics = {
								fireAnalyticsEvent = fireAnalyticsEvent,
							},
							store = mockStore({
								ScreenSize = Vector2.new(100, 100),
								LocalUserId = "123",
								[RODUX_KEY] = {
									NetworkStatus = {},
									Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
								},
							}),
							props = Dash.join(defaultProps, {
								navigation = navigationProps,
								contactsProtocol = {
									supportsContacts = supportsContacts,
									getContacts = getContacts,
								},
							}),
						})

						runWhileMounted(element, function(parent)
							jestExpect(analyticsLog[EventNames.ContactsListLoaded]).toBe(1)
							jestExpect(analyticsLog[EventNames.ContactImportingTime]).toBe(1)
						end)
					end
				)

				it("SHOULD fire analytics event CloseContactListButton when the contacts list is closed", function()
					local getContacts = jest.fn().mockImplementation(function()
						return Promise.resolve({
							countryCode = "us",
							contacts = mockRawContacts.longList,
						})
					end)
					local analyticsLog: { [string]: number } = {}
					local fireAnalyticsEvent = jest.fn(function(eventName, fields)
						analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
					end)

					local element = createTreeWithProviders(ContactsListContainerV2, {
						mockAnalytics = {
							fireAnalyticsEvent = fireAnalyticsEvent,
						},
						store = mockStore({
							ScreenSize = Vector2.new(100, 100),
							LocalUserId = "123",
							[RODUX_KEY] = {
								NetworkStatus = {},
								Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
							},
						}),
						props = Dash.join(defaultProps, {
							navigation = navigationProps,
							contactsProtocol = {
								supportsContacts = supportsContacts,
								getContacts = getContacts,
							},
						}),
					})

					runWhileMounted(element, function(parent)
						local buttons = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Buttons",
						})
						jestExpect(buttons[1][1]).never.toBeNil()

						waitForEvents.act()

						RhodiumHelpers.clickInstance(buttons[1][1])

						jestExpect(analyticsLog[EventNames.CloseContactListButton]).toBe(1)
					end)
				end)
			end)
		end)
	end

	-- TODO add shouldUpdateUserSettings tests
	runTestsWithProps({ variant = IXPVariants.INVITES_ONLY })
	runTestsWithProps({ variant = IXPVariants.BLENDED })
end)
