-- ROBLOX deviation: no upstream tests

return function()
	local typeFromAST = require(script.Parent.Parent.typeFromAST).typeFromAST

	local Kind = require(script.Parent.Parent.Parent.language.kinds).Kind
	local GraphQLID = require(script.Parent.Parent.Parent.type.scalars).GraphQLID
	local definitionImport = require(script.Parent.Parent.Parent.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local instanceOf = require(script.Parent.Parent.Parent.jsutils.instanceOf)

	describe("typeFromAST", function()
		local namedTypeNode = {
			kind = Kind.NAMED_TYPE,
			name = {
				kind = "Name",
				value = "",
			},
		}

		it("returns the type from a node of kind `NAMED_TYPE`", function()
			local result = typeFromAST({
				getType = function(self)
					return GraphQLID
				end,
			}, namedTypeNode)

			expect(result).to.equal(GraphQLID)
		end)

		it("returns the type from a node of kind `LIST_TYPE`", function()
			local result = typeFromAST({
				getType = function(self)
					return GraphQLID
				end,
			}, {
				kind = Kind.LIST_TYPE,
				type = namedTypeNode,
			})

			expect(instanceOf(result, GraphQLList)).to.equal(true)
			expect(result.ofType).to.equal(GraphQLID)
		end)

		it("returns the type from a node of kind `NON_NULL_TYPE`", function()
			local result = typeFromAST({
				getType = function(self)
					return GraphQLID
				end,
			}, {
				kind = Kind.NON_NULL_TYPE,
				type = namedTypeNode,
			})

			expect(instanceOf(result, GraphQLNonNull)).to.equal(true)
			expect(result.ofType).to.equal(GraphQLID)
		end)

		it("throws when type is unknown", function()
			local unexpectedNode = {
				kind = "FOO_BAR",
			}

			expect(function()
				typeFromAST({
					getType = function(self)
						return GraphQLID
					end,
				}, unexpectedNode)
			end).to.throw('Unexpected type node: { kind: "FOO_BAR" }')

			expect(function()
				typeFromAST({
					getType = function(self)
						return GraphQLID
					end,
				}, {
					kind = Kind.LIST_TYPE,
					type = unexpectedNode,
				})
			end).to.throw('Unexpected type node: { kind: "FOO_BAR" }')

			expect(function()
				typeFromAST({
					getType = function(self)
						return GraphQLID
					end,
				}, {
					kind = Kind.NON_NULL_TYPE,
					type = unexpectedNode,
				})
			end).to.throw('Unexpected type node: { kind: "FOO_BAR" }')
		end)
	end)
end
