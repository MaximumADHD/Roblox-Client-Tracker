local ContactImporter = script:FindFirstAncestor("ContactImporter")
local FindFriendsModal = ContactImporter.FindFriendsModal
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(FindFriendsModal.TestHelpers.mockStore)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local ContactsRevokedAccessDialog = require(ContactImporter.ContactsList.Components.ContactsRevokedAccessDialog)

local noOpt = function() end

describe("ContactsRevokedAccessDialog", function()
	local state = {}

	local navigation = {
		getParam = function(param)
			return noOpt
		end,
	}

	it("should create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsRevokedAccessDialog, {
			store = mockStore(state),
			props = {
				navigation = navigation,
				screenSize = Vector2.new(250, 250),
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("should close modal when 'close' button is pressed", function()
		local closeModal = jest.fn()
		local navigation = {
			getParam = function(param)
				closeModal()
				return noOpt
			end,
		}

		local element = createTreeWithProviders(ContactsRevokedAccessDialog, {
			store = mockStore(state),
			props = {
				navigation = navigation,
				screenSize = Vector2.new(250, 250),
			},
		})
		runWhileMounted(element, function(parent)
			local button = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "ImageButton",
				Name = "1",
			})

			RhodiumHelpers.clickInstance(button)
			jestExpect(closeModal).toHaveBeenCalledTimes(1)
		end)
	end)
end)
