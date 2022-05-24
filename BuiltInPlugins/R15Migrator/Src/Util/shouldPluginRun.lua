return function()
	local DebugFlags = require(script.Parent.DebugFlags)
	if DebugFlags.RunningUnderCLI() then
		return false
	end

	-- TODO New Plugin Setup: Plugins should probably be internal-only in development
	local hasInternalPermission = require(script.Parent.hasInternalPermission)
	if not hasInternalPermission() then
		return false
	end

    if not game:GetFastFlag("DebugR15MigratorPlugin") then
        return
    end

	return true
end
