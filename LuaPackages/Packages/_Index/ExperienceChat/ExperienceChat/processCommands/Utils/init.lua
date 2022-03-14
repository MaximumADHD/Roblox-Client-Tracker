local aliases = {
	"mute",
	"unmute",
	"help",
	"t",
	"team",
}
local function getTextAfterCommand(message: string)
	return string.match(message, " (.*)")
end

local function getDisplayNameFromCommand(message: string)
	return getTextAfterCommand(message)
end

local function isCommand(message: string)
	local endOfCommand = string.find(message, " ") or 0
	if message and string.sub(message, 1, 1) == "/" then
		local displayName = getDisplayNameFromCommand(message)
		local command = string.sub(message, 2, endOfCommand - 1)
		if not displayName and command == "help" then
			return "help"
		elseif displayName and command ~= "help" then
			for _, alias in ipairs(aliases) do
				if alias == command then
					return alias
				end
			end
		end
	end

	return false
end

return {
	isCommand = isCommand,
	getDisplayNameFromCommand = getDisplayNameFromCommand,
}
