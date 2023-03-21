local exports = {}

-- local mockLinkModule = require(script.Parent.mockLink)
-- type MockedResponse_ = mockLinkModule.MockedResponse_
-- local mockQueryManager = require(script.Parent.mockQueryManager).default
-- local observableQueryModule = require(script.Parent.Parent.Parent.Parent.core.ObservableQuery_types)
-- type ObservableQuery_<TData> = observableQueryModule.ObservableQuery_<TData>

-- exports.default = function(reject: (reason: any) -> any, ...: MockedResponse_): ObservableQuery_<any>
-- 	local mockedResponses = { ... }
-- 	local queryManager = mockQueryManager(reject, table.unpack(mockedResponses))
-- 	local firstRequest = mockedResponses[1].request
-- 	return queryManager:watchQuery({
-- 		query = firstRequest.query :: any,
-- 		variables = firstRequest.variables,
-- 		notifyOnNetworkStatusChange = false, -- XXX might not always be the right option. Set for legacy reasons.
-- 	})
-- end
return exports
