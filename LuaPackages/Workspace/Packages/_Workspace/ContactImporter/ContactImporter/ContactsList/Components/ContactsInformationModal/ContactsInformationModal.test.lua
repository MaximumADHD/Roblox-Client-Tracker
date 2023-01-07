local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local createTreeWithProviders = devDependencies.createTreeWithProviders
local dependencies = require(ContactImporter.dependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local findImageSet = devDependencies.findImageSet

local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted

local ContactsInformationModal = require(ContactImporter.ContactsList.Components.ContactsInformationModal)

describe("ContactsInformationModal", function()
	it("should create and destroy without errors", function()
		local element = createTreeWithProviders(
			ContactsInformationModal,
			{ props = { image = Images["icons/status/oof_xlarge"], text = "This is a generic modal" } }
		)
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("should have icon above text", function()
		local element = createTreeWithProviders(
			ContactsInformationModal,
			{ props = { image = Images["icons/status/oof_xlarge"], text = "This is a generic modal" } }
		)
		runWhileMounted(element, function(parent)
			local description = RhodiumHelpers.findFirstInstance(parent, { Name = "Description" })
			local icon = RhodiumHelpers.findFirstInstance(parent, { Name = "IconContainer" })
			jestExpect(icon).toBeAbove(description)
		end)
	end)

	it("should have correct text and icon", function()
		local element = createTreeWithProviders(
			ContactsInformationModal,
			{ props = { image = Images["icons/status/oof_xlarge"], text = "This is a generic modal" } }
		)
		runWhileMounted(element, function(parent)
			local description = RhodiumHelpers.findFirstInstance(parent, { Name = "Description" })
			jestExpect(description.text).toBe("This is a generic modal")
			local imageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/status/oof_xlarge"))
			jestExpect(imageLabel).never.toBeNil()
		end)
	end)
end)
