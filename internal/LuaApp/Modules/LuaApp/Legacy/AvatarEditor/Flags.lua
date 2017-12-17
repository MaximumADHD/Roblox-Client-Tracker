
local settings = settings()
local flagMap = {}

local this = {}

local getFlag = function(name)
	return settings:GetFFlag(name)
end

if UserSettings().GameSettings:InStudioMode() then
	getFlag = function(name)
		print(name.." = TRUE  (while testing in Studio)")
		return true
	end
end

function this:GetFlag(name)
	if flagMap[name] == nil then
		flagMap[name] = getFlag(name)
	end

	return flagMap[name]
end

return this
