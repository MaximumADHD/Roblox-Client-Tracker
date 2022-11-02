local HttpService = game:GetService("HttpService")

local serverModule = script:FindFirstAncestor("GraphQLServer")
local Packages = serverModule.Parent
local GraphQL = require(Packages.GraphQL)
type GraphQLSchema = GraphQL.GraphQLSchema
type GraphQLTypeResolver<T, V> = GraphQL.GraphQLTypeResolver<T, V>
local Promise = require(Packages.Promise)
local LuauPolyfill = require(Packages.LuauPolyfill)
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

local Response = require(script.Parent.Response)
local graphqlDefaults = require(script.Parent.graphql)
local defaultTypeDefs: string = graphqlDefaults.typeDefs
local defaultResolvers = graphqlDefaults.resolvers

local buildTypeResolver = require(script.Parent.schemaUtils.buildTypeResolver)
local buildRootValue = require(script.Parent.schemaUtils.buildRootValue)
local buildFieldResolver = require(script.Parent.schemaUtils.buildFieldResolver)
local addMockResolvers = require(script.Parent.schemaUtils.addMockResolvers)

local GraphQLServer = {}
GraphQLServer.__index = GraphQLServer

type ServerOptions = {
	port: string?,
	typeDefs: string?,
	resolvers: Object?,
	mockResolvers: Object?,
}

type GraphQLServer = {
	port: string,
	schema: GraphQLSchema,
	rootValue: any,
	typeResolver: GraphQLTypeResolver<any, any>,
	fetchLocal: (GraphQLServer, RequestOptions) -> Promise<any>,
}

type RequestOptions = {
	body: string,
	query: string?,
	mutation: string?,
	variables: Object?,
}

function GraphQLServer.new(options: ServerOptions): GraphQLServer
	local self = {}
	self.port = options.port
	local typeDefs = options.typeDefs or defaultTypeDefs
	self.schema = GraphQL.buildSchema(typeDefs)

	local resolvers = options.resolvers or defaultResolvers
	if type(options.mockResolvers) == "table" then
		resolvers = addMockResolvers(resolvers, options.mockResolvers)
	end

	self.rootValue = buildRootValue(resolvers)
	self.typeResolver = buildTypeResolver(resolvers)
	self.fieldResolver = buildFieldResolver(resolvers)
	setmetatable(self, GraphQLServer)
	return (self :: any) :: GraphQLServer
end

function GraphQLServer:fetchLocal(requestOptions: RequestOptions): Promise<any>
	local request = if requestOptions then HttpService:JSONDecode(requestOptions.body) else {}
	return Promise.new(function(resolve, reject)
		GraphQL.graphql({
			schema = self.schema,
			source = request.query or request.mutation,
			rootValue = self.rootValue,
			typeResolver = self.typeResolver,
			fieldResolver = self.fieldResolver,
			variableValues = request.variables,
		}):andThen(function(response)
			resolve(Response.new(response))
		end)
	end)
end

return GraphQLServer
