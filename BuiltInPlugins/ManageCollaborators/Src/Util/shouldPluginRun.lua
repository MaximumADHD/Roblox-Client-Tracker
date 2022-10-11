return function()
	local DebugFlags = require(script.Parent.DebugFlags)
	if DebugFlags.RunningUnderCLI() then
		return false
	end

	return true
end
