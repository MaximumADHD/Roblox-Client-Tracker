local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetCurrentScreen = require(Actions.SetCurrentScreen)

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)

return function()
	return function(store)
		local state = store:getState()

		if state.screenFlowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.ASSET_VALIDATION))
		else
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.CONFIGURE_ASSET))
		end
	end
end
