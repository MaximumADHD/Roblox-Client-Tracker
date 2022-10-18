--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/PossibleFragmentSpreadsRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local PossibleFragmentSpreadsRule = require(
		validationWorkspace.rules.PossibleFragmentSpreadsRule
	).PossibleFragmentSpreadsRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, PossibleFragmentSpreadsRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Possible fragment spreads", function()
		it("of the same object", function()
			expectValid(
				expect,
				[[
				fragment objectWithinObject on Dog { ...dogFragment }
				fragment dogFragment on Dog { barkVolume }
			]]
			)
		end)

		it("of the same object with inline fragment", function()
			expectValid(
				expect,
				[[
				fragment objectWithinObjectAnon on Dog { ... on Dog { barkVolume } }
			]]
			)
		end)

		it("object into an implemented interface", function()
			expectValid(
				expect,
				[[
				fragment objectWithinInterface on Pet { ...dogFragment }
				fragment dogFragment on Dog { barkVolume }
			]]
			)
		end)

		it("object into containing union", function()
			expectValid(
				expect,
				[[
				fragment objectWithinUnion on CatOrDog { ...dogFragment }
				fragment dogFragment on Dog { barkVolume }
			]]
			)
		end)

		it("union into contained object", function()
			expectValid(
				expect,
				[[
				fragment unionWithinObject on Dog { ...catOrDogFragment }
				fragment catOrDogFragment on CatOrDog { __typename }
			]]
			)
		end)

		it("union into overlapping interface", function()
			expectValid(
				expect,
				[[
				fragment unionWithinInterface on Pet { ...catOrDogFragment }
				fragment catOrDogFragment on CatOrDog { __typename }
			]]
			)
		end)

		it("union into overlapping union", function()
			expectValid(
				expect,
				[[
				fragment unionWithinUnion on DogOrHuman { ...catOrDogFragment }
				fragment catOrDogFragment on CatOrDog { __typename }
			]]
			)
		end)

		it("interface into implemented object", function()
			expectValid(
				expect,
				[[
				fragment interfaceWithinObject on Dog { ...petFragment }
				fragment petFragment on Pet { name }
			]]
			)
		end)

		it("interface into overlapping interface", function()
			expectValid(
				expect,
				[[
				fragment interfaceWithinInterface on Pet { ...beingFragment }
				fragment beingFragment on Being { name }
			]]
			)
		end)

		it("interface into overlapping interface in inline fragment", function()
			expectValid(
				expect,
				[[
				fragment interfaceWithinInterface on Pet { ... on Being { name } }
			]]
			)
		end)

		it("interface into overlapping union", function()
			expectValid(
				expect,
				[[
				fragment interfaceWithinUnion on CatOrDog { ...petFragment }
				fragment petFragment on Pet { name }
			]]
			)
		end)

		it("ignores incorrect type (caught by FragmentsOnCompositeTypesRule)", function()
			expectValid(
				expect,
				[[
				fragment petFragment on Pet { ...badInADifferentWay }
				fragment badInADifferentWay on String { name }
			]]
			)
		end)

		it("ignores unknown fragments (caught by KnownFragmentNamesRule)", function()
			expectValid(
				expect,
				[[
				fragment petFragment on Pet { ...UnknownFragment }
			]]
			)
		end)

		it("different object into object", function()
			expectErrors(
				expect,
				[[
      fragment invalidObjectWithinObject on Cat { ...dogFragment }
      fragment dogFragment on Dog { barkVolume }
			]]
			).toEqual({
				{
					message = 'Fragment "dogFragment" cannot be spread here as objects of type "Cat" can never be of type "Dog".',
					locations = { { line = 2, column = 51 } },
				},
			})
		end)

		it("different object into object in inline fragment", function()
			expectErrors(
				expect,
				[[
      fragment invalidObjectWithinObjectAnon on Cat {
        ... on Dog { barkVolume }
      }
			]]
			).toEqual({
				{
					message = 'Fragment cannot be spread here as objects of type "Cat" can never be of type "Dog".',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("object into not implementing interface", function()
			expectErrors(
				expect,
				[[
      fragment invalidObjectWithinInterface on Pet { ...humanFragment }
      fragment humanFragment on Human { pets { name } }
			]]
			).toEqual({
				{
					message = 'Fragment "humanFragment" cannot be spread here as objects of type "Pet" can never be of type "Human".',
					locations = { { line = 2, column = 54 } },
				},
			})
		end)

		it("object into not containing union", function()
			expectErrors(
				expect,
				[[
      fragment invalidObjectWithinUnion on CatOrDog { ...humanFragment }
      fragment humanFragment on Human { pets { name } }
			]]
			).toEqual({
				{
					message = 'Fragment "humanFragment" cannot be spread here as objects of type "CatOrDog" can never be of type "Human".',
					locations = { { line = 2, column = 55 } },
				},
			})
		end)

		it("union into not contained object", function()
			expectErrors(
				expect,
				[[
      fragment invalidUnionWithinObject on Human { ...catOrDogFragment }
      fragment catOrDogFragment on CatOrDog { __typename }
			]]
			).toEqual({
				{
					message = 'Fragment "catOrDogFragment" cannot be spread here as objects of type "Human" can never be of type "CatOrDog".',
					locations = { { line = 2, column = 52 } },
				},
			})
		end)

		it("union into non overlapping interface", function()
			expectErrors(
				expect,
				[[
      fragment invalidUnionWithinInterface on Pet { ...humanOrAlienFragment }
      fragment humanOrAlienFragment on HumanOrAlien { __typename }
			]]
			).toEqual({
				{
					message = 'Fragment "humanOrAlienFragment" cannot be spread here as objects of type "Pet" can never be of type "HumanOrAlien".',
					locations = { { line = 2, column = 53 } },
				},
			})
		end)

		it("union into non overlapping union", function()
			expectErrors(
				expect,
				[[
      fragment invalidUnionWithinUnion on CatOrDog { ...humanOrAlienFragment }
      fragment humanOrAlienFragment on HumanOrAlien { __typename }
			]]
			).toEqual({
				{
					message = 'Fragment "humanOrAlienFragment" cannot be spread here as objects of type "CatOrDog" can never be of type "HumanOrAlien".',
					locations = { { line = 2, column = 54 } },
				},
			})
		end)

		it("interface into non implementing object", function()
			expectErrors(
				expect,
				[[
      fragment invalidInterfaceWithinObject on Cat { ...intelligentFragment }
      fragment intelligentFragment on Intelligent { iq }
			]]
			).toEqual({
				{
					message = 'Fragment "intelligentFragment" cannot be spread here as objects of type "Cat" can never be of type "Intelligent".',
					locations = { { line = 2, column = 54 } },
				},
			})
		end)

		it("interface into non overlapping interface", function()
			expectErrors(
				expect,
				[[
      fragment invalidInterfaceWithinInterface on Pet {
        ...intelligentFragment
      }
      fragment intelligentFragment on Intelligent { iq }
			]]
			).toEqual({
				{
					message = 'Fragment "intelligentFragment" cannot be spread here as objects of type "Pet" can never be of type "Intelligent".',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("interface into non overlapping interface in inline fragment", function()
			expectErrors(
				expect,
				[[
      fragment invalidInterfaceWithinInterfaceAnon on Pet {
        ...on Intelligent { iq }
      }
			]]
			).toEqual({
				{
					message = 'Fragment cannot be spread here as objects of type "Pet" can never be of type "Intelligent".',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("interface into non overlapping union", function()
			expectErrors(
				expect,
				[[
      fragment invalidInterfaceWithinUnion on HumanOrAlien { ...petFragment }
      fragment petFragment on Pet { name }
			]]
			).toEqual({
				{
					message = 'Fragment "petFragment" cannot be spread here as objects of type "HumanOrAlien" can never be of type "Pet".',
					locations = { { line = 2, column = 62 } },
				},
			})
		end)
	end)
end
