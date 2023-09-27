--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).Requests.GetGameNameAndDescription
local httpRequest = require(CorePackages.AppTempCommon.Temp.httpRequest)

local httpImpl = httpRequest(HttpRbxApiService)

local TnsModule = script.Parent.Parent
local SetPlaceInfo = require(TnsModule.Actions.SetPlaceInfo)

return function(gameId)
	return function(store)
		if gameId == 0 then
			return
		end
		GetGameNameAndDescription(httpImpl, gameId):andThen(function(result)
			store:dispatch(SetPlaceInfo(result.Name, result.Description))
		end):catch(function()
			warn("Unable to fetch place info for TrustAndSafety.")
		end)
	end
end
