--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/typeComparators-test.js

return function()
	local utilitiesWorkspace = script.Parent.Parent
	local srcWorkspace = utilitiesWorkspace.Parent

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLString = scalarsImport.GraphQLString
	local GraphQLInt = scalarsImport.GraphQLInt
	local GraphQLFloat = scalarsImport.GraphQLFloat
	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local GraphQLInterfaceType = definitionImport.GraphQLInterfaceType
	local GraphQLUnionType = definitionImport.GraphQLUnionType

	local typeComparatorsImport = require(utilitiesWorkspace.typeComparators)
	local isEqualType = typeComparatorsImport.isEqualType
	local isTypeSubTypeOf = typeComparatorsImport.isTypeSubTypeOf

	describe("typeComparators", function()
		describe("isEqualType", function()
			it("same reference are equal", function()
				expect(isEqualType(GraphQLString, GraphQLString)).to.equal(true)
			end)

			it("int and float are not equal", function()
				expect(isEqualType(GraphQLInt, GraphQLFloat)).to.equal(false)
			end)

			it("lists of same type are equal", function()
				expect(isEqualType(GraphQLList.new(GraphQLInt), GraphQLList.new(GraphQLInt))).to.equal(
					true
				)
			end)

			it("lists is not equal to item", function()
				expect(isEqualType(GraphQLList.new(GraphQLInt), GraphQLInt)).to.equal(false)
			end)

			it("non-null of same type are equal", function()
				expect(isEqualType(GraphQLNonNull.new(GraphQLInt), GraphQLNonNull.new(GraphQLInt))).to.equal(
					true
				)
			end)

			it("non-null is not equal to nullable", function()
				expect(isEqualType(GraphQLNonNull.new(GraphQLInt), GraphQLInt)).to.equal(false)
			end)
		end)

		describe("isTypeSubTypeOf", function()
			local function testSchema(fields)
				return GraphQLSchema.new({
					query = GraphQLObjectType.new({
						name = "Query",
						fields = fields,
					}),
				})
			end

			it("same reference is subtype", function()
				local schema = testSchema({
					field = { type = GraphQLString },
				})

				expect(isTypeSubTypeOf(schema, GraphQLString, GraphQLString)).to.equal(true)
			end)

			it("int is not subtype of float", function()
				local schema = testSchema({
					field = { type = GraphQLString },
				})

				expect(isTypeSubTypeOf(schema, GraphQLInt, GraphQLFloat)).to.equal(false)
			end)

			it("non-null is subtype of nullable", function()
				local schema = testSchema({
					field = { type = GraphQLString },
				})

				expect(isTypeSubTypeOf(schema, GraphQLNonNull.new(GraphQLInt), GraphQLInt)).to.equal(
					true
				)
			end)

			it("nullable is not subtype of non-null", function()
				local schema = testSchema({
					field = { type = GraphQLString },
				})

				expect(isTypeSubTypeOf(schema, GraphQLInt, GraphQLNonNull.new(GraphQLInt))).to.equal(
					false
				)
			end)

			it("item is not subtype of list", function()
				local schema = testSchema({
					field = { type = GraphQLString },
				})

				expect(isTypeSubTypeOf(schema, GraphQLInt, GraphQLList.new(GraphQLInt))).to.equal(
					false
				)
			end)

			it("list is not subtype of item", function()
				local schema = testSchema({
					field = { type = GraphQLString },
				})

				expect(isTypeSubTypeOf(schema, GraphQLList.new(GraphQLInt), GraphQLInt)).to.equal(
					false
				)
			end)

			it("member is subtype of union", function()
				local member = GraphQLObjectType.new({
					name = "Object",
					fields = {
						field = { type = GraphQLString },
					},
				})
				local union = GraphQLUnionType.new({
					name = "Union",
					types = { member },
				})
				local schema = testSchema({
					field = { type = union },
				})

				expect(isTypeSubTypeOf(schema, member, union)).to.equal(true)
			end)

			it("implementing object is subtype of interface", function()
				local iface = GraphQLInterfaceType.new({
					name = "Interface",
					fields = {
						field = { type = GraphQLString },
					},
				})
				local impl = GraphQLObjectType.new({
					name = "Object",
					interfaces = { iface },
					fields = {
						field = { type = GraphQLString },
					},
				})
				local schema = testSchema({
					field = { type = impl },
				})

				expect(isTypeSubTypeOf(schema, impl, iface)).to.equal(true)
			end)

			it("implementing interface is subtype of interface", function()
				local iface = GraphQLInterfaceType.new({
					name = "Interface",
					fields = {
						field = { type = GraphQLString },
					},
				})
				local iface2 = GraphQLInterfaceType.new({
					name = "Interface2",
					interfaces = { iface },
					fields = {
						field = { type = GraphQLString },
					},
				})
				local impl = GraphQLObjectType.new({
					name = "Object",
					interfaces = { iface2, iface },
					fields = {
						field = { type = GraphQLString },
					},
				})
				local schema = testSchema({
					field = { type = impl },
				})

				expect(isTypeSubTypeOf(schema, iface2, iface)).to.equal(true)
			end)
		end)
	end)
end
