--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1611bbb08a88f734e9490b14cfe6afea11a838e0/src/validation/__tests__/validation-test.js
local validationWorkspace = script.Parent.Parent
local srcWorkspace = validationWorkspace.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error

return function()
	local GraphQLError = require(srcWorkspace.error.GraphQLError).GraphQLError
	local parser = require(srcWorkspace.language.parser)
	local parse = parser.parse
	local utilities = srcWorkspace.utilities
	local TypeInfo = require(utilities.TypeInfo).TypeInfo
	local buildASTSchema = require(utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local validate = require(validationWorkspace.validate).validate
	local harness = require(script.Parent.harness)
	local testSchema = harness.testSchema

	describe("Validate: Supports full validation", function()
		it("rejects invalid documents", function()
			expect(function()
				return validate(testSchema, nil)
			end).to.throw("Must provide document.")
		end)

		it("validates queries", function()
			local expect: any = expect
			local doc = parse([[
				query {
					catOrDog {
						... on Cat {
							furColor
						}
						... on Dog {
							isHouseTrained
						}
					}
				}
			]])

			local errors = validate(testSchema, doc)
			expect(errors).toEqual({})
		end)

		it("detects unknown fields", function()
			local expect: any = expect
			local doc = parse([[

      {
        unknown
      }
			]])

			local errors = validate(testSchema, doc)
			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(errors[1]).toObjectContain({
				locations = { { line = 3, column = 9 } },
				message = 'Cannot query field "unknown" on type "QueryRoot".',
			})
		end)

		-- ROBLOX deviation: this is deprecated upstream, we don't support it
		-- // NOTE: experimental
		itSKIP("validates using a custom TypeInfo", function()
			local expect: any = expect
			-- // This TypeInfo will never return a valid field.
			local typeInfo = TypeInfo.new(testSchema, function()
				return nil
			end)

			local doc = parse([[

				query {
					catOrDog {
						... on Cat {
							furColor
						}
						... on Dog {
							isHouseTrained
						}
					}
				}
			]])

			local errors = validate(testSchema, doc, nil, typeInfo)
			local errorMessages = Array.map(errors, function(err)
				return err.message
			end)

			expect(errorMessages).toEqual({
				'Cannot query field "catOrDog" on type "QueryRoot". Did you mean "catOrDog"?',
				'Cannot query field "furColor" on type "Cat". Did you mean "furColor"?',
				'Cannot query field "isHouseTrained" on type "Dog". Did you mean "isHouseTrained"?',
			})
		end)

		it("validates using a custom rule", function()
			local expect: any = expect
			local schema = buildSchema([[

      directive @custom(arg: String) on FIELD

      type Query {
        foo: String
      }
    ]])
			local doc = parse([[

      query {
        name @custom
      }
    ]])

			local function customRule(context)
				return {
					Directive = function(_self, node)
						local directiveDef = context:getDirective()
						local error_ = GraphQLError.new(
							"Reporting directive: " .. tostring(directiveDef),
							node
						)
						context:reportError(error_)
					end,
				}
			end

			local errors = validate(schema, doc, { customRule })
			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(errors[1]).toObjectContain({
				message = "Reporting directive: @custom",
				locations = { { line = 3, column = 14 } },
			})
		end)
	end)

	describe("Validate: Limit maximum number of validation errors", function()
		local query = [[
			{
				firstUnknownField
				secondUnknownField
				thirdUnknownField
			}
		]]
		local doc = parse(query, { noLocation = true })

		local function validateDocument(options)
			return validate(testSchema, doc, nil, options)
		end

		local function invalidFieldError(fieldName: string)
			return {
				message = ('Cannot query field "%s" on type "QueryRoot".'):format(fieldName),
			}
		end

		it("when maxError is equal number of errors", function()
			local expect: any = expect
			local errors = validateDocument({ maxErrors = 3 })
			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(errors[1]).toObjectContain(invalidFieldError("firstUnknownField"))
			expect(errors[2]).toObjectContain(invalidFieldError("secondUnknownField"))
			expect(errors[3]).toObjectContain(invalidFieldError("thirdUnknownField"))
		end)

		it("when maxErrors is less than number of errors", function()
			local expect: any = expect
			local errors = validateDocument({ maxErrors = 2 })
			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(errors[1]).toObjectContain(invalidFieldError("firstUnknownField"))
			expect(errors[2]).toObjectContain(invalidFieldError("secondUnknownField"))
			expect(errors[3]).toObjectContain({
				message = "Too many validation errors, error limit reached. Validation aborted.",
			})
		end)

		it("passthrough exceptions from rules", function()
			-- ROBLOX TODO: recast in order to use custom matchers
			local expect: any = expect
			local function customRule()
				return {
					Field = function()
						error(Error.new("Error from custom rule!"))
					end,
				}
			end
			expect(function()
				return validate(testSchema, doc, { customRule }, { maxErrors = 1 })
			end).toThrow("Error from custom rule!")
		end)
	end)
end
