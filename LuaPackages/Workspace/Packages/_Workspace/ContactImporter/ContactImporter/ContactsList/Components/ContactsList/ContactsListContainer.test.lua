--!nonstrict

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
local llama = dependencies.llama

local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingContacts = dependencies.NetworkingContacts
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local Promise = dependencies.Promise
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local ContactsListContainer = require(script.Parent.ContactsListContainer)
local Constants = require(ContactImporter.Common.Constants)
local formatContacts = require(ContactImporter.Utils.formatContacts)

local FindFriendsModal = ContactImporter.FindFriendsModal
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY
local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(FindFriendsModal.TestHelpers.mockStore)
local Analytics = require(ContactImporter.Analytics)
local EventNames = Analytics.EventNames
local mockRawContacts = require(FindFriendsModal.TestHelpers.mockRawContacts)
local getFFlagNavigateToContactsListFirst = require(ContactImporter.Flags.getFFlagNavigateToContactsListFirst)

local NOOP = function() end

describe("ContactsListContainer", function()
	local flagValue
	beforeAll(function(c)
		flagValue = game:SetFastIntForTesting("ContactImporterUploadContactsMin", 0)
	end)

	afterAll(function(c)
		game:SetFastIntForTesting("ContactImporterUploadContactsMin", flagValue)
	end)

	local screenParams = {
		closeModal = NOOP,
		sendContactFriendRequest = NOOP,
	}

	local DEFAULT_PROPS = {
		contacts = {},
		navigation = {
			getParam = function(item)
				return screenParams[item]
			end,
			pop = NOOP,
		},
		contactsProtocol = {
			supportsContacts = function()
				return Promise.resolve(true)
			end,
			getContacts = function()
				local contacts = {
					countryCode = "US",
					contacts = {
						{
							phonenumber = {
								"6263553555",
								"3223555555",
							},
							lastname = "Person 1",
							firstname = "Test",
						},
						{
							phonenumber = {
								"5451111111",
							},
							lastname = "Person 2",
							firstname = "Test 2",
						},
					},
				}
				return Promise.resolve(contacts)
			end,
		},
	}

	local findContactsFn, getContactEntitiesFn, UploadContactsByUserSpy, sendAPIPostSpy
	local navigationProps, oldValue

	beforeAll(function()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
		NetworkingContacts.FindContactFriends.Mock.clear()
		NetworkingContacts.GetContactEntitiesByContactId.Mock.clear()
		NetworkingFriends.RequestFriendshipFromContactId.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
	end)

	beforeEach(function()
		findContactsFn = jest.fn()
		getContactEntitiesFn = jest.fn()
		UploadContactsByUserSpy = jest.fn()
		sendAPIPostSpy = jest.fn()

		NetworkingContacts.FindContactFriends.Mock.reply(function()
			findContactsFn()
			return {
				responseBody = { userContactIds = { user1 = "123" } },
			}
		end)

		NetworkingContacts.GetContactEntitiesByContactId.Mock.reply(function()
			getContactEntitiesFn()
			return {
				responseBody = {},
			}
		end)

		NetworkingContacts.UploadContactsByUser.Mock.reply(function(_, _, args)
			UploadContactsByUserSpy(#args.postBody.contacts)
			return {
				responseBody = {},
			}
		end)

		NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
			sendAPIPostSpy()
			return {
				responseBody = {},
			}
		end)

		navigationProps = {
			getParam = function(param)
				if param == Constants.BYPASS_FETCH_CONTACTS then
					return false
				elseif param == Constants.SHOULD_UPDATE_USER_SETTINGS then
					return getFFlagNavigateToContactsListFirst()
				else
					return NOOP
				end
			end,
			pop = NOOP,
		}

		oldValue = game:SetFastFlagForTesting("UpdateUploadContacts", true)
	end)

	afterEach(function()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
		NetworkingContacts.FindContactFriends.Mock.clear()
		NetworkingContacts.GetContactEntitiesByContactId.Mock.clear()
		NetworkingFriends.RequestFriendshipFromContactId.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		game:SetFastFlagForTesting("UpdateUploadContacts", oldValue)
	end)

	it("SHOULD create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsListContainer, {
			store = mockStore({
				ScreenSize = Vector2.new(100, 100),
				LocalUserId = "123",
				[RODUX_KEY] = {
					NetworkStatus = {},
					Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
				},
			}),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD fetch for contacts on mount", function()
		local supportsContacts = jest.fn().mockImplementation(function()
			return Promise.resolve(true)
		end)
		local getContacts = jest.fn().mockImplementation(function()
			return Promise.resolve({
				countryCode = "US",
				contacts = {
					{
						phonenumber = {
							"44 2350328333",
						},
						lastname = "",
						firstname = "A Sevond Contact",
					},
					{
						phonenumber = {
							"980889091",
						},
						lastname = "",
						firstname = "Test ContCt",
					},
					{
						phonenumber = {
							"980889090",
						},
						lastname = "Smith",
						firstname = "Tom",
					},
				},
			})
		end)

		local element = createTreeWithProviders(ContactsListContainer, {
			store = mockStore({
				ScreenSize = Vector2.new(100, 100),
				LocalUserId = "123",
				[RODUX_KEY] = {
					NetworkStatus = {},
					Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
				},
			}),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
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
			jestExpect(findContactsFn).toHaveBeenCalledTimes(1)
			jestExpect(getContactEntitiesFn).toHaveBeenCalledTimes(1)
		end)
	end)

	it("SHOULD not fetch for contacts on mount if already opted in", function()
		local supportsContacts = jest.fn().mockImplementation(function()
			return Promise.resolve(true)
		end)
		local getContacts = jest.fn().mockImplementation(function()
			return Promise.resolve({
				countryCode = "US",
				contacts = {},
			})
		end)

		local navigationProps = {
			getParam = function(param)
				if param == Constants.BYPASS_FETCH_CONTACTS then
					return true
				else
					return NOOP
				end
			end,
			pop = NOOP,
		}

		local element = createTreeWithProviders(ContactsListContainer, {
			store = mockStore({
				ScreenSize = Vector2.new(100, 100),
				LocalUserId = "123",
				[RODUX_KEY] = {
					NetworkStatus = {},
					Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
				},
			}),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				navigation = navigationProps,
				contactsProtocol = {
					supportsContacts = supportsContacts,
					getContacts = getContacts,
				},
			}),
		})

		runWhileMounted(element, function(parent)
			jestExpect(supportsContacts).never.toHaveBeenCalled()
			jestExpect(getContacts).never.toHaveBeenCalled()
			jestExpect(findContactsFn).toHaveBeenCalledTimes(1)
			jestExpect(getContactEntitiesFn).toHaveBeenCalledTimes(1)
		end)
	end)

	it("SHOULD show empty list and should not call getContactEntities if no matching contacts are found", function()
		local supportsContacts = jest.fn().mockImplementation(function()
			return Promise.resolve(true)
		end)
		local trimmedContacts = llama.List.slice(mockRawContacts.longList, 1, 10)
		local getContacts = jest.fn().mockImplementation(function()
			return Promise.resolve({
				countryCode = "us",
				contacts = trimmedContacts,
			})
		end)
		local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainer, {
			store = mockStore({
				ScreenSize = Vector2.new(100, 100),
				LocalUserId = "123",
				[RODUX_KEY] = {
					NetworkStatus = {},
					Contacts = { byContactId = {} },
				},
			}),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				contactsProtocol = {
					supportsContacts = supportsContacts,
					getContacts = getContacts,
				},
				navigation = navigationProps,
			}),
		})

		NetworkingContacts.FindContactFriends.Mock.clear()
		NetworkingContacts.FindContactFriends.Mock.reply(function()
			findContactsFn()
			return {
				responseBody = { userContactIds = {} },
			}
		end)

		runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			jestExpect(buttons[1][1]).never.toBeNil()

			RhodiumHelpers.clickInstance(buttons[1][1])

			jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
			jestExpect(getContacts).toHaveBeenCalledTimes(1)
			jestExpect(UploadContactsByUserSpy).toHaveBeenCalledTimes(1)
			jestExpect(findContactsFn).toHaveBeenCalledTimes(1)
			jestExpect(getContactEntitiesFn).never.toHaveBeenCalled()

			local emptyList = RhodiumHelpers.findFirstInstance(parent, {
				Name = "emptyList",
			})
			jestExpect(emptyList).never.toBeNil()
		end)
	end)

	it("SHOULD make proper calls even if no contacts are on device", function()
		local supportsContacts = jest.fn().mockImplementation(function()
			return Promise.resolve(true)
		end)
		local emptyContacts = {}
		local getContacts = jest.fn().mockImplementation(function()
			return Promise.resolve({
				countryCode = "us",
				contacts = emptyContacts,
			})
		end)
		local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainer, {
			store = mockStore({
				ScreenSize = Vector2.new(100, 100),
				LocalUserId = "123",
				[RODUX_KEY] = {
					NetworkStatus = {},
					Contacts = { byContactId = {} },
				},
			}),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				contactsProtocol = {
					supportsContacts = supportsContacts,
					getContacts = getContacts,
				},
				navigation = navigationProps,
			}),
		})

		NetworkingContacts.FindContactFriends.Mock.clear()
		NetworkingContacts.FindContactFriends.Mock.reply(function()
			findContactsFn()
			return {
				responseBody = { userContactIds = {} },
			}
		end)

		runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			jestExpect(buttons[1][1]).never.toBeNil()

			RhodiumHelpers.clickInstance(buttons[1][1])

			jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
			jestExpect(getContacts).toHaveBeenCalledTimes(1)
			jestExpect(UploadContactsByUserSpy).never.toHaveBeenCalled()
			jestExpect(findContactsFn).toHaveBeenCalledTimes(1)
			jestExpect(getContactEntitiesFn).never.toHaveBeenCalled()

			local emptyList = RhodiumHelpers.findFirstInstance(parent, {
				Name = "emptyList",
			})
			jestExpect(emptyList).never.toBeNil()
		end)
		game:SetFastFlagForTesting("UpdateUploadContacts", oldValue)
	end)

	it("SHOULD call updateUserSettings if right param is passed in", function()
		local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainer, {
			store = mockStore({
				ScreenSize = Vector2.new(100, 100),
				LocalUserId = "123",
				[RODUX_KEY] = {
					NetworkStatus = {},
					Contacts = { byContactId = {} },
				},
			}),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				navigation = navigationProps,
			}),
		})

		runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
			if getFFlagNavigateToContactsListFirst() then
				jestExpect(sendAPIPostSpy).toHaveBeenCalledTimes(1)
			else
				jestExpect(sendAPIPostSpy).never.toHaveBeenCalled()
			end
		end)
	end)

	it("SHOULD send friend request if button is pressed", function()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
		NetworkingContacts.UploadContactsByUser.Mock.reply(function()
			return {
				responseBody = {},
			}
		end)

		local RequestFriendshipFromContactIdSpy = jest.fn()
		NetworkingFriends.RequestFriendshipFromContactId.Mock.reply(function()
			RequestFriendshipFromContactIdSpy()
			return {
				responseBody = {},
			}
		end)

		local state = {
			ScreenSize = Vector2.new(100, 100),
			LocalUserId = "1111",
			[RODUX_KEY] = {
				NetworkStatus = {},
				Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
			},
		}
		local element = createTreeWithProviders(ContactsListContainer, {
			store = mockStore(state),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			local requestButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "requestContactButton",
			})
			RhodiumHelpers.clickInstance(requestButton)
			jestExpect(RequestFriendshipFromContactIdSpy).toHaveBeenCalledTimes(1)
		end)
	end)

	it("SHOULD should sort contacts alphabetically", function()
		local state = {
			LocalUserId = "1111",
			ScreenSize = Vector2.new(100, 100),
			[RODUX_KEY] = {
				NetworkStatus = {},
				Contacts = {
					byContactId = {
						["1112"] = { contactName = "zack", contactId = "1112" },
						["123"] = { contactName = "bob", contactId = "123" },
						["456"] = { contactName = "alex", contactId = "456" },
						["789"] = { contactName = "cathy", contactId = "789" },
					},
				},
			},
		}
		local expectedOrder = { "alex", "bob", "cathy", "zack" }
		local element = createTreeWithProviders(ContactsListContainer, {
			store = mockStore(state),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			local contactsList = RhodiumHelpers.findFirstInstance(parent, {
				Name = "scrollingFrame",
			})
			for key, name in pairs(expectedOrder) do
				jestExpect(contactsList[key].entryContent.middleTextGroup.contactNameLabel.Text).toBe(name)
			end
		end)
	end)

	describe("FFlagContactImporterUploadContactsMax = 20 and FFlagContactImporterUploadContactsMin = 10", function()
		local contactImporterUploadContactsMin
		local contactImporterUploadContactsMax
		beforeAll(function(c)
			contactImporterUploadContactsMin = game:SetFastIntForTesting("ContactImporterUploadContactsMin", 10)
			contactImporterUploadContactsMax = game:SetFastIntForTesting("ContactImporterUploadContactsMax", 20)
		end)

		afterAll(function(c)
			game:SetFastIntForTesting("ContactImporterUploadContactsMin", contactImporterUploadContactsMin)
			game:SetFastIntForTesting("ContactImporterUploadContactsMax", contactImporterUploadContactsMax)
		end)

		it("SHOULD not upload if min contacts are not reached", function()
			local element = createTreeWithProviders(ContactsListContainer, {
				store = mockStore({
					ScreenSize = Vector2.new(100, 100),
					LocalUserId = "123",
					[RODUX_KEY] = {
						NetworkStatus = {},
					},
				}),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					rawContacts = llama.List.slice(mockRawContacts.longList, 1, 6),
				}),
			})

			runWhileMounted(element, function(parent)
				jestExpect(UploadContactsByUserSpy).never.toHaveBeenCalled()
			end)
		end)

		it("SHOULD upload if min contacts are reached", function()
			local supportsContacts = jest.fn().mockImplementation(function()
				return Promise.resolve(true)
			end)
			local trimmedContacts = llama.List.slice(mockRawContacts.longList, 1, 10)
			local getContacts = jest.fn().mockImplementation(function()
				return Promise.resolve({
					countryCode = "us",
					contacts = trimmedContacts,
				})
			end)

			local element = createTreeWithProviders(ContactsListContainer, {
				store = mockStore({
					ScreenSize = Vector2.new(100, 100),
					LocalUserId = "123",
					[RODUX_KEY] = {
						NetworkStatus = {},
					},
				}),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					navigation = navigationProps,
					contactsProtocol = {
						supportsContacts = supportsContacts,
						getContacts = getContacts,
					},
					mockedContacts = formatContacts({
						countryCode = "us",
						contacts = trimmedContacts,
					}),
				}),
			})

			runWhileMounted(element, function(parent)
				jestExpect(findContactsFn).toHaveBeenCalledTimes(1)
				jestExpect(getContactEntitiesFn).toHaveBeenCalledTimes(1)
			end)
		end)

		it("SHOULD show error modal if supportsContacts is false", function()
			local supportsContacts = jest.fn().mockImplementation(function()
				return Promise.resolve(false)
			end)
			local getContacts = jest.fn().mockImplementation(function()
				return Promise.resolve({})
			end)

			local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainer, {
				store = mockStore({
					ScreenSize = Vector2.new(100, 100),
					LocalUserId = "123",
					[RODUX_KEY] = {
						NetworkStatus = {},
						Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
					},
				}),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					contactsProtocol = {
						supportsContacts = supportsContacts,
						getContacts = getContacts,
					},
					navigation = navigationProps,
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

				local errorModal = RhodiumHelpers.findFirstInstance(parent, {
					Name = "errorModal",
				})
				jestExpect(errorModal).never.toBeNil()
				jestExpect(UploadContactsByUserSpy).never.toHaveBeenCalled()
			end)
		end)

		it("SHOULD show error modal if getContacts fails", function()
			local supportsContacts = jest.fn().mockImplementation(function()
				return Promise.resolve(true)
			end)
			local getContacts = jest.fn().mockImplementation(function()
				return Promise.reject({})
			end)

			local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsListContainer, {
				store = mockStore({
					ScreenSize = Vector2.new(100, 100),
					LocalUserId = "123",
					[RODUX_KEY] = {
						NetworkStatus = {},
						Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
					},
				}),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
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
				local errorModal = RhodiumHelpers.findFirstInstance(parent, {
					Name = "errorModal",
				})
				jestExpect(errorModal).never.toBeNil()
				jestExpect(UploadContactsByUserSpy).never.toHaveBeenCalled()
			end)
		end)

		it("SHOULD upload max limit of contacts if raw contacts are over the limit", function()
			local supportsContacts = jest.fn().mockImplementation(function()
				return Promise.resolve(true)
			end)
			local getContacts = jest.fn().mockImplementation(function()
				return Promise.resolve({
					countryCode = "us",
					contacts = mockRawContacts.longList,
				})
			end)

			local element = createTreeWithProviders(ContactsListContainer, {
				store = mockStore({
					ScreenSize = Vector2.new(100, 100),
					LocalUserId = "123",
					[RODUX_KEY] = {
						NetworkStatus = {},
						Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } },
					},
				}),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					navigation = navigationProps,
					contactsProtocol = {
						supportsContacts = supportsContacts,
						getContacts = getContacts,
					},
					mockedContacts = formatContacts({
						countryCode = "us",
						contacts = mockRawContacts.longList,
					}),
				}),
			})

			runWhileMounted(element, function(parent)
				jestExpect(UploadContactsByUserSpy).toHaveBeenCalledWith(20)
			end)
		end)
	end)

	-- TODO SACQ-41: Make these tests better!
	describe("When given Analytics", function()
		it(
			"SHOULD fire analytics event ContactsListLoaded and ContactImportingTime when the contacts list is loaded",
			function()
				local supportsContacts = jest.fn().mockImplementation(function()
					return Promise.resolve(true)
				end)
				local getContacts = jest.fn().mockImplementation(function()
					return Promise.resolve({
						countryCode = "us",
						contacts = mockRawContacts.longList,
					})
				end)
				local analyticsLog = {}
				local fireAnalyticsEvent = jest.fn(function(eventName, fields)
					analyticsLog[eventName] = if analyticsLog[eventName] then analyticsLog[eventName] + 1 else 1
				end)

				local element = createTreeWithProviders(ContactsListContainer, {
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
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						navigation = navigationProps,
						contactsProtocol = {
							supportsContacts = supportsContacts,
							getContacts = getContacts,
						},
						mockedContacts = formatContacts({
							countryCode = "us",
							contacts = mockRawContacts.longList,
						}),
					}),
				})

				runWhileMounted(element, function(parent)
					jestExpect(analyticsLog[EventNames.ContactsListLoaded]).toBe(1)
					jestExpect(analyticsLog[EventNames.ContactImportingTime]).toBe(1)
				end)
			end
		)
	end)

	it("SHOULD fire analytics event CloseContactListButton when the contacts list is closed", function()
		local supportsContacts = jest.fn().mockImplementation(function()
			return Promise.resolve(true)
		end)
		local getContacts = jest.fn().mockImplementation(function()
			return Promise.resolve({
				countryCode = "us",
				contacts = mockRawContacts.longList,
			})
		end)
		local fireAnalyticsEvent = jest.fn()

		local element = createTreeWithProviders(ContactsListContainer, {
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
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				navigation = navigationProps,
				contactsProtocol = {
					supportsContacts = supportsContacts,
					getContacts = getContacts,
				},
				mockedContacts = formatContacts({
					countryCode = "us",
					contacts = mockRawContacts.longList,
				}),
			}),
		})

		runWhileMounted(element, function(parent)
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			jestExpect(buttons[1][1]).never.toBeNil()

			waitForEvents.act()

			RhodiumHelpers.clickInstance(buttons[1][1])

			jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(
				EventNames.CloseContactListButton,
				jestExpect.any("table")
			)
		end)
	end)
end)
