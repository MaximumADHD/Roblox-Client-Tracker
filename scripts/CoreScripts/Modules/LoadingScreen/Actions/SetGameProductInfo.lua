local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)

return Rodux.makeActionCreator(script.Name, function(productInfo)
	ArgCheck.isType(productInfo, "table", "SetGameProductInfo action expects productInfo to be a table")
	return {
		productInfo = productInfo,
	}
end)