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

local ContactsListLoadingView = require(ContactImporter.ContactsList.Components.ContactsListLoadingView)

describe("ContactsListLoadingView", function()
	it("SHOULD create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsListLoadingView, {
			props = {
				screenSize = Vector2.new(100, 100),
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD have LoadingViewContainer and glimmer", function()
		local element = createTreeWithProviders(ContactsListLoadingView, {
			props = {
				screenSize = Vector2.new(100, 100),
			},
		})
		runWhileMounted(element, function(parent)
			local LoadingViewContainer = RhodiumHelpers.findFirstInstance(parent, {
				Name = "LoadingViewContainer",
			})
			local Glimmer = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Glimmer1",
			})
			jestExpect(Glimmer).never.toBeNil()
			jestExpect(LoadingViewContainer).never.toBeNil()
		end)
	end)
end)
