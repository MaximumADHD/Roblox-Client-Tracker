local HttpService = game:GetService("HttpService")

local serverModule = script:FindFirstAncestor("GraphQLServer")
local Packages = serverModule.Parent
local GraphQL = require(Packages.GraphQL)
type GraphQLSchema = GraphQL.GraphQLSchema
type GraphQLTypeResolver<T, V> = GraphQL.GraphQLTypeResolver<T, V>
local Promise = require(Packages.Promise)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
local fetchModule = require(Packages.Fetch)
type fetch = fetchModule.fetch
local fetch = fetchModule.fetch
local DataLoaderModule = require(Packages.DataLoader)
type DataLoader = DataLoaderModule.DataLoader<any, any, any>

local Response = require(script.Parent.Response)
local graphqlDefaults = require(script.Parent.graphql)
local defaultTypeDefs: string = graphqlDefaults.typeDefs
local defaultResolvers = graphqlDefaults.resolvers
local dataLoaders = graphqlDefaults.dataLoaders

local buildTypeResolver = require(script.Parent.schemaUtils.buildTypeResolver)
local buildRootValue = require(script.Parent.schemaUtils.buildRootValue)
local buildFieldResolver = require(script.Parent.schemaUtils.buildFieldResolver)
local addMockResolvers = require(script.Parent.schemaUtils.addMockResolvers)

local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails

local GraphQLServer = {}
GraphQLServer.__index = GraphQLServer

type DataLoaderInitializer = {
	makeDataLoader: (fetch, any) -> DataLoader,
	dataLoaderOptions: any,
}

type ServerOptions = {
	port: string?,
	typeDefs: string?,
	resolvers: Object?,
	mockResolvers: Object?,
	fetchImpl: fetch?,
	dataLoaderInitializers: {
		[string]: DataLoaderInitializer,
	}?,
}

type GraphQLServer = {
	port: string,
	schema: GraphQLSchema,
	rootValue: any,
	typeResolver: GraphQLTypeResolver<any, any>,
	fetchImpl: fetch,
	fetchLocal: (GraphQLServer, RequestOptions) -> Promise<any>,
	dataLoaderInitializers: {
		[string]: DataLoaderInitializer,
	}?,
}

type RequestOptions = {
	body: string,
	query: string?,
	mutation: string?,
	variables: Object?,
}

local defaultDataLoaders = {
	thumbnails = {
		makeDataLoader = dataLoaders.makeThumbnailsDataLoader,
		dataLoaderOptions = {
			batchSize = 100,
			batchDelay = 0,
		},
	},
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
	if GetFFlagApolloClientFetchThumbnails() then
		self.dataLoaderInitializers = Object.assign({}, defaultDataLoaders, options.dataLoaderInitializers or {})
	end
	setmetatable(self, GraphQLServer)
	return (self :: any) :: GraphQLServer
end

function GraphQLServer:fetchLocal(requestOptions: RequestOptions): Promise<any>
	local request = if requestOptions then HttpService:JSONDecode(requestOptions.body) else {}

	local loaders = {}
	if GetFFlagApolloClientFetchThumbnails() then
		for key, initializer in self.dataLoaderInitializers do
			loaders[key] = initializer.makeDataLoader(self.fetchImpl, initializer.dataLoaderOptions)
		end
	end

	return Promise.new(function(resolve, reject)
		GraphQL.graphql({
			schema = self.schema,
			source = request.query or request.mutation,
			rootValue = self.rootValue,
			contextValue = {
				fetchImpl = self.fetchImpl,
				dataLoaders = loaders,
			},
			typeResolver = self.typeResolver,
			fieldResolver = self.fieldResolver,
			variableValues = request.variables,
		}):andThen(function(response)
			resolve(Response.new(response))
			if GetFFlagApolloClientFetchThumbnails() then
				for _, loader in loaders do
					loader:clearAll()
				end
			end
		end)
	end)
end

return GraphQLServer
