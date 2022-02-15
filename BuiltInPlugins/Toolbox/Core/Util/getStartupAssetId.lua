local StudioService = game:GetService("StudioService")

local isCli = require(script.Parent.isCli)

return function()
	if isCli() then
		return ""
	else
		return StudioService:getStartupAssetId()
	end
end
