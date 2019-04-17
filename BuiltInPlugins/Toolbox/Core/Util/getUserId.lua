local StudioService = game:GetService("StudioService")

-- TODO: We should fetch this only once per plugin session.
return function()
	local userId = 0
	pcall(function()
		userId = StudioService:GetUserId()
	end)

	return userId
end