return function()
	local DebugFlags = require(script.Parent.DebugFlags)
	if DebugFlags.RunningUnderCLI() then
		return false
	end

	-- TODO: remove this for Beta
	local hasInternalPermission = require(script.Parent.hasInternalPermission)
	if not hasInternalPermission() then
		return false
	end

	--[[
		-- currently we're flagging in main.server.lua
		-- if we switch to the shouldPluginRun model, uncomment and fix this
		local main = script.Parent.Parent.Parent
		local getFFlagDeviceEmulatorPluginBasedUi = require(main.Src.Flags.getFFlagDeviceEmulatorPluginBasedUi)
		if not getFFlagDeviceEmulatorPluginBasedUi() then
			return false
		end
	]]

	return true
end
