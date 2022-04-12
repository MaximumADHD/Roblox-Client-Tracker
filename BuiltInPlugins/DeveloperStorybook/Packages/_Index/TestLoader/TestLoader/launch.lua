local Main = script.Parent
local Plugin = Main.Parent.Parent.Parent.Parent
local ModuleLoader = require(Main.ModuleLoader)
local getDebugFlags = require(Main.getDebugFlags)
local isCli = require(Main.isCli)
local types = require(Main.types)
type DebugFlags = types.DebugFlags

-- Run the function and handle exit status correctly if in CLI
local function runAndCheck(fn: (Instance, DebugFlags) -> (), folder: Instance, debugFlags: DebugFlags)
	local ok, err = pcall(fn, folder, debugFlags)
	if not ok then
		warn(err)
	end
	if isCli() then
		local processService = game:GetService("ProcessService")
		processService:ExitAsync(ok and 0 or 1)
	end
end

local function launch(pluginName: string, folder: Instance)
	-- Run tests if flagged to, otherwise avoid requiring TestEZ and initializing TestService
	local debugFlags = getDebugFlags(pluginName)

	if debugFlags.EnableRoactConfigs then
		-- The __DEV__ global is only used by Roact 17, but we can set it unconditionally
		_G.__DEV__ = true

		-- After the global is set accordingly, we can require the library and invoke the legacy
		-- configuration command. The compatibility layer for Roact 17 will make this a no-op
		local Roact = require(Plugin.Packages.Roact)
		Roact.setGlobalConfig({
			elementTracing = true,
			propValidation = true,
			typeChecks = true
		})
	end

	if not debugFlags.RunTests and not debugFlags.RunRhodiumTests then
		return
	end
	
	-- Allow Roact17 tests to run in the test place, where the plugin is also active
	-- Roact17 cannot be required in both live & test mode, so load Roact 17 tests inside a sandbox
	if hasRoact17 and not isCli() then
		local runTestsInternal = ModuleLoader:load(script.Parent.runTestsInternal)
		runAndCheck(runTestsInternal, folder, debugFlags)
	else
		local runTestsInternal = require(script.Parent.runTestsInternal)
		runAndCheck(runTestsInternal, folder, debugFlags)
	end
end

return launch
