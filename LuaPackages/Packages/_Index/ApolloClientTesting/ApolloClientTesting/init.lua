-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/testing/index.ts

local srcWorkspace = script

local invariant = require(srcWorkspace.jsutils.invariant).invariant
local DEV = require(script.utilities).DEV

invariant("boolean" == typeof(DEV), DEV)

local testingModule = require(script.testing)
export type MockedProviderProps<TSerializedCache> = testingModule.MockedProviderProps<TSerializedCache>
export type MockLink = testingModule.MockLink
export type MockedResponse<TData> = testingModule.MockedResponse<TData>
export type ResultFunction<T> = testingModule.ResultFunction<T>
export type MockSubscriptionLink = testingModule.MockSubscriptionLink

return testingModule
