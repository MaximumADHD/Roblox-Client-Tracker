-- TODO: Delete this file when deleting the flag: LuaAppConvertUniverseIdToStringV364
local FFlagLuaAppConvertUniverseIdToString = settings():GetFFlag("LuaAppConvertUniverseIdToStringV364")

return function(universeId)
	-- When the flag is on, we've converted the universe id to string at the place we received it
	if FFlagLuaAppConvertUniverseIdToString then
		return universeId
	else
		return tostring(universeId)
	end
end