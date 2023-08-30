-- TODO: Remove file once RDC is finished

local getUsername = function(userId: number | string, defaultUsername: string)
	if tonumber(userId) == 4803873896 then
		return "waffee_tiramisu"
	elseif tonumber(userId) == 4942820492 then
		return "builderman"
	end

	return defaultUsername
end

return {
	getUsername = getUsername,
}
