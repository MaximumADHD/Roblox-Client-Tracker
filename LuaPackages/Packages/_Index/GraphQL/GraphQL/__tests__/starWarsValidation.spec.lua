--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1611bbb08a88f734e9490b14cfe6afea11a838e0/src/__tests__/starWarsValidation-test.js
local rootWorkspace = script.Parent.Parent
local parse = require(rootWorkspace.language.parser).parse
local Source = require(rootWorkspace.language.source).Source

local validate = require(rootWorkspace.validation.validate).validate

local StarWarsSchema = require(script.Parent.starWarsSchema).StarWarsSchema

--[[*
 * Helper function to test a query and the expected response.
 ]]
local function validationErrors(query: string)
	local source = Source.new(query, "StarWars.graphql")
	local ast = parse(source)
	return validate(StarWarsSchema, ast)
end

return function()
	describe("Star Wars Validation Tests", function()
		describe("Basic Queries", function()
			it("Validates a complex but valid query", function()
				local query = [[
        query NestedQueryWithFragment {
          hero {
            ...NameAndAppearances
            friends {
              ...NameAndAppearances
              friends {
                ...NameAndAppearances
              }
            }
          }
        }

        fragment NameAndAppearances on Character {
          name
          appearsIn
        }
      ]]
				expect(#validationErrors(query)).to.equal(0)
			end)

			it("Notes that non-existent fields are invalid", function()
				local query = [[
        query HeroSpaceshipQuery {
          hero {
            favoriteSpaceship
          }
        }
      ]]
				expect(#validationErrors(query)).never.to.equal(0)
			end)

			it("Requires fields on objects", function()
				local query = [[
        query HeroNoFieldsQuery {
          hero
        }
      ]]
				expect(#validationErrors(query)).never.to.equal(0)
			end)

			it("Disallows fields on scalars", function()
				local query = [[
        query HeroFieldsOnScalarQuery {
          hero {
            name {
              firstCharacterOfName
            }
          }
        }
      ]]
				expect(#validationErrors(query)).never.to.equal(0)
			end)

			it("Disallows object fields on interfaces", function()
				local query = [[
        query DroidFieldOnCharacter {
          hero {
            name
            primaryFunction
          }
        }
      ]]
				expect(#validationErrors(query)).never.to.equal(0)
			end)

			it("Allows object fields in fragments", function()
				local query = [[
        query DroidFieldInFragment {
          hero {
            name
            ...DroidFields
          }
        }

        fragment DroidFields on Droid {
          primaryFunction
        }
      ]]
				expect(#validationErrors(query)).to.equal(0)
			end)

			it("Allows object fields in inline fragments", function()
				local query = [[
        query DroidFieldInFragment {
          hero {
            name
            ... on Droid {
              primaryFunction
            }
          }
        }
      ]]
				expect(#validationErrors(query)).to.equal(0)
			end)
		end)
	end)
end
