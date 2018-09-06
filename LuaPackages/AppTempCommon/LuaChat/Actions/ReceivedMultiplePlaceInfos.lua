local Modules = game:GetService("CorePackages").AppTempCommon

local Common = Modules.Common
local Action = require(Common.Action)

return Action(script.Name, function(placeInfos)
	return {
		placeInfos = placeInfos,
	}
end)