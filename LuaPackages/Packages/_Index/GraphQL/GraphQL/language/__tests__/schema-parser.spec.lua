--!nocheck
--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/language/__tests__/schema-parser-test.js

return function()
	local testUtilsWorkspace = script.Parent.Parent.Parent.__testUtils__
	local languageWorkspace = script.Parent.Parent

	local dedent = require(testUtilsWorkspace.dedent).dedent
	local kitchenSinkSDL = require(testUtilsWorkspace.kitchenSinkSDL).kitchenSinkSDL

	local parse = require(languageWorkspace.parser).parse

	local toJSONDeep = require(languageWorkspace.__tests__.toJSONDeep).toJSONDeep

	-- ROBLOX deviation: predeclare functions
	local expectSyntaxError
	local typeNode
	local nameNode
	local fieldNode
	local fieldNodeWithArgs

	function expectSyntaxError(expect_, text)
		local parseRes = function()
			return parse(text)
		end
		local _ok, thrownError = pcall(parseRes)
		-- ROBLOX deviation: expect cannot be called unless inside of an it
		-- ROBLOX deviation: pass expect into this function and use local scope
		expect_(_ok).to.equal(false)
		return expect_(thrownError)
	end

	function typeNode(name, loc)
		return {
			kind = "NamedType",
			name = nameNode(name, loc),
			loc = loc,
		}
	end
	function nameNode(name, loc)
		return {
			kind = "Name",
			value = name,
			loc = loc,
		}
	end
	function fieldNode(name, type_, loc)
		return fieldNodeWithArgs(name, type_, {}, loc)
	end
	function fieldNodeWithArgs(name, type_, args, loc)
		return {
			kind = "FieldDefinition",
			description = nil,
			name = name,
			arguments = args,
			type = type_,
			directives = {},
			loc = loc,
		}
	end
	local function enumValueNode(name, loc)
		return {
			kind = "EnumValueDefinition",
			name = nameNode(name, loc),
			description = nil,
			directives = {},
			loc = loc,
		}
	end
	local function inputValueNode(name, type_, defaultValue, loc)
		return {
			kind = "InputValueDefinition",
			name = name,
			description = nil,
			type = type_,
			defaultValue = defaultValue,
			directives = {},
			loc = loc,
		}
	end

	describe("Schema Parser", function()
		it("Simple type", function()
			local doc = parse(dedent([[
        type Hello {
          world: String
        }
    ]]))
			local res = toJSONDeep(doc)
			expect(res).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNode(
								nameNode("world", {
									start = 16,
									_end = 21,
								}),
								typeNode("String", {
									start = 23,
									_end = 29,
								}),
								{
									start = 16,
									_end = 29,
								}
							),
						},
						loc = {
							start = 1,
							_end = 31,
						},
					},
				},
				loc = {
					start = 1,
					_end = 32,
				},
			})
		end)
		it("parses type with description string", function()
			local doc = parse(dedent([[
        "Description"
        type Hello {
          world: String
        }
        ]]))

			expect(toJSONDeep(doc).definitions[1].description).toEqual({
				kind = "StringValue",
				value = "Description",
				block = false,
				loc = {
					start = 1,
					_end = 14,
				},
			})
		end)
		it("parses type with description multi-line string", function()
			local doc = parse(dedent([[
        """
        Description
        """
        # Even with comments between them
        type Hello {
          world: String
        }
        ]]))

			expect(toJSONDeep(doc).definitions[1].description).toEqual({
				kind = "StringValue",
				value = "Description",
				block = true,
				loc = {
					start = 1,
					_end = 20,
				},
			})
		end)
		it("parses schema with description string", function()
			local doc = parse(dedent([[
        "Description"
        schema {
          query: Foo
        }
        ]]))

			expect(toJSONDeep(doc).definitions[1].description).toEqual({
				kind = "StringValue",
				value = "Description",
				block = false,
				loc = {
					start = 1,
					_end = 14,
				},
			})
		end)
		it("Description followed by something other than type system definition throws", function()
			-- ROBLOX deviation: we use toObjectContain instead of to.deep.equal because in JS there seems to be some conversion on GraphQLError hapening implicitely which converts it to string and thus extract only message and locations
			expectSyntaxError(expect, '"Description" 1').toObjectContain({
				message = 'Syntax Error: Unexpected Int "1".',
				locations = {
					{
						line = 1,
						column = 15,
					},
				},
			})
		end)
		it("Simple extension", function()
			local doc = parse(dedent([[
        extend type Hello {
          world: String
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeExtension",
						name = nameNode("Hello", {
							start = 13,
							_end = 18,
						}),
						interfaces = {},
						directives = {},
						fields = {
							fieldNode(
								nameNode("world", {
									start = 23,
									_end = 28,
								}),
								typeNode("String", {
									start = 30,
									_end = 36,
								}),
								{
									start = 23,
									_end = 36,
								}
							),
						},
						loc = {
							start = 1,
							_end = 38,
						},
					},
				},
				loc = {
					start = 1,
					_end = 39,
				},
			})
		end)
		it("Object extension without fields", function()
			local doc = parse("extend type Hello implements Greeting")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeExtension",
						name = nameNode("Hello", {
							start = 13,
							_end = 18,
						}),
						interfaces = {
							typeNode("Greeting", {
								start = 30,
								_end = 38,
							}),
						},
						directives = {},
						fields = {},
						loc = {
							start = 1,
							_end = 38,
						},
					},
				},
				loc = {
					start = 1,
					_end = 38,
				},
			})
		end)
		it("Interface extension without fields", function()
			local doc = parse("extend interface Hello implements Greeting")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InterfaceTypeExtension",
						name = nameNode("Hello", {
							start = 18,
							_end = 23,
						}),
						interfaces = {
							typeNode("Greeting", {
								start = 35,
								_end = 43,
							}),
						},
						directives = {},
						fields = {},
						loc = {
							start = 1,
							_end = 43,
						},
					},
				},
				loc = {
					start = 1,
					_end = 43,
				},
			})
		end)
		it("Object extension without fields followed by extension", function()
			local doc = parse([[

      extend type Hello implements Greeting

      extend type Hello implements SecondGreeting
    ]])
			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeExtension",
						name = nameNode("Hello", {
							start = 20,
							_end = 25,
						}),
						interfaces = {
							typeNode("Greeting", {
								start = 37,
								_end = 45,
							}),
						},
						directives = {},
						fields = {},
						loc = {
							start = 8,
							_end = 45,
						},
					},
					{
						kind = "ObjectTypeExtension",
						name = nameNode("Hello", {
							start = 65,
							_end = 70,
						}),
						interfaces = {
							typeNode("SecondGreeting", {
								start = 82,
								_end = 96,
							}),
						},
						directives = {},
						fields = {},
						loc = {
							start = 53,
							_end = 96,
						},
					},
				},
				loc = {
					start = 1,
					_end = 101,
				},
			})
		end)

		it("Extension without anything throws", function()
			expectSyntaxError(expect, "extend scalar Hello").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 20,
					},
				},
			})
			expectSyntaxError(expect, "extend type Hello").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 18,
					},
				},
			})
			expectSyntaxError(expect, "extend interface Hello").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 23,
					},
				},
			})
			expectSyntaxError(expect, "extend union Hello").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 19,
					},
				},
			})
			expectSyntaxError(expect, "extend enum Hello").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 18,
					},
				},
			})
			expectSyntaxError(expect, "extend input Hello").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 19,
					},
				},
			})
		end)
		it("Interface extension without fields followed by extension", function()
			local doc = parse([[

      extend interface Hello implements Greeting

      extend interface Hello implements SecondGreeting
    ]])

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InterfaceTypeExtension",
						name = nameNode("Hello", {
							start = 25,
							_end = 30,
						}),
						interfaces = {
							typeNode("Greeting", {
								start = 42,
								_end = 50,
							}),
						},
						directives = {},
						fields = {},
						loc = {
							start = 8,
							_end = 50,
						},
					},
					{
						kind = "InterfaceTypeExtension",
						name = nameNode("Hello", {
							start = 75,
							_end = 80,
						}),
						interfaces = {
							typeNode("SecondGreeting", {
								start = 92,
								_end = 106,
							}),
						},
						directives = {},
						fields = {},
						loc = {
							start = 58,
							_end = 106,
						},
					},
				},
				loc = {
					start = 1,
					_end = 111,
				},
			})
		end)
		it("Object extension do not include descriptions", function()
			expectSyntaxError(
				expect,
				[[

      "Description"
      extend type Hello {
        world: String
      }
    ]]
			).toObjectContain({
				message = 'Syntax Error: Unexpected Name "extend".',
				locations = {
					{
						line = 3,
						column = 7,
					},
				},
			})

			expectSyntaxError(
				expect,
				[[

      extend "Description" type Hello {
        world: String
      }
    ]]
			).toObjectContain({
				message = 'Syntax Error: Unexpected String "Description".',
				locations = {
					{
						line = 2,
						column = 14,
					},
				},
			})
		end)

		it("Interface extension do not include descriptions", function()
			expectSyntaxError(
				expect,
				[[

      "Description"
      extend interface Hello {
        world: String
      }
    ]]
			).toObjectContain({
				message = 'Syntax Error: Unexpected Name "extend".',
				locations = {
					{
						line = 3,
						column = 7,
					},
				},
			})
			expectSyntaxError(
				expect,
				[[

      extend "Description" interface Hello {
        world: String
      }
    ]]
			).toObjectContain({
				message = 'Syntax Error: Unexpected String "Description".',
				locations = {
					{
						line = 2,
						column = 14,
					},
				},
			})
		end)
		it("Schema extension", function()
			local body = [[

      extend schema {
        mutation: Mutation
      }]]
			local doc = parse(body)

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "SchemaExtension",
						directives = {},
						operationTypes = {
							{
								kind = "OperationTypeDefinition",
								operation = "mutation",
								type = typeNode("Mutation", {
									start = 42,
									_end = 50,
								}),
								loc = {
									start = 32,
									_end = 50,
								},
							},
						},
						loc = {
							start = 8,
							_end = 58,
						},
					},
				},
				loc = {
					start = 1,
					_end = 58,
				},
			})
		end)
		it("Schema extension with only directives", function()
			local body = "extend schema @directive"
			local doc = parse(body)

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "SchemaExtension",
						directives = {
							{
								kind = "Directive",
								name = nameNode("directive", {
									start = 16,
									_end = 25,
								}),
								arguments = {},
								loc = {
									start = 15,
									_end = 25,
								},
							},
						},
						operationTypes = {},
						loc = {
							start = 1,
							_end = 25,
						},
					},
				},
				loc = {
					start = 1,
					_end = 25,
				},
			})
		end)
		it("Schema extension without anything throws", function()
			expectSyntaxError(expect, "extend schema").toObjectContain({
				message = "Syntax Error: Unexpected <EOF>.",
				locations = {
					{
						line = 1,
						column = 14,
					},
				},
			})
		end)
		it("Schema extension with invalid operation type throws", function()
			expectSyntaxError(expect, "extend schema { unknown: SomeType }").toObjectContain({
				message = 'Syntax Error: Unexpected Name "unknown".',
				locations = {
					{
						line = 1,
						column = 17,
					},
				},
			})
		end)
		it("Simple non-null type", function()
			local doc = parse(dedent([[
        type Hello {
          world: String!
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNode(
								nameNode("world", {
									start = 16,
									_end = 21,
								}),
								{
									kind = "NonNullType",
									type = typeNode("String", {
										start = 23,
										_end = 29,
									}),
									loc = {
										start = 23,
										_end = 30,
									},
								},
								{
									start = 16,
									_end = 30,
								}
							),
						},
						loc = {
							start = 1,
							_end = 32,
						},
					},
				},
				loc = {
					start = 1,
					_end = 33,
				},
			})
		end)
		it("Simple interface inheriting interface", function()
			local doc = parse("interface Hello implements World { field: String }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InterfaceTypeDefinition",
						name = nameNode("Hello", {
							start = 11,
							_end = 16,
						}),
						description = nil,
						interfaces = {
							typeNode("World", {
								start = 28,
								_end = 33,
							}),
						},
						directives = {},
						fields = {
							fieldNode(
								nameNode("field", {
									start = 36,
									_end = 41,
								}),
								typeNode("String", {
									start = 43,
									_end = 49,
								}),
								{
									start = 36,
									_end = 49,
								}
							),
						},
						loc = {
							start = 1,
							_end = 51,
						},
					},
				},
				loc = {
					start = 1,
					_end = 51,
				},
			})
		end)
		it("Simple type inheriting interface", function()
			local doc = parse("type Hello implements World { field: String }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {
							typeNode("World", {
								start = 23,
								_end = 28,
							}),
						},
						directives = {},
						fields = {
							fieldNode(
								nameNode("field", {
									start = 31,
									_end = 36,
								}),
								typeNode("String", {
									start = 38,
									_end = 44,
								}),
								{
									start = 31,
									_end = 44,
								}
							),
						},
						loc = {
							start = 1,
							_end = 46,
						},
					},
				},
				loc = {
					start = 1,
					_end = 46,
				},
			})
		end)
		it("Simple type inheriting multiple interfaces", function()
			local doc = parse("type Hello implements Wo & rld { field: String }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {
							typeNode("Wo", {
								start = 23,
								_end = 25,
							}),
							typeNode("rld", {
								start = 28,
								_end = 31,
							}),
						},
						directives = {},
						fields = {
							fieldNode(
								nameNode("field", {
									start = 34,
									_end = 39,
								}),
								typeNode("String", {
									start = 41,
									_end = 47,
								}),
								{
									start = 34,
									_end = 47,
								}
							),
						},
						loc = {
							start = 1,
							_end = 49,
						},
					},
				},
				loc = {
					start = 1,
					_end = 49,
				},
			})
		end)
		it("Simple interface inheriting multiple interfaces", function()
			local doc = parse("interface Hello implements Wo & rld { field: String }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InterfaceTypeDefinition",
						name = nameNode("Hello", {
							start = 11,
							_end = 16,
						}),
						description = nil,
						interfaces = {
							typeNode("Wo", {
								start = 28,
								_end = 30,
							}),
							typeNode("rld", {
								start = 33,
								_end = 36,
							}),
						},
						directives = {},
						fields = {
							fieldNode(
								nameNode("field", {
									start = 39,
									_end = 44,
								}),
								typeNode("String", {
									start = 46,
									_end = 52,
								}),
								{
									start = 39,
									_end = 52,
								}
							),
						},
						loc = {
							start = 1,
							_end = 54,
						},
					},
				},
				loc = {
					start = 1,
					_end = 54,
				},
			})
		end)
		it("Simple type inheriting multiple interfaces with leading ampersand", function()
			local doc = parse("type Hello implements & Wo & rld { field: String }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {
							typeNode("Wo", {
								start = 25,
								_end = 27,
							}),
							typeNode("rld", {
								start = 30,
								_end = 33,
							}),
						},
						directives = {},
						fields = {
							fieldNode(
								nameNode("field", {
									start = 36,
									_end = 41,
								}),
								typeNode("String", {
									start = 43,
									_end = 49,
								}),
								{
									start = 36,
									_end = 49,
								}
							),
						},
						loc = {
							start = 1,
							_end = 51,
						},
					},
				},
				loc = {
					start = 1,
					_end = 51,
				},
			})
		end)
		it("Simple interface inheriting multiple interfaces with leading ampersand", function()
			local doc = parse("interface Hello implements & Wo & rld { field: String }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InterfaceTypeDefinition",
						name = nameNode("Hello", {
							start = 11,
							_end = 16,
						}),
						description = nil,
						interfaces = {
							typeNode("Wo", {
								start = 30,
								_end = 32,
							}),
							typeNode("rld", {
								start = 35,
								_end = 38,
							}),
						},
						directives = {},
						fields = {
							fieldNode(
								nameNode("field", {
									start = 41,
									_end = 46,
								}),
								typeNode("String", {
									start = 48,
									_end = 54,
								}),
								{
									start = 41,
									_end = 54,
								}
							),
						},
						loc = {
							start = 1,
							_end = 56,
						},
					},
				},
				loc = {
					start = 1,
					_end = 56,
				},
			})
		end)
		it("Single value enum", function()
			local doc = parse("enum Hello { WORLD }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "EnumTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						directives = {},
						values = {
							enumValueNode("WORLD", {
								start = 14,
								_end = 19,
							}),
						},
						loc = {
							start = 1,
							_end = 21,
						},
					},
				},
				loc = {
					start = 1,
					_end = 21,
				},
			})
		end)
		it("Double value enum", function()
			local doc = parse("enum Hello { WO, RLD }")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "EnumTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						directives = {},
						values = {
							enumValueNode("WO", {
								start = 14,
								_end = 16,
							}),
							enumValueNode("RLD", {
								start = 18,
								_end = 21,
							}),
						},
						loc = {
							start = 1,
							_end = 23,
						},
					},
				},
				loc = {
					start = 1,
					_end = 23,
				},
			})
		end)
		it("Simple interface", function()
			local doc = parse(dedent([[
        interface Hello {
          world: String
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InterfaceTypeDefinition",
						name = nameNode("Hello", {
							start = 11,
							_end = 16,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNode(
								nameNode("world", {
									start = 21,
									_end = 26,
								}),
								typeNode("String", {
									start = 28,
									_end = 34,
								}),
								{
									start = 21,
									_end = 34,
								}
							),
						},
						loc = {
							start = 1,
							_end = 36,
						},
					},
				},
				loc = {
					start = 1,
					_end = 37,
				},
			})
		end)
		it("Simple field with arg", function()
			local doc = parse(dedent([[
        type Hello {
          world(flag: Boolean): String
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNodeWithArgs(
								nameNode("world", {
									start = 16,
									_end = 21,
								}),
								typeNode("String", {
									start = 38,
									_end = 44,
								}),
								{
									inputValueNode(
										nameNode("flag", {
											start = 22,
											_end = 26,
										}),
										typeNode("Boolean", {
											start = 28,
											_end = 35,
										}),
										nil,
										{
											start = 22,
											_end = 35,
										}
									),
								},
								{
									start = 16,
									_end = 44,
								}
							),
						},
						loc = {
							start = 1,
							_end = 46,
						},
					},
				},
				loc = {
					start = 1,
					_end = 47,
				},
			})
		end)
		it("Simple field with arg with default value", function()
			local doc = parse(dedent([[
        type Hello {
          world(flag: Boolean = true): String
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNodeWithArgs(
								nameNode("world", {
									start = 16,
									_end = 21,
								}),
								typeNode("String", {
									start = 45,
									_end = 51,
								}),
								{
									inputValueNode(
										nameNode("flag", {
											start = 22,
											_end = 26,
										}),
										typeNode("Boolean", {
											start = 28,
											_end = 35,
										}),
										{
											kind = "BooleanValue",
											value = true,
											loc = {
												start = 38,
												_end = 42,
											},
										},
										{
											start = 22,
											_end = 42,
										}
									),
								},
								{
									start = 16,
									_end = 51,
								}
							),
						},
						loc = {
							start = 1,
							_end = 53,
						},
					},
				},
				loc = {
					start = 1,
					_end = 54,
				},
			})
		end)
		it("Simple field with list arg", function()
			local doc = parse(dedent([[
        type Hello {
          world(things: [String]): String
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNodeWithArgs(
								nameNode("world", {
									start = 16,
									_end = 21,
								}),
								typeNode("String", {
									start = 41,
									_end = 47,
								}),
								{
									inputValueNode(
										nameNode("things", {
											start = 22,
											_end = 28,
										}),
										{
											kind = "ListType",
											type = typeNode("String", {
												start = 31,
												_end = 37,
											}),
											loc = {
												start = 30,
												_end = 38,
											},
										},
										nil,
										{
											start = 22,
											_end = 38,
										}
									),
								},
								{
									start = 16,
									_end = 47,
								}
							),
						},
						loc = {
							start = 1,
							_end = 49,
						},
					},
				},
				loc = {
					start = 1,
					_end = 50,
				},
			})
		end)
		it("Simple field with two args", function()
			local doc = parse(dedent([[
        type Hello {
          world(argOne: Boolean, argTwo: Int): String
        }
        ]]))

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 6,
							_end = 11,
						}),
						description = nil,
						interfaces = {},
						directives = {},
						fields = {
							fieldNodeWithArgs(
								nameNode("world", {
									start = 16,
									_end = 21,
								}),
								typeNode("String", {
									start = 53,
									_end = 59,
								}),
								{
									inputValueNode(
										nameNode("argOne", {
											start = 22,
											_end = 28,
										}),
										typeNode("Boolean", {
											start = 30,
											_end = 37,
										}),
										nil,
										{
											start = 22,
											_end = 37,
										}
									),
									inputValueNode(
										nameNode("argTwo", {
											start = 39,
											_end = 45,
										}),
										typeNode("Int", {
											start = 47,
											_end = 50,
										}),
										nil,
										{
											start = 39,
											_end = 50,
										}
									),
								},
								{
									start = 16,
									_end = 59,
								}
							),
						},
						loc = {
							start = 1,
							_end = 61,
						},
					},
				},
				loc = {
					start = 1,
					_end = 62,
				},
			})
		end)
		it("Simple union", function()
			local doc = parse("union Hello = World")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "UnionTypeDefinition",
						name = nameNode("Hello", {
							start = 7,
							_end = 12,
						}),
						description = nil,
						directives = {},
						types = {
							typeNode("World", {
								start = 15,
								_end = 20,
							}),
						},
						loc = {
							start = 1,
							_end = 20,
						},
					},
				},
				loc = {
					start = 1,
					_end = 20,
				},
			})
		end)
		it("Union with two types", function()
			local doc = parse("union Hello = Wo | Rld")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "UnionTypeDefinition",
						name = nameNode("Hello", {
							start = 7,
							_end = 12,
						}),
						description = nil,
						directives = {},
						types = {
							typeNode("Wo", {
								start = 15,
								_end = 17,
							}),
							typeNode("Rld", {
								start = 20,
								_end = 23,
							}),
						},
						loc = {
							start = 1,
							_end = 23,
						},
					},
				},
				loc = {
					start = 1,
					_end = 23,
				},
			})
		end)
		it("Union with two types and leading pipe", function()
			local doc = parse("union Hello = | Wo | Rld")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "UnionTypeDefinition",
						name = nameNode("Hello", {
							start = 7,
							_end = 12,
						}),
						description = nil,
						directives = {},
						types = {
							typeNode("Wo", {
								start = 17,
								_end = 19,
							}),
							typeNode("Rld", {
								start = 22,
								_end = 25,
							}),
						},
						loc = {
							start = 1,
							_end = 25,
						},
					},
				},
				loc = {
					start = 1,
					_end = 25,
				},
			})
		end)
		it("Union fails with no types", function()
			expectSyntaxError(expect, "union Hello = |").toObjectContain({
				message = "Syntax Error: Expected Name, found <EOF>.",
				locations = {
					{
						line = 1,
						column = 16,
					},
				},
			})
		end)
		it("Union fails with leading double pipe", function()
			expectSyntaxError(expect, "union Hello = || Wo | Rld").toObjectContain({
				message = 'Syntax Error: Expected Name, found "|".',
				locations = {
					{
						line = 1,
						column = 16,
					},
				},
			})
		end)
		it("Union fails with double pipe", function()
			expectSyntaxError(expect, "union Hello = Wo || Rld").toObjectContain({
				message = 'Syntax Error: Expected Name, found "|".',
				locations = {
					{
						line = 1,
						column = 19,
					},
				},
			})
		end)
		it("Union fails with trailing pipe", function()
			expectSyntaxError(expect, "union Hello = | Wo | Rld |").toObjectContain({
				message = "Syntax Error: Expected Name, found <EOF>.",
				locations = {
					{
						line = 1,
						column = 27,
					},
				},
			})
		end)
		it("Scalar", function()
			local doc = parse("scalar Hello")

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "ScalarTypeDefinition",
						name = nameNode("Hello", {
							start = 8,
							_end = 13,
						}),
						description = nil,
						directives = {},
						loc = {
							start = 1,
							_end = 13,
						},
					},
				},
				loc = {
					start = 1,
					_end = 13,
				},
			})
		end)
		it("Simple input object", function()
			local doc = parse([[

input Hello {
  world: String
}]])

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "InputObjectTypeDefinition",
						name = nameNode("Hello", {
							start = 8,
							_end = 13,
						}),
						description = nil,
						directives = {},
						fields = {
							inputValueNode(
								nameNode("world", {
									start = 18,
									_end = 23,
								}),
								typeNode("String", {
									start = 25,
									_end = 31,
								}),
								nil,
								{
									start = 18,
									_end = 31,
								}
							),
						},
						loc = {
							start = 2,
							_end = 33,
						},
					},
				},
				loc = {
					start = 1,
					_end = 33,
				},
			})
		end)
		it("Simple input object with args should fail", function()
			expectSyntaxError(
				expect,
				[[

      input Hello {
        world(foo: Int): String
      }
    ]]
			).toObjectContain({
				message = 'Syntax Error: Expected ":", found "(".',
				locations = {
					{
						line = 3,
						column = 14,
					},
				},
			})
		end)
		it("Directive definition", function()
			local body = "directive @foo on OBJECT | INTERFACE"
			local doc = parse(body)

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "DirectiveDefinition",
						description = nil,
						name = {
							kind = "Name",
							value = "foo",
							loc = {
								start = 12,
								_end = 15,
							},
						},
						arguments = {},
						repeatable = false,
						locations = {
							{
								kind = "Name",
								value = "OBJECT",
								loc = {
									start = 19,
									_end = 25,
								},
							},
							{
								kind = "Name",
								value = "INTERFACE",
								loc = {
									start = 28,
									_end = 37,
								},
							},
						},
						loc = {
							start = 1,
							_end = 37,
						},
					},
				},
				loc = {
					start = 1,
					_end = 37,
				},
			})
		end)
		it("Repeatable directive definition", function()
			local body = "directive @foo repeatable on OBJECT | INTERFACE"
			local doc = parse(body)

			expect(toJSONDeep(doc)).toEqual({
				kind = "Document",
				definitions = {
					{
						kind = "DirectiveDefinition",
						description = nil,
						name = {
							kind = "Name",
							value = "foo",
							loc = {
								start = 12,
								_end = 15,
							},
						},
						arguments = {},
						repeatable = true,
						locations = {
							{
								kind = "Name",
								value = "OBJECT",
								loc = {
									start = 30,
									_end = 36,
								},
							},
							{
								kind = "Name",
								value = "INTERFACE",
								loc = {
									start = 39,
									_end = 48,
								},
							},
						},
						loc = {
							start = 1,
							_end = 48,
						},
					},
				},
				loc = {
					start = 1,
					_end = 48,
				},
			})
		end)
		it("Directive with incorrect locations", function()
			expectSyntaxError(expect, "directive @foo on FIELD | INCORRECT_LOCATION").toObjectContain({
				message = 'Syntax Error: Unexpected Name "INCORRECT_LOCATION".',
				locations = {
					{
						line = 1,
						column = 27,
					},
				},
			})
		end)
		it("parses kitchen sink schema", function()
			expect(function()
				return parse(kitchenSinkSDL)
			end).never.to.throw()
		end)
	end)
end
