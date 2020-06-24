local Plugin = script.Parent.Parent.Parent

local AssetsMock = require(Plugin.Core.Reducers.AssetsMock)
local NetworkErrorsMock = require(Plugin.Core.Reducers.NetworkErrorsMock)
local PageInfoMock = require(Plugin.Core.Reducers.PageInfoMock)
local VotingReducerMock = require(Plugin.Core.Reducers.VotingReducerMock)
local PurchaseMock = require(Plugin.Core.Reducers.PurchaseMock)
local PackagesMock = require(Plugin.Core.Reducers.PackagesMock)

return function(state, action)
	return {
		assets = AssetsMock(state and state.assets, action),
		networkErrors = NetworkErrorsMock(state and state.networkErrors, action),
		pageInfo = PageInfoMock(state and state.pageInfo, action),
		voting = VotingReducerMock(state and state.voting, action),
		purchase = PurchaseMock(state and state.purchase, action),
		packages = PackagesMock(state and state.packages, action)
	}
end
