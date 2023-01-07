local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local ContactsList = ContactImporter.ContactsList

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterEach = JestGlobals.afterEach

local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(ContactImporter.TestHelpers.mockStore)
local NetworkingShareLinks = dependencies.NetworkingShareLinks
local findElementHelpers = require(ContactImporter.TestHelpers.findElementHelpers)

local ContactsListInviteEntry = require(ContactsList.Components.ContactsListInviteEntry)

describe("ContactsListInviteEntry", function()
	local state = {}

	beforeAll(function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
	end)

	afterEach(function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
	end)

	if devDependencies.UIBloxUniversalAppConfig.enableStandardButtonSizes then
		it("SHOULD create and destroy without errors", function()
			local element = createTreeWithProviders(ContactsListInviteEntry, {
				store = mockStore(state),
				props = {
					contactName = "contactName",
					deviceContactId = "deviceContactId",
				},
			})
			runWhileMounted(element, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
			end)
		end)
	else
		-- Avoid error "Your test suite must contain at least one test." in Jest 3.0
		it("SHOULD pass with flag off", function()
			jestExpect(true).toBe(true)
		end)
	end

	if devDependencies.UIBloxUniversalAppConfig.enableStandardButtonSizes then
		it("SHOULD call the invite link endpoint when pressed", function()
			local testCall = jest.fn()
			local element = createTreeWithProviders(ContactsListInviteEntry, {
				store = mockStore(state),
				props = {
					contactName = "contactName",
					deviceContactId = "deviceContactId",
				},
			})
			NetworkingShareLinks.GenerateLink.Mock.reply(function()
				testCall()
				return {
					responseBody = { linkId = "123412" },
				}
			end)

			runWhileMounted(element, function(parent)
				local button = RhodiumHelpers.findFirstInstance(parent, {
					Name = "sendInviteButton",
				})

				findElementHelpers.checkInviteButton(parent, { assertElementExists = true })

				RhodiumHelpers.clickInstance(button)

				jestExpect(testCall).toHaveBeenCalledTimes(1)
			end)
		end)

		it("SHOULD show not call invite link endpoint when pressed as user has already been sent request", function()
			local testCall = jest.fn()
			local element = createTreeWithProviders(ContactsListInviteEntry, {
				store = mockStore(state),
				props = {
					contactName = "contactName",
					deviceContactId = "deviceContactId",
					hasSentRequest = true,
				},
			})
			NetworkingShareLinks.GenerateLink.Mock.reply(function()
				testCall()
				return {
					responseBody = { linkId = "123412" },
				}
			end)

			runWhileMounted(element, function(parent)
				local button = RhodiumHelpers.findFirstInstance(parent, {
					Name = "sendInviteButton",
				})

				findElementHelpers.checkInviteButton(parent, { assertElementExists = true })

				RhodiumHelpers.clickInstance(button)

				jestExpect(testCall).never.toHaveBeenCalled()
			end)
		end)
	end
end)
