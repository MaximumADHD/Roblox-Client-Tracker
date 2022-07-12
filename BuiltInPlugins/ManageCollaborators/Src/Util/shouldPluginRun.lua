return function()
	local DebugFlags = require(script.Parent.DebugFlags)
	if DebugFlags.RunningUnderCLI() then
		return false
	end


	if not game:GetFastFlag("ManageCollaboratorsPluginEnabled") then
		return false
	end

	return true
end
