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
local fetchModule = require(Packages.Fetch)
type fetch = fetchModule.fetch
local fetch = fetchModule.fetch

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
	fetchImpl: fetch?,
}

type GraphQLServer = {
	port: string,
	schema: GraphQLSchema,
	rootValue: any,
	typeResolver: GraphQLTypeResolver<any, any>,
	fetchImpl: fetch,
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
	self.port = if options.port then options.port else 4000
	local typeDefs = if options.typeDefs then options.typeDefs else defaultTypeDefs
	self.schema = GraphQL.buildSchema(typeDefs)

	local resolvers = if options.resolvers then options.resolvers else defaultResolvers
	if type(options.mockResolvers) == "table" then
		resolvers = addMockResolvers(resolvers, options.mockResolvers)
	end

	self.rootValue = buildRootValue(resolvers)
	self.typeResolver = buildTypeResolver(resolvers)
	self.fieldResolver = buildFieldResolver(resolvers)
	self.fetchImpl = if options.fetchImpl then options.fetchImpl else fetch
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
			contextValue = {
				fetchImpl = self.fetchImpl,
			},
			typeResolver = self.typeResolver,
			fieldResolver = self.fieldResolver,
			variableValues = request.variables,
		}):andThen(function(response)
			resolve(Response.new(response))
		end)
	end)
end

return GraphQLServer
