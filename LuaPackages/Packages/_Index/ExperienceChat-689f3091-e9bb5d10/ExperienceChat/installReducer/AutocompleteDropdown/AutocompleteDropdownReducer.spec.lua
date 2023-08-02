local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local List = require(Packages.llama).List

local Actions = ExperienceChat.Actions
local AutocompleteDropdownActivated = require(Actions.AutocompleteDropdownActivated)
local AutocompleteDropdownResultsChanged = require(Actions.AutocompleteDropdownResultsChanged)
local AutocompleteDropdownSelectionChanged = require(Actions.AutocompleteDropdownSelectionChanged)

local reducer = require(script.Parent)

return function()
	describe("WHEN initial AutocompleteDropdownActivated dispatched", function()
		beforeAll(function(c)
			c.state1 = reducer(nil, AutocompleteDropdownActivated(true))
		end)

		it("SHOULD activate the dropdown", function(c)
			expect(c.state1.activated).toBe(true)
		end)

		it("SHOULD not change the other fields", function(c)
			expect(List.count(c.state1.results)).toBe(0)
			expect(c.state1.selectedIndex).toBe(1)
		end)

		describe("WHEN selected index is changed", function()
			beforeAll(function(c)
				c.state2 = reducer(c.state1, AutocompleteDropdownSelectionChanged(3))
			end)
			it("SHOULD update the selectedIndex field", function(c)
				expect(c.state2.selectedIndex).toBe(3)
			end)

			it("SHOULD not change other fields", function(c)
				expect(List.count(c.state1.results)).toBe(0)
				expect(c.state1.activated).toBe(true)
			end)

			describe("WHEN results are changed", function()
				beforeAll(function(c)
					c.results = { "smile", "smile-cat", "smiley", "smiley-cat" }
					c.state3 = reducer(c.state2, AutocompleteDropdownResultsChanged(c.results))
				end)
				it("SHOULD update the results field and reset selectedIndex", function(c)
					expect(List.equals(c.results, c.state3.results))
					expect(c.state3.selectedIndex).toBe(1)
				end)

				it("SHOULD not update activated", function(c)
					expect(c.state3.activated).toBe(true)
				end)
			end)
		end)
	end)
end
