--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/01bcc7d9be982226bcf56b8f983f38fd89dced1b/src/type/__tests__/introspection-test.js

return function()
	local root = script.Parent.Parent.Parent
	local jsutils = root.jsutils
	local invariant = require(jsutils.invariant).invariant
	local utilities = root.utilities
	local buildSchema = require(utilities.buildASTSchema).buildSchema
	local getIntrospectionQuery = require(utilities.getIntrospectionQuery).getIntrospectionQuery
	local graphql = require(root.graphql)
	local graphqlSync = graphql.graphqlSync

	describe("Introspection", function()
		it("executes an introspection query", function()
			local schema = buildSchema([[
      type SomeObject {
        someField: String
      }

      schema {
        query: SomeObject
      }
    ]])

			local source = getIntrospectionQuery({
				descriptions = false,
				specifiedByUrl = true,
				directiveIsRepeatable = true,
			})

			local result = graphqlSync({ schema = schema, source = source })

			expect(result).toObjectContain({
				data = {
					__schema = {
						queryType = {
							name = "SomeObject",
						},
						mutationType = nil,
						subscriptionType = nil,
						types = {
							{
								kind = "OBJECT",
								name = "SomeObject",
								specifiedByUrl = nil,
								fields = {
									{
										name = "someField",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "SCALAR",
								name = "String",
								specifiedByUrl = nil,
								fields = nil,
								inputFields = nil,
								interfaces = nil,
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "SCALAR",
								name = "Boolean",
								specifiedByUrl = nil,
								fields = nil,
								inputFields = nil,
								interfaces = nil,
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "OBJECT",
								name = "__Schema",
								specifiedByUrl = nil,
								fields = {
									{
										name = "description",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "types",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "LIST",
												name = nil,
												ofType = {
													kind = "NON_NULL",
													name = nil,
													ofType = {
														kind = "OBJECT",
														name = "__Type",
														ofType = nil,
													},
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "queryType",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "OBJECT",
												name = "__Type",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "mutationType",
										args = {},
										type = {
											kind = "OBJECT",
											name = "__Type",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "subscriptionType",
										args = {},
										type = {
											kind = "OBJECT",
											name = "__Type",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "directives",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "LIST",
												name = nil,
												ofType = {
													kind = "NON_NULL",
													name = nil,
													ofType = {
														kind = "OBJECT",
														name = "__Directive",
														ofType = nil,
													},
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "OBJECT",
								name = "__Type",
								specifiedByUrl = nil,
								fields = {
									{
										name = "kind",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "ENUM",
												name = "__TypeKind",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "name",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "description",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "specifiedByUrl",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "fields",
										args = {
											{
												name = "includeDeprecated",
												type = {
													kind = "SCALAR",
													name = "Boolean",
													ofType = nil,
												},
												defaultValue = "false",
											},
										},
										type = {
											kind = "LIST",
											name = nil,
											ofType = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "OBJECT",
													name = "__Field",
													ofType = nil,
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "interfaces",
										args = {},
										type = {
											kind = "LIST",
											name = nil,
											ofType = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "OBJECT",
													name = "__Type",
													ofType = nil,
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "possibleTypes",
										args = {},
										type = {
											kind = "LIST",
											name = nil,
											ofType = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "OBJECT",
													name = "__Type",
													ofType = nil,
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "enumValues",
										args = {
											{
												name = "includeDeprecated",
												type = {
													kind = "SCALAR",
													name = "Boolean",
													ofType = nil,
												},
												defaultValue = "false",
											},
										},
										type = {
											kind = "LIST",
											name = nil,
											ofType = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "OBJECT",
													name = "__EnumValue",
													ofType = nil,
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "inputFields",
										args = {
											{
												name = "includeDeprecated",
												type = {
													kind = "SCALAR",
													name = "Boolean",
													ofType = nil,
												},
												defaultValue = "false",
											},
										},
										type = {
											kind = "LIST",
											name = nil,
											ofType = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "OBJECT",
													name = "__InputValue",
													ofType = nil,
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "ofType",
										args = {},
										type = {
											kind = "OBJECT",
											name = "__Type",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "ENUM",
								name = "__TypeKind",
								specifiedByUrl = nil,
								fields = nil,
								inputFields = nil,
								interfaces = nil,
								enumValues = {
									{
										name = "SCALAR",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "OBJECT",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "INTERFACE",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "UNION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "ENUM",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "INPUT_OBJECT",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "LIST",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "NON_NULL",
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								possibleTypes = nil,
							},
							{
								kind = "OBJECT",
								name = "__Field",
								specifiedByUrl = nil,
								fields = {
									{
										name = "name",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "String",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "description",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "args",
										args = {
											{
												name = "includeDeprecated",
												type = {
													kind = "SCALAR",
													name = "Boolean",
													ofType = nil,
												},
												defaultValue = "false",
											},
										},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "LIST",
												name = nil,
												ofType = {
													kind = "NON_NULL",
													name = nil,
													ofType = {
														kind = "OBJECT",
														name = "__InputValue",
														ofType = nil,
													},
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "type",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "OBJECT",
												name = "__Type",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "isDeprecated",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "Boolean",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "deprecationReason",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "OBJECT",
								name = "__InputValue",
								specifiedByUrl = nil,
								fields = {
									{
										name = "name",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "String",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "description",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "type",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "OBJECT",
												name = "__Type",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "defaultValue",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "isDeprecated",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "Boolean",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "deprecationReason",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "OBJECT",
								name = "__EnumValue",
								specifiedByUrl = nil,
								fields = {
									{
										name = "name",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "String",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "description",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "isDeprecated",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "Boolean",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "deprecationReason",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "OBJECT",
								name = "__Directive",
								specifiedByUrl = nil,
								fields = {
									{
										name = "name",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "String",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "description",
										args = {},
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "isRepeatable",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "Boolean",
												ofType = nil,
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "locations",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "LIST",
												name = nil,
												ofType = {
													kind = "NON_NULL",
													name = nil,
													ofType = {
														kind = "ENUM",
														name = "__DirectiveLocation",
														ofType = nil,
													},
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "args",
										args = {},
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "LIST",
												name = nil,
												ofType = {
													kind = "NON_NULL",
													name = nil,
													ofType = {
														kind = "OBJECT",
														name = "__InputValue",
														ofType = nil,
													},
												},
											},
										},
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								inputFields = nil,
								interfaces = {},
								enumValues = nil,
								possibleTypes = nil,
							},
							{
								kind = "ENUM",
								name = "__DirectiveLocation",
								specifiedByUrl = nil,
								fields = nil,
								inputFields = nil,
								interfaces = nil,
								enumValues = {
									{
										name = "QUERY",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "MUTATION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "SUBSCRIPTION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "FIELD",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "FRAGMENT_DEFINITION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "FRAGMENT_SPREAD",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "INLINE_FRAGMENT",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "VARIABLE_DEFINITION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "SCHEMA",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "SCALAR",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "OBJECT",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "FIELD_DEFINITION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "ARGUMENT_DEFINITION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "INTERFACE",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "UNION",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "ENUM",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "ENUM_VALUE",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "INPUT_OBJECT",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "INPUT_FIELD_DEFINITION",
										isDeprecated = false,
										deprecationReason = nil,
									},
								},
								possibleTypes = nil,
							},
						},
						directives = {
							{
								name = "include",
								isRepeatable = false,
								locations = {
									"FIELD",
									"FRAGMENT_SPREAD",
									"INLINE_FRAGMENT",
								},
								args = {
									{
										defaultValue = nil,
										name = "if",
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "Boolean",
												ofType = nil,
											},
										},
									},
								},
							},
							{
								name = "skip",
								isRepeatable = false,
								locations = {
									"FIELD",
									"FRAGMENT_SPREAD",
									"INLINE_FRAGMENT",
								},
								args = {
									{
										defaultValue = nil,
										name = "if",
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "Boolean",
												ofType = nil,
											},
										},
									},
								},
							},
							{
								name = "deprecated",
								isRepeatable = false,
								locations = {
									"FIELD_DEFINITION",
									"ARGUMENT_DEFINITION",
									"INPUT_FIELD_DEFINITION",
									"ENUM_VALUE",
								},
								args = {
									{
										defaultValue = '"No longer supported"',
										name = "reason",
										type = {
											kind = "SCALAR",
											name = "String",
											ofType = nil,
										},
									},
								},
							},
							{
								name = "specifiedBy",
								isRepeatable = false,
								locations = {
									"SCALAR",
								},
								args = {
									{
										defaultValue = nil,
										name = "url",
										type = {
											kind = "NON_NULL",
											name = nil,
											ofType = {
												kind = "SCALAR",
												name = "String",
												ofType = nil,
											},
										},
									},
								},
							},
						},
					},
				},
			})
		end)

		it("introspects on input object", function()
			local schema = buildSchema([[
				input SomeInputObject {
					a: String = "tes\t de\fault"
					b: [String]
					c: String = null
				}

				type Query {
					someField(someArg: SomeInputObject): String
				}
			]])
			local source = [[

				{
					__type(name: "SomeInputObject") {
						kind
						name
						inputFields {
							name
							type { ...TypeRef }
							defaultValue
						}
					}
				}

				fragment TypeRef on __Type {
					kind
					name
					ofType {
						kind
						name
						ofType {
							kind
							name
							ofType {
							kind
							name
							}
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toObjectContain({
				data = {
					__type = {
						kind = "INPUT_OBJECT",
						name = "SomeInputObject",
						inputFields = {
							{
								name = "a",
								type = {
									kind = "SCALAR",
									name = "String",
									ofType = nil,
								},
								defaultValue = '"tes\\t de\\fault"',
							},
							{
								name = "b",
								type = {
									kind = "LIST",
									name = nil,
									ofType = {
										kind = "SCALAR",
										name = "String",
										ofType = nil,
									},
								},
								defaultValue = nil,
							},
							{
								name = "c",
								type = {
									kind = "SCALAR",
									name = "String",
									ofType = nil,
								},
								defaultValue = "null",
							},
						},
					},
				},
			})
		end)

		it("supports the __type root field", function()
			local schema = buildSchema([[
		type Query {
			someField: String
		}
			]])
			local source = [[
		{
			__type(name: "Query") {
			name
			}
		}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toEqual({
				data = {
					__type = { name = "Query" },
				},
			})
		end)

		it("identifies deprecated fields", function()
			local schema = buildSchema([[
				type Query {
					nonDeprecated: String
					deprecated: String @deprecated(reason: "Removed in 1.0")
					deprecatedWithEmptyReason: String @deprecated(reason: "")
				}
			]])
			local source = [[

				{
					__type(name: "Query") {
						fields(includeDeprecated: true) {
							name
							isDeprecated,
							deprecationReason
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toObjectContain({
				data = {
					__type = {
						fields = {
							{
								name = "nonDeprecated",
								isDeprecated = false,
								deprecationReason = nil,
							},
							{
								name = "deprecated",
								isDeprecated = true,
								deprecationReason = "Removed in 1.0",
							},
							{
								name = "deprecatedWithEmptyReason",
								isDeprecated = true,
								deprecationReason = "",
							},
						},
					},
				},
			})
		end)

		it("respects the includeDeprecated parameter for fields", function()
			local schema = buildSchema([[
				type Query {
					nonDeprecated: String
					deprecated: String @deprecated(reason: "Removed in 1.0")
				}
			]])
			local source = [[
				{
					__type(name: "Query") {
						trueFields: fields(includeDeprecated: true) {
							name
						}
						falseFields: fields(includeDeprecated: false) {
							name
						}
						omittedFields: fields {
							name
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toEqual({
				data = {
					__type = {
						trueFields = { { name = "nonDeprecated" }, { name = "deprecated" } },
						falseFields = { { name = "nonDeprecated" } },
						omittedFields = { { name = "nonDeprecated" } },
					},
				},
			})
		end)

		it("identifies deprecated args", function()
			local schema = buildSchema([[
				type Query {
					someField(
						nonDeprecated: String
						deprecated: String @deprecated(reason: "Removed in 1.0")
						deprecatedWithEmptyReason: String @deprecated(reason: "")
					): String
				}
			]])
			local source = [[

				{
					__type(name: "Query") {
						fields {
							args(includeDeprecated: true) {
								name
								isDeprecated,
								deprecationReason
							}
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toObjectContain({
				data = {
					__type = {
						fields = {
							{
								args = {
									{
										name = "nonDeprecated",
										isDeprecated = false,
										deprecationReason = nil,
									},
									{
										name = "deprecated",
										isDeprecated = true,
										deprecationReason = "Removed in 1.0",
									},
									{
										name = "deprecatedWithEmptyReason",
										isDeprecated = true,
										deprecationReason = "",
									},
								},
							},
						},
					},
				},
			})
		end)

		it("respects the includeDeprecated parameter for args", function()
			local schema = buildSchema([[
				type Query {
					someField(
						nonDeprecated: String
						deprecated: String @deprecated(reason: "Removed in 1.0")
					): String
				}
			]])
			local source = [[
				{
					__type(name: "Query") {
						fields {
							trueArgs: args(includeDeprecated: true) {
								name
							}
							falseArgs: args(includeDeprecated: false) {
								name
							}
							omittedArgs: args {
								name
							}
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toEqual({
				data = {
					__type = {
						fields = {
							{
								trueArgs = { { name = "nonDeprecated" }, { name = "deprecated" } },
								falseArgs = { { name = "nonDeprecated" } },
								omittedArgs = { { name = "nonDeprecated" } },
							},
						},
					},
				},
			})
		end)

		it("identifies deprecated enum values", function()
			local schema = buildSchema([[
				enum SomeEnum {
					NON_DEPRECATED
					DEPRECATED @deprecated(reason: "Removed in 1.0")
					ALSO_NON_DEPRECATED
				}

				type Query {
					someField(someArg: SomeEnum): String
				}
			]])
			local source = [[

				{
					__type(name: "SomeEnum") {
						enumValues(includeDeprecated: true) {
							name
							isDeprecated,
							deprecationReason
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toObjectContain({
				data = {
					__type = {
						enumValues = {
							{
								name = "NON_DEPRECATED",
								isDeprecated = false,
								deprecationReason = nil,
							},
							{
								name = "DEPRECATED",
								isDeprecated = true,
								deprecationReason = "Removed in 1.0",
							},
							{
								name = "ALSO_NON_DEPRECATED",
								isDeprecated = false,
								deprecationReason = nil,
							},
						},
					},
				},
			})
		end)

		it("respects the includeDeprecated parameter for enum values", function()
			local schema = buildSchema([[
				enum SomeEnum {
					NON_DEPRECATED
					DEPRECATED @deprecated(reason: "Removed in 1.0")
					DEPRECATED_WITH_EMPTY_REASON @deprecated(reason: "")
					ALSO_NON_DEPRECATED
				}

				type Query {
					someField(someArg: SomeEnum): String
				}
			]])
			local source = [[
				{
					__type(name: "SomeEnum") {
						trueValues: enumValues(includeDeprecated: true) {
							name
						}
						falseValues: enumValues(includeDeprecated: false) {
							name
						}
						omittedValues: enumValues {
							name
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toEqual({
				data = {
					__type = {
						trueValues = {
							{ name = "NON_DEPRECATED" },
							{ name = "DEPRECATED" },
							{ name = "DEPRECATED_WITH_EMPTY_REASON" },
							{ name = "ALSO_NON_DEPRECATED" },
						},
						falseValues = {
							{ name = "NON_DEPRECATED" },
							{ name = "ALSO_NON_DEPRECATED" },
						},
						omittedValues = {
							{ name = "NON_DEPRECATED" },
							{ name = "ALSO_NON_DEPRECATED" },
						},
					},
				},
			})
		end)

		it("identifies deprecated for input fields", function()
			local schema = buildSchema([[
				input SomeInputObject {
					nonDeprecated: String
					deprecated: String @deprecated(reason: "Removed in 1.0")
					deprecatedWithEmptyReason: String @deprecated(reason: "")
				}

				type Query {
					someField(someArg: SomeInputObject): String
				}
			]])
			local source = [[

				{
					__type(name: "SomeInputObject") {
						inputFields(includeDeprecated: true) {
							name
							isDeprecated,
							deprecationReason
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toObjectContain({
				data = {
					__type = {
						inputFields = {
							{
								name = "nonDeprecated",
								isDeprecated = false,
								deprecationReason = nil,
							},
							{
								name = "deprecated",
								isDeprecated = true,
								deprecationReason = "Removed in 1.0",
							},
							{
								name = "deprecatedWithEmptyReason",
								isDeprecated = true,
								deprecationReason = "",
							},
						},
					},
				},
			})
		end)

		it("respects the includeDeprecated parameter for input fields", function()
			local schema = buildSchema([[
				input SomeInputObject {
					nonDeprecated: String
					deprecated: String @deprecated(reason: "Removed in 1.0")
				}

				type Query {
					someField(someArg: SomeInputObject): String
				}
			]])
			local source = [[
				{
					__type(name: "SomeInputObject") {
						trueFields: inputFields(includeDeprecated: true) {
							name
						}
						falseFields: inputFields(includeDeprecated: false) {
							name
						}
						omittedFields: inputFields {
							name
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toEqual({
				data = {
					__type = {
						trueFields = { { name = "nonDeprecated" }, { name = "deprecated" } },
						falseFields = { { name = "nonDeprecated" } },
						omittedFields = { { name = "nonDeprecated" } },
					},
				},
			})
		end)

		it("fails as expected on the __type root field without an arg", function()
			local schema = buildSchema([[
				type Query {
					someField: String
				}
			]])
			local source = [[

      {
        __type {
          name
        }
      }
			]]

			expect(graphqlSync({ schema = schema, source = source })).toObjectContain({
				errors = {
					{
						message = 'Field "__type" argument "name" of type "String!" is required, but it was not provided.',
						locations = { { line = 3, column = 9 } },
					},
				},
			})
		end)

		it("exposes descriptions", function()
			local schema = buildSchema([[
				"""Enum description"""
				enum SomeEnum {
					"""Value description"""
					VALUE
				}

				"""Object description"""
				type SomeObject {
					"""Field description"""
					someField(arg: SomeEnum): String
				}

				"""Schema description"""
				schema {
					query: SomeObject
				}
			]])
			local source = [[
				{
					Schema: __schema { description }
					SomeObject: __type(name: "SomeObject") {
						description,
						fields {
							name
							description
						}
					}
					SomeEnum: __type(name: "SomeEnum") {
						description
						enumValues {
							name
							description
						}
					}
				}
			]]

			expect(graphqlSync({ schema = schema, source = source })).toEqual({
				data = {
					Schema = {
						description = "Schema description",
					},
					SomeEnum = {
						description = "Enum description",
						enumValues = {
							{
								name = "VALUE",
								description = "Value description",
							},
						},
					},
					SomeObject = {
						description = "Object description",
						fields = {
							{
								name = "someField",
								description = "Field description",
							},
						},
					},
				},
			})
		end)

		it("executes an introspection query without calling global resolvers", function()
			local schema = buildSchema([[
				type Query {
					someField: String
				}
			]])

			local source = getIntrospectionQuery({
				specifiedByUrl = true,
				directiveIsRepeatable = true,
				schemaDescription = true,
			})

			-- // istanbul ignore next (Called only to fail test)
			local function fieldResolver(_1, _2, _3, info)
				invariant(false, ("Called on %s::%s"):format(info.parentType.name, info.fieldName))
			end

			-- // istanbul ignore next (Called only to fail test)
			local function typeResolver(_1, _2, info)
				invariant(false, ("Called on %s::%s"):format(info.parentType.name, info.fieldName))
			end

			expect(function()
				return graphqlSync({
					schema = schema,
					source = source,
					fieldResolver = fieldResolver,
					typeResolver = typeResolver,
				})
			end).to.never.throw()
		end)
	end)
end
