local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")

local FFlagDebugCoreScriptRoactInspector = game:DefineFastFlag("DebugCoreScriptRoactInspector", false)

if FFlagDebugCoreScriptRoactInspector then
	local hasInternalPermission = UserSettings().GameSettings:InStudioMode()
		and game:GetService("StudioService"):HasInternalPermission()

	if hasInternalPermission then
		local DeveloperTools = require(CorePackages.Packages.Dev.DeveloperTools)
		local inspector = DeveloperTools.forCoreGui("Core UI", {
			rootInstance = "RobloxGui",
		})

		local ReactDevtoolsExtensions = require(CorePackages.Packages.Dev.ReactDevtoolsExtensions)
		inspector:initRoact(ReactDevtoolsExtensions)
	end
end

if RunService:IsServer() then
	ScriptContext:AddCoreScriptLocal("ServerStarterScript", script.Parent)
else
	-- Attach React DevTools if enabled (flag check happens in the module)
	local ReactDeveloperTools = require(CorePackages.Workspace.Packages.ReactDeveloperTools)
	ReactDeveloperTools.startup()

	ScriptContext:AddCoreScriptLocal("StarterScript", script.Parent)
end
