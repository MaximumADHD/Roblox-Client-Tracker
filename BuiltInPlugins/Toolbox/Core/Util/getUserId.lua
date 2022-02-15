local StudioService = game:GetService("StudioService")

local isCli = require(script.Parent.isCli)

-- TODO: We should fetch this only once per plugin session.
return function()
	local userId = 0

	if isCli() then
		return 1
	end

	pcall(function()
		userId = StudioService:GetUserId()
	end)

	return userId
end
