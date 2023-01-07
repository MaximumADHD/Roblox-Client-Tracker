--!nonstrict

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local TextKeys = require(ContactImporter.Common.TextKeys)
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterEach = JestGlobals.afterEach

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local act = devDependencies.act
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local runWhileMounted = UnitTestHelpers.runWhileMounted
local llama = dependencies.llama
local NetworkingContacts = dependencies.NetworkingContacts
local Promise = dependencies.Promise
local createTreeWithProviders = devDependencies.createTreeWithProviders
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local PermissionsProtocol = dependencies.PermissionsProtocol
local MessageBus = devDependencies.MessageBus
local EnumScreens = dependencies.SocialModalsCommon.EnumScreens

local getFFlagNavigateToContactsListFirst = require(ContactImporter.Flags.getFFlagNavigateToContactsListFirst)
local getFFlagContactImporterWithPhoneVerification = dependencies.getFFlagContactImporterWithPhoneVerification

local ContactsImporterOverlayContainer = require(script.Parent.ContactsImporterOverlayContainer)

local NOOP = function() end
local permissionsProtocol, subscriber
local Constants = require(ContactImporter.Common.Constants)

describe("ContactsImporterOverlayContainer", function()
	local showToast, navigate, openPVWebview
	local navigationParams = {}
	local navigation = {}
	local DEFAULT_PROPS = {}

	beforeAll(function()
		permissionsProtocol = PermissionsProtocol.new()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
		NetworkingContacts.FindContactFriends.Mock.clear()
		NetworkingContacts.GetContactEntitiesByContactId.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		NetworkingUserSettings.GetUserSettingsMetadata.Mock.clear()
		subscriber = MessageBus.Subscriber.new()

		showToast = jest.fn()
		navigate = jest.fn()
		openPVWebview = jest.fn()
		navigationParams = {
			[Constants.IS_FROM_ADD_FRIENDS_PAGE] = true,
			[Constants.SHOW_TOAST] = showToast,
			["isDiscoverabilityUnset"] = false,
			[Constants.OPEN_PHONE_VERIFICATION_WEBVIEW] = function()
				openPVWebview()
			end,
		}

		navigation = {
			getParam = function(param)
				return navigationParams[param]
			end,
			navigate = navigate,
			replace = function()
				return
			end,
			pop = function()
				return
			end,
		}

		DEFAULT_PROPS = {
			screenSize = Vector2.new(500, 500),
			localUserId = "123",
			navigation = navigation,
			checkOrRequestPermissions = jest.fn().mockImplementation(function()
				return Promise.resolve()
			end),
		}
	end)

	afterEach(function()
		subscriber:unsubscribeFromAllMessages()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
		NetworkingContacts.FindContactFriends.Mock.clear()
		NetworkingContacts.GetContactEntitiesByContactId.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		NetworkingUserSettings.GetUserSettingsMetadata.Mock.clear()
		subscriber = MessageBus.Subscriber.new()
	end)

	it("SHOULD mount and unmount with default props", function()
		local ContactsImporterOverlayContainerElement = createTreeWithProviders(ContactsImporterOverlayContainer, {
			props = DEFAULT_PROPS,
		})

		runWhileMounted(ContactsImporterOverlayContainerElement, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD show failure toast if request does not succeed from homepage", function()
		NetworkingContacts.UploadContactsByUser.Mock.replyWithError("")

		local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsImporterOverlayContainer, {
			props = llama.Dictionary.join(DEFAULT_PROPS),
		})

		runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			waitForEvents.act()
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			local button = buttons[1][2]
			jestExpect(button).never.toBeNil()

			waitForEvents.act()
			act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			if not getFFlagContactImporterWithPhoneVerification() then
				jestExpect(showToast).toHaveBeenCalledWith(TextKeys.CI_FAILED)
			end
		end)
	end)

	it("SHOULD NOT update backend contact importer opt-in status if OS permissions are not given", function()
		local sendAPIPostSpy = jest.fn()
		local checkOrRequestPermissions = jest.fn().mockImplementation(function()
			return Promise.resolve(PermissionsProtocol.Status.DENIED)
		end)

		subscriber:subscribeProtocolMethodRequest(
			permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
			function(params)
				MessageBus.publishProtocolMethodResponse(
					permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
					{
						status = permissionsProtocol.Status.DENIED,
						missingPermissions = {},
					},
					0,
					{}
				)
			end
		)
		wait()

		NetworkingContacts.UploadContactsByUser.Mock.reply(function()
			return {
				responseBody = {},
			}
		end)

		NetworkingContacts.FindContactFriends.Mock.reply(function()
			return {
				responseBody = {},
			}
		end)

		NetworkingContacts.GetContactEntitiesByContactId.Mock.reply(function()
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

		local ContactsImporterOverlayContainerComponent = createTreeWithProviders(ContactsImporterOverlayContainer, {
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				checkOrRequestPermissions = checkOrRequestPermissions,
				navigation = navigation,
			}),
		})

		runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			local connectContactsButton = buttons[1][1]
			jestExpect(connectContactsButton).never.toBeNil()
			RhodiumHelpers.clickInstance(connectContactsButton)
			jestExpect(sendAPIPostSpy).never.toHaveBeenCalled()
		end)
	end)

	if not getFFlagContactImporterWithPhoneVerification() then
		it(
			"SHOULD update backend contact importer opt-in status to true if has OS permissions and user clicks on Connect Contacts",
			function()
				local sendAPIPostSpy = jest.fn()
				local checkOrRequestPermissions = jest.fn().mockImplementation(function()
					return Promise.resolve(permissionsProtocol.Status.AUTHORIZED)
				end)

				NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
					sendAPIPostSpy()
					return {
						responseBody = {},
					}
				end)

				NetworkingContacts.UploadContactsByUser.Mock.reply(function()
					return {
						responseBody = {},
					}
				end)

				NetworkingContacts.FindContactFriends.Mock.reply(function()
					return {
						responseBody = {},
					}
				end)

				NetworkingContacts.GetContactEntitiesByContactId.Mock.reply(function()
					return {
						responseBody = {},
					}
				end)

				local ContactsImporterOverlayContainerComponent =
					createTreeWithProviders(ContactsImporterOverlayContainer, {
						props = llama.Dictionary.join(DEFAULT_PROPS, {
							checkOrRequestPermissions = checkOrRequestPermissions,
						}),
					})

				runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
					waitForEvents.act()
					local buttons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Buttons",
					})
					local connectContactsButton = buttons[1][2]
					jestExpect(connectContactsButton).never.toBeNil()
					waitForEvents.act()
					act(function()
						RhodiumHelpers.clickInstance(connectContactsButton)
					end)
					if getFFlagNavigateToContactsListFirst() then
						jestExpect(sendAPIPostSpy).never.toHaveBeenCalled()
					else
						jestExpect(sendAPIPostSpy).toHaveBeenCalledTimes(1)
					end
				end)
			end
		)

		it("SHOULD should navigate to contactsList if authorized from connect contacts button is pressed", function()
			local checkOrRequestPermissions = jest.fn(function()
				return Promise.resolve(PermissionsProtocol.Status.AUTHORIZED)
			end)
			local ContactsImporterOverlayContainerComponent =
				createTreeWithProviders(ContactsImporterOverlayContainer, {
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						checkOrRequestPermissions = checkOrRequestPermissions,
					}),
				})

			NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)

			runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
				waitForEvents.act()
				jestExpect(#parent:GetChildren()).toBe(1)

				local buttons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "Buttons",
				})
				local button = buttons[1][2]
				jestExpect(button).never.toBeNil()

				waitForEvents.act()
				act(function()
					RhodiumHelpers.clickInstance(button)
				end)
				jestExpect(checkOrRequestPermissions).toHaveBeenCalledTimes(1)

				if getFFlagNavigateToContactsListFirst() then
					jestExpect(navigate).toHaveBeenCalledWith(
						EnumScreens.ContactsList,
						{ [Constants.SHOULD_UPDATE_USER_SETTINGS] = true }
					)
				else
					jestExpect(navigate).toHaveBeenCalledWith(EnumScreens.ContactsList)
				end
			end)
		end)

		it("SHOULD navigate to revoked access modal if OS permissions have been revoked", function()
			local checkOrRequestPermissions = jest.fn().mockImplementation(function()
				return Promise.resolve(PermissionsProtocol.Status.DENIED)
			end)

			local navigateSpy, navigateSpyFn = jest.fn()
			local navigation = {
				getParam = function(param)
					if param == "isFromAddFriendsPage" then
						return false
					elseif param == "closeModal" then
						return NOOP
					elseif param == "isDiscoverabilityUnset" then
						return false
					else
						return NOOP
					end
				end,
				navigate = navigateSpyFn,
				replace = function()
					return
				end,
				pop = function()
					return
				end,
			}

			local ContactsImporterOverlayContainerComponent =
				createTreeWithProviders(ContactsImporterOverlayContainer, {
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						checkOrRequestPermissions = checkOrRequestPermissions,
						navigation = navigation,
					}),
				})

			runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
				waitForEvents.act()
				local buttons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "Buttons",
				})
				local connectContactsButton = buttons[1][2]
				jestExpect(connectContactsButton).never.toBeNil()
				waitForEvents.act()
				act(function()
					RhodiumHelpers.clickInstance(connectContactsButton)
				end)
				jestExpect(navigateSpy).toHaveBeenCalledWith(
					EnumScreens.ContactsRevokedAccessDialog,
					jestExpect.any("table")
				)
			end)
		end)

		it("SHOULD NOT navigate to revoked access modal if OS permissions are authorized", function()
			local checkOrRequestPermissions = jest.fn().mockImplementation(function()
				return Promise.resolve(PermissionsProtocol.Status.AUTHORIZED)
			end)

			subscriber:subscribeProtocolMethodRequest(
				permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
						{
							status = permissionsProtocol.Status.AUTHORIZED,
							missingPermissions = {},
						},
						0,
						{}
					)
				end
			)
			wait()

			NetworkingContacts.UploadContactsByUser.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)

			NetworkingContacts.FindContactFriends.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)

			NetworkingContacts.GetContactEntitiesByContactId.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)

			NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)

			local navigateSpy, navigateSpyFn = jest.fn()
			local navigation = {
				getParam = function(param)
					if param == "isFromAddFriendsPage" then
						return false
					elseif param == "isDiscoverabilityUnset" then
						return false
					else
						return NOOP
					end
				end,
				navigate = navigateSpyFn,
				replace = function()
					return
				end,
				pop = function()
					return
				end,
			}

			local ContactsImporterOverlayContainerComponent =
				createTreeWithProviders(ContactsImporterOverlayContainer, {
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						checkOrRequestPermissions = checkOrRequestPermissions,
						navigation = navigation,
					}),
				})

			runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
				waitForEvents.act()
				local buttons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "Buttons",
				})
				local connectContactsButton = buttons[1][2]
				jestExpect(connectContactsButton).never.toBeNil()
				waitForEvents.act()
				act(function()
					RhodiumHelpers.clickInstance(connectContactsButton)
				end)
				jestExpect(navigateSpy).toHaveBeenCalledWith(EnumScreens.ContactsList)
				jestExpect(navigateSpy).never.toHaveBeenCalledWith(EnumScreens.ContactsRevokedAccessDialog)
			end)
		end)
	end

	if not getFFlagContactImporterWithPhoneVerification() then
		it("SHOULD should navigate to discoverabilityModal if user has not yet set value", function()
			local navigateSpy, navigateSpyFn = jest.fn()
			NetworkingUserSettings.GetUserSettingsMetadata.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)
			local navigation = {
				getParam = function(param)
					if param == "isFromAddFriendsPage" then
						return false
					elseif param == "isDiscoverabilityUnset" then
						return true
					else
						return NOOP
					end
				end,
				navigate = navigateSpyFn,
				replace = function()
					return
				end,
				pop = function()
					return
				end,
			}

			local ContactsImporterOverlayContainerComponent =
				createTreeWithProviders(ContactsImporterOverlayContainer, {
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						navigation = navigation,
					}),
				})

			runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
				waitForEvents.act()
				jestExpect(#parent:GetChildren()).toBe(1)

				local buttons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "Buttons",
				})
				local connectContactsButton = buttons[1][2]
				jestExpect(connectContactsButton).never.toBeNil()
				waitForEvents.act()
				act(function()
					RhodiumHelpers.clickInstance(connectContactsButton)
				end)
				jestExpect(navigateSpy).toHaveBeenCalledWith(
					EnumScreens.DiscoverabilityOverlay,
					jestExpect.any("table")
				)
			end)
		end)
	end

	if getFFlagContactImporterWithPhoneVerification() then
		it("SHOULD should navigate to webview if button is pressed and requirements are met", function()
			local checkOrRequestPermissions = jest.fn(function()
				return Promise.resolve(PermissionsProtocol.Status.AUTHORIZED)
			end)
			local ContactsImporterOverlayContainerComponent =
				createTreeWithProviders(ContactsImporterOverlayContainer, {
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						checkOrRequestPermissions = checkOrRequestPermissions,
					}),
				})

			runWhileMounted(ContactsImporterOverlayContainerComponent, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)

				local buttons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "Buttons",
				})
				local button = buttons[1][2]
				jestExpect(button).never.toBeNil()

				RhodiumHelpers.clickInstance(button)
				jestExpect(openPVWebview).toHaveBeenCalled()
			end)
		end)
	end
end)
