--[[
	Get flag values. Does not throw if the flag is not defined.
--]]

local FFlag = {
	flagMap = {}
}

-- bool FFlag:isEnabled(string flag)
function FFlag:isEnabled(flag)
	if (self.flagMap[flag] == nil) then
		local flagExists, flagValue = pcall(function ()
			return settings():GetFFlag(flag)
		end)
		self.flagMap[flag] = flagExists and flagValue
	end

	return self.flagMap[flag]
end

return FFlag