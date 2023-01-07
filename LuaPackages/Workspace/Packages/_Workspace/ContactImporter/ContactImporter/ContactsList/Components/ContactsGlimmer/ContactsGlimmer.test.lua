local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local createTreeWithProviders = devDependencies.createTreeWithProviders

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local ContactsGlimmer = require(ContactImporter.ContactsList.Components.ContactsGlimmer)

describe("ContactsGlimmer", function()
	it("SHOULD create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsGlimmer, {
			props = {
				layoutOrder = 1,
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD have player tile and information", function()
		local element = createTreeWithProviders(ContactsGlimmer, {
			props = {
				layoutOrder = 1,
			},
		})
		runWhileMounted(element, function(parent)
			local PlayerName = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerName",
			})
			local ContextualInfo = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ContextualInfo",
			})
			jestExpect(PlayerName).never.toBeNil()
			jestExpect(ContextualInfo).never.toBeNil()
		end)
	end)

	it("SHOULD be in the right order", function()
		local element = createTreeWithProviders(ContactsGlimmer, {
			props = {
				layoutOrder = 1,
			},
		})
		runWhileMounted(element, function(parent)
			local PlayerName = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerName",
			})
			local ContextualInfo = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ContextualInfo",
			})
			jestExpect(PlayerName).toBeAbove(ContextualInfo)
		end)
	end)
end)
