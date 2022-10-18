--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/FieldsOnCorrectTypeRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local parser = require(root.language.parser)
	local parse = parser.parse
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local validate = require(validationWorkspace.validate).validate
	local FieldsOnCorrectTypeRule =
		require(validationWorkspace.rules.FieldsOnCorrectTypeRule).FieldsOnCorrectTypeRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, FieldsOnCorrectTypeRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Fields on correct type", function()
		it("Object field selection", function()
			expectValid(
				expect,
				[[
				fragment objectFieldSelection on Dog {
					__typename
					name
				}
			]]
			)
		end)

		it("Aliased object field selection", function()
			expectValid(
				expect,
				[[
				fragment aliasedObjectFieldSelection on Dog {
					tn : __typename
					otherName : name
				}
			]]
			)
		end)

		it("Interface field selection", function()
			expectValid(
				expect,
				[[
				fragment interfaceFieldSelection on Pet {
					__typename
					name
				}
			]]
			)
		end)

		it("Aliased interface field selection", function()
			expectValid(
				expect,
				[[
				fragment interfaceFieldSelection on Pet {
					otherName : name
				}
			]]
			)
		end)

		it("Lying alias selection", function()
			expectValid(
				expect,
				[[
				fragment lyingAliasSelection on Dog {
					name : nickname
				}
			]]
			)
		end)

		it("Ignores fields on unknown type", function()
			expectValid(
				expect,
				[[
				fragment unknownSelection on UnknownType {
					unknownField
				}
			]]
			)
		end)

		it("reports errors when type is known again", function()
			expectErrors(
				expect,
				[[
      fragment typeKnownAgain on Pet {
        unknown_pet_field {
          ... on Cat {
            unknown_cat_field
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "unknown_pet_field" on type "Pet".',
					locations = { { line = 3, column = 9 } },
				},
				{
					message = 'Cannot query field "unknown_cat_field" on type "Cat".',
					locations = { { line = 5, column = 13 } },
				},
			})
		end)

		it("Field not defined on fragment", function()
			expectErrors(
				expect,
				[[
      fragment fieldNotDefined on Dog {
        meowVolume
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "meowVolume" on type "Dog". Did you mean "barkVolume"?',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Ignores deeply unknown field", function()
			expectErrors(
				expect,
				[[
      fragment deepFieldNotDefined on Dog {
        unknown_field {
          deeper_unknown_field
        }
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "unknown_field" on type "Dog".',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Sub-field not defined", function()
			expectErrors(
				expect,
				[[
      fragment subFieldNotDefined on Human {
        pets {
          unknown_field
        }
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "unknown_field" on type "Pet".',
					locations = { { line = 4, column = 11 } },
				},
			})
		end)

		it("Field not defined on inline fragment", function()
			expectErrors(
				expect,
				[[
      fragment fieldNotDefined on Pet {
        ... on Dog {
          meowVolume
        }
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "meowVolume" on type "Dog". Did you mean "barkVolume"?',
					locations = { { line = 4, column = 11 } },
				},
			})
		end)

		it("Aliased field target not defined", function()
			expectErrors(
				expect,
				[[
      fragment aliasedFieldTargetNotDefined on Dog {
        volume : mooVolume
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "mooVolume" on type "Dog". Did you mean "barkVolume"?',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Aliased lying field target not defined", function()
			expectErrors(
				expect,
				[[
      fragment aliasedLyingFieldTargetNotDefined on Dog {
        barkVolume : kawVolume
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "kawVolume" on type "Dog". Did you mean "barkVolume"?',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Not defined on interface", function()
			expectErrors(
				expect,
				[[
      fragment notDefinedOnInterface on Pet {
        tailLength
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "tailLength" on type "Pet".',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Defined on implementors but not on interface", function()
			expectErrors(
				expect,
				[[
      fragment definedOnImplementorsButNotInterface on Pet {
        nickname
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "nickname" on type "Pet". Did you mean to use an inline fragment on "Cat" or "Dog"?',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Meta field selection on union", function()
			expectValid(
				expect,
				[[
				fragment directFieldSelectionOnUnion on CatOrDog {
					__typename
				}
			]]
			)
		end)

		it("Direct field selection on union", function()
			expectErrors(
				expect,
				[[
      fragment directFieldSelectionOnUnion on CatOrDog {
        directField
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "directField" on type "CatOrDog".',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("Defined on implementors queried on union", function()
			expectErrors(
				expect,
				[[
      fragment definedOnImplementorsQueriedOnUnion on CatOrDog {
        name
      }
			]]
			).toEqual({
				{
					message = 'Cannot query field "name" on type "CatOrDog". Did you mean to use an inline fragment on "Being", "Pet", "Canine", "Cat", or "Dog"?',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("valid field in inline fragment", function()
			expectValid(
				expect,
				[[
				fragment objectFieldSelection on Pet {
					... on Dog {
					name
					}
					... {
					name
					}
				}
			]]
			)
		end)

		describe("Fields on correct type error message", function()
			local function expectErrorMessage(expect_, schema, queryStr: string)
				local errors = validate(schema, parse(queryStr), { FieldsOnCorrectTypeRule })

				expect_(#errors).to.equal(1)

				return expect_(errors[1].message)
			end

			it("Works with no suggestions", function()
				local schema = buildSchema([[

					type T {
					fieldWithVeryLongNameThatWillNeverBeSuggested: String
					}
					type Query { t: T }
				]])

				expectErrorMessage(expect, schema, "{ t { f } }").to.equal(
					'Cannot query field "f" on type "T".'
				)
			end)

			it("Works with no small numbers of type suggestions", function()
				local schema = buildSchema([[
					union T = A | B
					type Query { t: T }

					type A { f: String }
					type B { f: String }
				]])

				expectErrorMessage(expect, schema, "{ t { f } }").to.equal(
					'Cannot query field "f" on type "T". Did you mean to use an inline fragment on "A" or "B"?'
				)
			end)

			it("Works with no small numbers of field suggestions", function()
				local schema = buildSchema([[
					type T {
					y: String
					z: String
					}
					type Query { t: T }
				]])

				expectErrorMessage(expect, schema, "{ t { f } }").to.equal(
					'Cannot query field "f" on type "T". Did you mean "y" or "z"?'
				)
			end)

			it("Only shows one set of suggestions at a time, preferring types", function()
				local schema = buildSchema([[
					interface T {
						y: String
						z: String
					}
					type Query { t: T }

					type A implements T {
						f: String
						y: String
						z: String
					}
					type B implements T {
						f: String
						y: String
						z: String
					}
				]])

				expectErrorMessage(expect, schema, "{ t { f } }").to.equal(
					'Cannot query field "f" on type "T". Did you mean to use an inline fragment on "A" or "B"?'
				)
			end)

			it("Sort type suggestions based on inheritance order", function()
				local schema = buildSchema([[
					interface T { bar: String }
					type Query { t: T }

					interface Z implements T {
						foo: String
						bar: String
					}

					interface Y implements Z & T {
						foo: String
						bar: String
					}

					type X implements Y & Z & T {
						foo: String
						bar: String
					}
				]])

				expectErrorMessage(expect, schema, "{ t { foo } }").to.equal(
					'Cannot query field "foo" on type "T". Did you mean to use an inline fragment on "Z", "Y", or "X"?'
				)
			end)

			it("Limits lots of type suggestions", function()
				local schema = buildSchema([[
					union T = A | B | C | D | E | F
					type Query { t: T }

					type A { f: String }
					type B { f: String }
					type C { f: String }
					type D { f: String }
					type E { f: String }
					type F { f: String }
				]])

				expectErrorMessage(expect, schema, "{ t { f } }").to.equal(
					'Cannot query field "f" on type "T". Did you mean to use an inline fragment on "A", "B", "C", "D", or "E"?'
				)
			end)

			it("Limits lots of field suggestions", function()
				local schema = buildSchema([[
					type T {
						u: String
						v: String
						w: String
						x: String
						y: String
						z: String
					}
					type Query { t: T }
				]])

				expectErrorMessage(expect, schema, "{ t { f } }").to.equal(
					'Cannot query field "f" on type "T". Did you mean "u", "v", "w", "x", or "y"?'
				)
			end)
		end)
	end)
end
