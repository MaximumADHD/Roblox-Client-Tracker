--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/01bcc7d9be982226bcf56b8f983f38fd89dced1b/src/validation/__tests__/NoDeprecatedCustomRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local NoDeprecatedCustomRule =
		require(
			validationWorkspace.rules.custom.NoDeprecatedCustomRule
		).NoDeprecatedCustomRule
	local harness = require(script.Parent.harness)
	local expectValidationErrorsWithSchema = harness.expectValidationErrorsWithSchema

	local function buildAssertion(sdlStr: string)
		local schema = buildSchema(sdlStr)

		local function expectErrors(expect_, queryStr: string)
			-- ROBLOX deviation: we append a new line at the begining of the
			-- query string because of how Lua multiline strings works (it does
			-- take the new line if it's the first character of the string)
			return expectValidationErrorsWithSchema(
				expect_,
				schema,
				NoDeprecatedCustomRule,
				"\n" .. queryStr
			)
		end

		local function expectValid(expect_, queryStr: string)
			expectErrors(expect_, queryStr).toEqual({})
		end

		return {
			expectErrors = expectErrors,
			expectValid = expectValid,
		}
	end

	describe("Validate: no deprecated", function()
		describe("no deprecated fields", function()
			local assertion = buildAssertion([[
				type Query {
					normalField: String
					deprecatedField: String @deprecated(reason: "Some field reason.")
				}
			]])
			local expectValid = assertion.expectErrors
			local expectErrors = assertion.expectErrors

			it("ignores fields that are not deprecated", function()
				expectValid(
					expect,
					[[
					{
						normalField
					}
				]]
				)
			end)

			it("ignores unknown fields", function()
				expectValid(
					expect,
					[[
					{
						unknownField
					}

					fragment UnknownFragment on UnknownType {
						deprecatedField
					}
				]]
				)
			end)

			it("reports error when a deprecated field is selected", function()
				local message = "The field Query.deprecatedField is deprecated. Some field reason."

				expectErrors(
					expect,
					[[
        {
          deprecatedField
        }

        fragment QueryFragment on Query {
          deprecatedField
        }
				]]
				).toEqual({
					{
						message = message,
						locations = { { line = 3, column = 11 } },
					},
					{
						message = message,
						locations = { { line = 7, column = 11 } },
					},
				})
			end)
		end)

		describe("no deprecated arguments on fields", function()
			local assertion = buildAssertion([[
				type Query {
					someField(
						normalArg: String,
						deprecatedArg: String @deprecated(reason: "Some arg reason."),
					): String
				}
			]])
			local expectValid = assertion.expectErrors
			local expectErrors = assertion.expectErrors

			it("ignores arguments that are not deprecated", function()
				expectValid(
					expect,
					[[
					{
						normalField(normalArg: "")
					}
				]]
				)
			end)

			it("ignores unknown arguments", function()
				expectValid(
					expect,
					[[
					{
						someField(unknownArg: "")
						unknownField(deprecatedArg: "")
					}
				]]
				)
			end)

			it("reports error when a deprecated argument is used", function()
				expectErrors(
					expect,
					[[
        {
          someField(deprecatedArg: "")
        }
				]]
				).toEqual({
					{
						message = 'Field "Query.someField" argument "deprecatedArg" is deprecated. Some arg reason.',
						locations = { { line = 3, column = 21 } },
					},
				})
			end)
		end)

		describe("no deprecated arguments on directives", function()
			local assertion = buildAssertion([[
				type Query {
					someField: String
				}

				directive @someDirective(
					normalArg: String,
					deprecatedArg: String @deprecated(reason: "Some arg reason."),
				) on FIELD
			]])
			local expectValid = assertion.expectErrors
			local expectErrors = assertion.expectErrors

			it("ignores arguments that are not deprecated", function()
				expectValid(
					expect,
					[[
					{
						someField @someDirective(normalArg: "")
					}
				]]
				)
			end)

			it("ignores unknown arguments", function()
				expectValid(
					expect,
					[[
					{
						someField @someDirective(unknownArg: "")
						someField @unknownDirective(deprecatedArg: "")
					}
				]]
				)
			end)

			it("reports error when a deprecated argument is used", function()
				expectErrors(
					expect,
					[[
        {
          someField @someDirective(deprecatedArg: "")
        }
				]]
				).toEqual({
					{
						message = 'Directive "@someDirective" argument "deprecatedArg" is deprecated. Some arg reason.',
						locations = { { line = 3, column = 36 } },
					},
				})
			end)
		end)

		describe("no deprecated input fields", function()
			local assertion = buildAssertion([[
				input InputType {
					normalField: String
					deprecatedField: String @deprecated(reason: "Some input field reason.")
				}

				type Query {
					someField(someArg: InputType): String
				}

				directive @someDirective(someArg: InputType) on FIELD
			]])
			local expectValid = assertion.expectErrors
			local expectErrors = assertion.expectErrors

			it("ignores input fields that are not deprecated", function()
				expectValid(
					expect,
					[[
					{
						someField(
							someArg: { normalField: "" }
						) @someDirective(someArg: { normalField: "" })
					}
				]]
				)
			end)

			it("ignores unknown input fields", function()
				expectValid(
					expect,
					[[
					{
						someField(
							someArg: { unknownField: "" }
						)

						someField(
							unknownArg: { unknownField: "" }
						)

						unknownField(
							unknownArg: { unknownField: "" }
						)
					}
				]]
				)
			end)

			it("reports error when a deprecated input field is used", function()
				local message =
					"The input field InputType.deprecatedField is deprecated. Some input field reason."

				expectErrors(
					expect,
					[[
        {
          someField(
            someArg: { deprecatedField: "" }
          ) @someDirective(someArg: { deprecatedField: "" })
        }
				]]
				).toEqual({
					{
						message = message,
						locations = { { line = 4, column = 24 } },
					},
					{
						message = message,
						locations = { { line = 5, column = 39 } },
					},
				})
			end)
		end)

		describe("no deprecated enum values", function()
			local assertion = buildAssertion([[
				enum EnumType {
					NORMAL_VALUE
					DEPRECATED_VALUE @deprecated(reason: "Some enum reason.")
				}

				type Query {
					someField(enumArg: EnumType): String
				}
			]])
			local expectValid = assertion.expectErrors
			local expectErrors = assertion.expectErrors

			it("ignores enum values that are not deprecated", function()
				expectValid(
					expect,
					[[
					{
						normalField(enumArg: NORMAL_VALUE)
					}
				]]
				)
			end)

			it("ignores unknown enum values", function()
				expectValid(
					expect,
					[[
					query (
						$unknownValue: EnumType = UNKNOWN_VALUE
						$unknownType: UnknownType = UNKNOWN_VALUE
					) {
						someField(enumArg: UNKNOWN_VALUE)
						someField(unknownArg: UNKNOWN_VALUE)
						unknownField(unknownArg: UNKNOWN_VALUE)
					}

					fragment SomeFragment on Query {
						someField(enumArg: UNKNOWN_VALUE)
					}
				]]
				)
			end)

			it("reports error when a deprecated enum value is used", function()
				local message =
					'The enum value "EnumType.DEPRECATED_VALUE" is deprecated. Some enum reason.'

				expectErrors(
					expect,
					[[
        query (
          $variable: EnumType = DEPRECATED_VALUE
        ) {
          someField(enumArg: DEPRECATED_VALUE)
        }
				]]
				).toEqual({
					{
						message = message,
						locations = { { line = 3, column = 33 } },
					},
					{
						message = message,
						locations = { { line = 5, column = 30 } },
					},
				})
			end)
		end)
	end)
end
