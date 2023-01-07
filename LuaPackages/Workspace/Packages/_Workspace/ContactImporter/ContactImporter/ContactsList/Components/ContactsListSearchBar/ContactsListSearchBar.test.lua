local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local jestExpect = devDependencies.jestExpect
local act = devDependencies.act
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers

local ContactsListSearchBar = require(script.Parent)

local SEARCH_BAR_HEIGHT = 36

describe("ContactsListSearchBar", function()
	it("SHOULD execute the callback when the search input changes", function()
		local mockTextChangeCallback = jest.fn().mockName("textChangeCallback")

		local element = devDependencies.createTreeWithProviders(
			ContactsListSearchBar,
			{ props = {
				height = SEARCH_BAR_HEIGHT,
				textChangeCallback = mockTextChangeCallback,
			} }
		)

		UnitTestHelpers.runWhileMounted(element, function(parent)
			local inputTextBox = RhodiumHelpers.findFirstElement(parent, {
				Name = "inputTextBox",
			})

			jestExpect(inputTextBox:getText()).toBe("")

			act(function()
				RhodiumHelpers.typeTextIntoElement(inputTextBox, "foo")
			end)

			jestExpect(inputTextBox:getText()).toBe("foo")
			jestExpect(mockTextChangeCallback).toHaveBeenCalledWith("foo")
		end)
	end)
end)
