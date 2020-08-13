--[[
	This file is responsible for hanlding validation of animation id's.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local ValidateAnimationResult = require(Actions.ValidateAnimationResult)

-- publishInfo is a table contains the following:
-- assetId, number, defualt to 0 for new asset.
return function(publishInfo)
	return function(store)
		local function onSuccess(result)
			store:dispatch(ValidateAnimationResult(true))
		end

		local function onFail(result)
			store:dispatch(ValidateAnimationResult(false))
		end

		return publishInfo.networkInterface:validateAnimation(
			publishInfo.assetId
		):andThen(onSuccess, onFail)
	end
end