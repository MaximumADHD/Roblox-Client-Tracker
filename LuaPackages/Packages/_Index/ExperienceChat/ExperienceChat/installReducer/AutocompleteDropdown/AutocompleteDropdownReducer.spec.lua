local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local List = require(Packages.llama).List

local Actions = ExperienceChat.Actions
local AutocompleteDropdownActivated = require(Actions.AutocompleteDropdownActivated)
local AutocompleteDropdownResultsChanged = require(Actions.AutocompleteDropdownResultsChanged)
local AutocompleteDropdownSelectionChanged = require(Actions.AutocompleteDropdownSelectionChanged)
local AutocompleteDropdownTypeChanged = require(Actions.AutocompleteDropdownTypeChanged)
local AutocompleteDropdownDeactivated = require(Actions.AutocompleteDropdownDeactivated)

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
			expect(c.state1.autocompleteType).toBe("none")
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
				expect(c.state1.autocompleteType).toBe("none")
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

				it("SHOULD not update other fields", function(c)
					expect(c.state3.activated).toBe(true)
					expect(c.state1.autocompleteType).toBe("none")
				end)
			end)
		end)

		describe("WHEN autocompleteType is changed", function()
			beforeAll(function(c)
				c.state4 = reducer(c.state1, AutocompleteDropdownTypeChanged("emojis"))
			end)
			it("SHOULD change autocompleteType and reset the other fields", function(c)
				expect(c.state4.autocompleteType).toBe("emojis")
				expect(c.state4.activated).toBe(false)
				expect(List.count(c.state4.results)).toBe(0)
				expect(c.state4.selectedIndex).toBe(1)
			end)

			it("SHOULD return the same state when the same autocompleteType is passed", function(c)
				local state = reducer(c.state4, AutocompleteDropdownTypeChanged("emojis"))

				expect(state.autocompleteType).toBe("emojis")
				expect(state.activated).toBe(false)
				expect(List.count(state.results)).toBe(0)
				expect(state.selectedIndex).toBe(1)
			end)

			it("SHOULD return reset to default state when AutocompleteDropdownDeactivated is called", function(c)
				local state = reducer(c.state4, AutocompleteDropdownDeactivated())

				expect(state.autocompleteType).toBe("none")
				expect(state.activated).toBe(false)
				expect(List.count(state.results)).toBe(0)
				expect(state.selectedIndex).toBe(1)
			end)
		end)
	end)
end
