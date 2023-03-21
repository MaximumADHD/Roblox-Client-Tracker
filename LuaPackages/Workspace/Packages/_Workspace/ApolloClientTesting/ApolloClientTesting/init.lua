local CorePackages = game:GetService("CorePackages")
local Package = require(CorePackages.Packages.Dev.ApolloClientTesting)

export type MockedProviderProps<TSerializedCache> = Package.MockedProviderProps<TSerializedCache>
export type MockLink = Package.MockLink
export type MockedResponse<TData> = Package.MockedResponse<TData>
export type ResultFunction<T> = Package.ResultFunction<T>
export type MockSubscriptionLink = Package.MockSubscriptionLink

return Package
