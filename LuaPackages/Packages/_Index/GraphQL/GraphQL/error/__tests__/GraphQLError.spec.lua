--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/error/__tests__/GraphQLError-test.js

return function()
	local errorWorkspace = script.Parent.Parent
	local srcWorkspace = errorWorkspace.Parent
	local languageWorkspace = srcWorkspace.language
	local Packages = srcWorkspace.Parent

	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error
	local instanceof = LuauPolyfill.instanceof

	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent
	local invariant = require(srcWorkspace.jsutils.invariant).invariant
	local Kind = require(languageWorkspace.kinds).Kind
	local parse = require(languageWorkspace.parser).parse
	local Source = require(languageWorkspace.source).Source
	local GraphQLError = require(errorWorkspace.GraphQLError).GraphQLError
	local printError = require(errorWorkspace.GraphQLError).printError

	local source = Source.new(dedent([[
  {
    field
  }
]]))
	local ast = parse(source)
	local operationNode = ast.definitions[1]
	invariant(operationNode.kind == Kind.OPERATION_DEFINITION)
	local fieldNode = operationNode.selectionSet.selections[1]
	invariant(fieldNode)

	describe("GraphQLError", function()
		it("is a class and is a subclass of Error", function()
			local instance = GraphQLError.new("str")
			expect(instanceof(instance, GraphQLError)).to.equal(true)
			expect(instanceof(instance, Error)).to.equal(true)
		end)

		it("has a name, message, and stack trace", function()
			local e = GraphQLError.new("msg")

			expect(e.name).to.equal("GraphQLError")
			expect(e.message).to.equal("msg")
			expect(e.stack).to.be.a("string")
		end)

		it("uses the stack of an original error", function()
			local original = Error.new("original")
			local e = GraphQLError.new("msg", nil, nil, nil, nil, original)

			expect(e.name).to.equal("GraphQLError")
			expect(e.message).to.equal("msg")
			expect(e.stack).to.equal(original.stack)
			expect(e.originalError).to.equal(original)
		end)

		it("creates new stack if original error has no stack", function()
			local original = Error.new("original")
			local e = GraphQLError.new("msg", nil, nil, nil, nil, original)

			expect(e.name).to.equal("GraphQLError")
			expect(e.message).to.equal("msg")
			expect(e.originalError).to.equal(original)
			expect(e.stack).to.be.a("string")
		end)

		it("converts nodes to positions and locations", function()
			local e = GraphQLError.new("msg", { fieldNode })
			expect(e).toObjectContain({
				nodes = { fieldNode },
				positions = { 5 },
				locations = { { line = 2, column = 3 } },
			})
			expect(e.source).to.equal(source)
		end)

		it("converts single node to positions and locations", function()
			local e = GraphQLError.new("msg", fieldNode)
			expect(e).toObjectContain({
				nodes = { fieldNode },
				positions = { 5 },
				locations = { { line = 2, column = 3 } },
			})
			expect(e.source).toEqual(source)
		end)

		it("converts node with loc.start === 0 to positions and locations", function()
			local e = GraphQLError.new("msg", operationNode)
			expect(e.source).toEqual(source)
			expect(e).toObjectContain({
				nodes = { operationNode },
				positions = { 1 },
				locations = { { line = 1, column = 1 } },
			})
		end)

		it("converts source and positions to locations", function()
			local e = GraphQLError.new("msg", nil, source, { 7 })
			expect(e.source).toEqual(source)
			expect(e).toObjectContain({
				nodes = nil,
				positions = { 7 },
				locations = { { line = 2, column = 5 } },
			})
		end)

		it("serializes to include message", function()
			local e = GraphQLError.new("msg")
			expect(e:toJSON()).to.equal('{"message":"msg"}')
		end)

		it("serializes to include message and locations", function()
			local e = GraphQLError.new("msg", fieldNode)
			expect(e:toJSON()).to.equal('{"message":"msg","locations":[{"line":2,"column":3}]}')
		end)

		it("serializes to include path", function()
			local e = GraphQLError.new("msg", nil, nil, nil, {
				"path",
				3,
				"to",
				"field",
			})
			expect(e.path).toObjectContain({ "path", 3, "to", "field" })
			-- ROBLOX deviation: key order is different
			expect(e:toJSON()).to.equal('{"message":"msg","path":["path",3,"to","field"]}')
		end)
	end)

	describe("printError", function()
		it("prints an error without location", function()
			local error_ = GraphQLError.new("Error without location")
			expect(printError(error_)).toEqual("Error without location")
		end)

		it("prints an error using node without location", function()
			local error_ = GraphQLError.new(
				"Error attached to node without location",
				parse("{ foo }", { noLocation = true })
			)
			expect(printError(error_)).to.equal("Error attached to node without location")
		end)

		it("prints an error with nodes from different sources", function()
			local docA = parse(Source.new(
				dedent([[
				  type Foo {
				    field: String
				  }
				]]),
				"SourceA"
			))
			local opA = docA.definitions[1]
			invariant(opA.kind == Kind.OBJECT_TYPE_DEFINITION and opA.fields)
			local fieldA = opA.fields[1]

			local docB = parse(Source.new(
				dedent([[
				  type Foo {
				    field: Int
				  }
				]]),
				"SourceB"
			))
			local opB = docB.definitions[1]
			invariant(opB.kind == Kind.OBJECT_TYPE_DEFINITION and opB.fields)
			local fieldB = opB.fields[1]

			local error_ = GraphQLError.new("Example error with two nodes", {
				fieldA.type,
				fieldB.type,
			})

			expect(printError(error_) .. "\n").to.equal(dedent([[
      			Example error with two nodes

      			SourceA:2:10
      			1 | type Foo {
      			2 |   field: String
      			  |          ^
      			3 | }

      			SourceB:2:10
      			1 | type Foo {
      			2 |   field: Int
      			  |          ^
      			3 | }
			]]))
		end)
	end)
end
