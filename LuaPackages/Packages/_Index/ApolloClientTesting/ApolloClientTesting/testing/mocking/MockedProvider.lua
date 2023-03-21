-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/mocking/MockedProvider.tsx
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean, Object = LuauPolyfill.Boolean, LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local React = require(rootWorkspace.React)
local ApolloClientModule = require(rootWorkspace.ApolloClient)
local coreModule = require(rootWorkspace.ApolloClient)
local ApolloClient = coreModule.ApolloClient
type ApolloClient<TCacheShape> = coreModule.ApolloClient<TCacheShape>
type DefaultOptions = coreModule.DefaultOptions

local Cache = ApolloClientModule.InMemoryCache

local ApolloProvider = ApolloClientModule.ApolloProvider
local mockLinkModule = require(script.Parent.mockLink)
local MockLink = mockLinkModule.MockLink
type MockedResponse<TData> = mockLinkModule.MockedResponse<TData>

local apolloLinkModule = require(rootWorkspace.ApolloClient)
type ApolloLink = apolloLinkModule.ApolloLink

type Resolvers = coreModule.Resolvers

local cacheModule = require(rootWorkspace.ApolloClient)
type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>

export type MockedProviderProps<TSerializedCache> = {
	mocks: Array<MockedResponse<any>>?,
	addTypename: boolean?,
	defaultOptions: DefaultOptions?,
	cache: ApolloCache<TSerializedCache>?,
	resolvers: Resolvers?,
	childProps: Object?,
	children: any?,
	link: ApolloLink?,
}

export type MockedProviderState = { client: ApolloClient<any> }

-- ROBLOX TODO: use proper type when exported in React
export type MockedProvider = Object

local MockedProvider = React.Component:extend("MockedProvider")
MockedProvider.defaultProps = { addTypename = true }

function MockedProvider:init(props: MockedProviderProps<any>)
	self.props = props
	local mocks, addTypename, defaultOptions, cache, resolvers, link =
		props.mocks, props.addTypename, props.defaultOptions, props.cache, props.resolvers, props.link
	local client = ApolloClient.new({
		cache = Boolean.toJSBoolean(cache) and cache or Cache.new({ addTypename = addTypename }),
		defaultOptions = defaultOptions,
		link = Boolean.toJSBoolean(link) and link or MockLink.new(mocks ~= nil and mocks or {}, addTypename),
		resolvers = resolvers,
	})
	self.state = { client = client }
end

function MockedProvider:render()
	local children, childProps = self.props.children, self.props.childProps
	if React.isValidElement(children) then
		return React.createElement(ApolloProvider, {
			client = self.state.client,
		}, React.cloneElement(React.Children.only(children), Object.assign({}, childProps)))
	else
		return nil
	end
end

function MockedProvider:componentWillUnmount()
	--[[
      // Since this.state.client was created in the constructor, it's this
      // MockedProvider's responsibility to terminate it.
    ]]
	self.state.client:stop()
end

exports.MockedProvider = MockedProvider
return exports
