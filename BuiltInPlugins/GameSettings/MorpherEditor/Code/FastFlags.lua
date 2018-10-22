-- singleton

local FastFlags = {}

FastFlags.FlagExists = {}
FastFlags.FlagValue = {}

local function isFlagOn(theFlag)
	if nil == FastFlags.FlagExists[theFlag] then
		local status, result = pcall(function () return settings():GetFFlag(theFlag) end)
		FastFlags.FlagExists[theFlag] = status
		if status then
			FastFlags.FlagValue[theFlag] = result
		end
	end	
	return FastFlags.FlagExists[theFlag] and FastFlags.FlagValue[theFlag]
end

function FastFlags.isThemesFlagOn()
	return isFlagOn("StudioLuaGameSettingsDialog2")
end

return FastFlags