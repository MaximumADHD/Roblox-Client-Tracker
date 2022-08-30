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

	if not game:GetFastFlag("EnableTagEditorPlugin3") then
		return false
	end


	return true
end
