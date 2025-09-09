local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")

local FFlagDebugCoreScriptRoactInspector = game:DefineFastFlag("DebugCoreScriptRoactInspector", false)
local FFlagDebugEnableHotModuleReplacementStudio = game:DefineFastFlag("DebugEnableHotModuleReplacementStudio", false)

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

	if FFlagDebugEnableHotModuleReplacementStudio then
		local HMR = require(CorePackages.Packages.Dev.HMR)

		local hotRuntime = HMR.Runtime.new()

		local ReactHMR = hotRuntime:require(CorePackages.Packages.Dev.ReactHMR)

		hotRuntime:registerTransformer(ReactHMR.ReactRefresh())

		local function coreScriptTransformer(source: string, _dmPath: string)
			return source:gsub('ScriptContext:AddCoreScriptLocal%("([^"]+)"%s*,.-%s*%)', function(path)
					local newPath = path:gsub('/', '.')
					return 'require(game:GetService("CoreGui").CoreScripts.' .. newPath .. ')'
			end)
		end

		hotRuntime:registerTransformer(coreScriptTransformer)

		hotRuntime:require(game:GetService("CoreGui").CoreScripts.StarterScript)
	else
		ScriptContext:AddCoreScriptLocal("StarterScript", script.Parent)
	end
end
