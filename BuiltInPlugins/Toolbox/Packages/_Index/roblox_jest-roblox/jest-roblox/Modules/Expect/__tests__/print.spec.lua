--!nocheck
-- deviation: this file does not exist in upstream

return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent

	local Print = require(Workspace.print)

	local JestMatcherUtils = require(Modules.JestMatcherUtils)
	local EXPECTED_COLOR = JestMatcherUtils.EXPECTED_COLOR

	local jestExpect = require(Workspace)

	describe("printing constructor", function()
		local Dog

		beforeEach(function()
			Dog = {}
			Dog.__index = Dog

			setmetatable(Dog, {
			__tostring = function(self)
				return "Dog"
			end
			})
		end)

		it("prints constructor name", function()
			jestExpect(Print.printExpectedConstructorName("Expected", Dog)).toEqual(
				string.format("Expected: %s\n", EXPECTED_COLOR("Dog"))
			)
		end)

		it("prints constructor name (not)", function()
			jestExpect(Print.printExpectedConstructorNameNot("Expected", Dog)).toEqual(
				string.format("Expected: never %s\n", EXPECTED_COLOR("Dog"))
			)
		end)

		it("reports that tostring returns non-string", function()
			setmetatable(Dog, {
				__tostring = function(self)
					return 1
				end
			})

			jestExpect(Print.printReceivedConstructorName("Received", Dog)).toEqual("Received name is not a string\n")
		end)

		it("reports that tostring returns empty", function()
			setmetatable(Dog, {
				__tostring = function(self)
					return ""
				end
			})

			jestExpect(Print.printReceivedConstructorName("Received", Dog)).toEqual("Received name is an empty string\n")
		end)

		it("prints some entries of non-tostring class", function()
			setmetatable(Dog, {})
			Dog.fur = "brown"
			Dog.goodboy = true

			local result = Print.printReceivedConstructorName("Received", Dog)
			jestExpect(result).toContain("Received: [31m{")
			jestExpect(result).toContain('"fur": "brown"')
			jestExpect(result).toContain('"goodboy": true')
			jestExpect(result).toContain(" }")
		end)

		it("prints ... for excessive key value", function()
			setmetatable(Dog, {})
			Dog.leash = "blue"
			Dog.weight = 80
			Dog.height = 48
			Dog.charisma = "friendly"

			local result = Print.printReceivedConstructorName("Received", Dog)
			jestExpect(result).toContain("Received: [31m{")
			jestExpect(result).toContain('"leash": "blue"')
			jestExpect(result).toContain('"weight": 80')
			jestExpect(result).toContain('"height": 48')
			jestExpect(result).toContain(" ... ")
			jestExpect(result).toContain(" }")
		end)

		it("defaults to printing table address for massive key value pair", function()
			setmetatable(Dog, {})
			Dog.furotherwiseknownasapersonallyidentifyingattributeofamammal = "brown"

			local result = Print.printExpectedConstructorName("Expected", Dog)
			jestExpect(result).toContain("Expected: [32mtable: 0x")
		end)

		it("prints function names only", function()
			setmetatable(Dog, {})
			Dog.walk = function() end
			Dog.talk = function() end
			Dog.wagTail = function() end

			local result = Print.printExpectedConstructorName("Received", Dog)
			jestExpect(result).toContain("Received: [32m{")
			jestExpect(result).toContain('"walk"')
			jestExpect(result).toContain('"wagTail"')
			jestExpect(result).toContain('"talk')
			jestExpect(result).toContain(" }")
		end)

		describe("printReceivedConstructorNameNot", function()
			it("prints name for class with tostring", function()
				setmetatable(Dog, {
					__tostring = function(self)
						return "Doge"
					end
				})
			end)

			it('does not print name or "never"" for class with non-string tostring', function()
				setmetatable(Dog, {
					__tostring = function(self)
						return 1
					end
				})

				local result = Print.printExpectedConstructorNameNot("Received", Dog, {})
				jestExpect(result).toContain("Received name is not a string")
			end)

			it('does not print name or "never" for class with empty tostring', function()
				setmetatable(Dog, {
					__tostring = function(self)
						return ""
					end
				})

				local result = Print.printExpectedConstructorNameNot("Received", Dog, {})
				jestExpect(result).toContain("Received name is an empty string")
			end)

			it('does not print "never" for class with default table address as tostring', function()
				setmetatable(Dog, {})

				local result = Print.printExpectedConstructorNameNot("Received", Dog, {})
				jestExpect(result).toContain("Received: never [32mtable: 0x")

			end)

			it('prints table contents', function()
				setmetatable(Dog, {})
				-- Sanity check that once we give Dog some properties, it
				-- prints out the contents not the table address
				Dog.height = 50
				Dog.goodboy = true
				local result = Print.printExpectedConstructorNameNot("Received", Dog, {})
				jestExpect(result).toContain("Received: never [32m{")
				jestExpect(result).toContain('"height": 50')
				jestExpect(result).toContain('"goodboy": true')
				jestExpect(result).toContain(" }")
			end)
		end)
	end)
end