local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local createTreeWithProviders = devDependencies.createTreeWithProviders

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted

local ContactsUploadErrorModal = require(ContactImporter.ContactsList.Components.ContactsUploadErrorModal)

describe("ContactsUploadErrorModal", function()
	it("should create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsUploadErrorModal, {})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)
end)
