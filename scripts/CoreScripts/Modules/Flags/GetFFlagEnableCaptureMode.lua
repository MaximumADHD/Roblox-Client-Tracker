game:DefineFastFlag("EnableCaptureMode", false)
game:DefineFastString("EnableCaptureModePlaceIds", "")

return function()
	local enabledPlaceIds = game:GetFastString("EnableCaptureModePlaceIds")

	for enabledPlaceIdString in enabledPlaceIds:gmatch("%d+") do
		if tonumber(enabledPlaceIdString) == game.PlaceId then
			return true
		end
	end

	return game:GetFastFlag("EnableCaptureMode")
end
