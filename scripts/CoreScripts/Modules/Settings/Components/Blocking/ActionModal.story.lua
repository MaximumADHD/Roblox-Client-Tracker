local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local Cryo = require(CorePackages.Packages.Cryo)
local ActionModal = require(script.Parent.ActionModal)

local noOpt = function() end

return function(props)
	return Roact.createElement(
		ActionModal,
		Cryo.Dictionary.join({
			body = "block now",
			cancel = noOpt,
			cancelText = "Cancel",
			displayName = "DisplayName",
			title = "remove someone",
			block = noOpt ,
			blockText = "Block" ,
			blockAndReport = noOpt ,
			blockAndReportText = "BlockAndReport" ,
		}, props)
	)
end
