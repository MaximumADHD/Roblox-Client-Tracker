-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/context/index.ts

local rootWorkspace = script.Parent.Parent.Parent
local Object = require(rootWorkspace.LuauPolyfill).Object

local ApolloContextModule = require(script.ApolloContext)
local ApolloConsumerModule = require(script.ApolloConsumer)
local ApolloProviderModule = require(script.ApolloProvider)
local exports = Object.assign({}, ApolloContextModule, ApolloConsumerModule, ApolloProviderModule)

export type ApolloContextValue = ApolloContextModule.ApolloContextValue

return exports :: typeof(exports) & typeof(ApolloContextModule) & typeof(ApolloConsumerModule) & typeof(ApolloProviderModule)
