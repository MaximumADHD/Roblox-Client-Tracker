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

	-- TODO New Plugin Setup: Uncomment this line and replace with your flag's name.
	if not game:GetFastFlag("NestedPackagePublisherPlugin") then
		return false
	end

	-- TODO New Plugin Setup: Once your plugin is flagged, uncomment this line
	return true
end
