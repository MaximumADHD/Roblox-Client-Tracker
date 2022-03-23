--[[
	Embed allows DeveloperFramework to be embedded in a place & be used in a running game.

	This is used by Developer Storybook to allow developers and designers to view how
	their components run on a target device.

	It does this by copying DevFramework into a place DM, for example into ReplicatedStorage,
	replacing incompatible files with stubs and rewriting method calls to plugin-security APIs
	with suitable placeholder values.
]]
local FFlagDeveloperStorybookMigrateToRoact17 = game:GetFastFlag("DeveloperStorybookMigrateToRoact17")

local Framework = script.Parent.Parent
local Packages = Framework.packages

local Dash = require(Packages.Dash)
local forEach = Dash.forEach
local format = Dash.format

local getDeepFolder = require(Framework.Util.getDeepFolder)

local EmbedFramework = {}

-- Install DeveloperFramework into the current place
function EmbedFramework.install(root: Instance)
	local packages = getDeepFolder({"Packages"}, root)
	if packages:FindFirstChild("Framework") then
		return
	end
	-- Copy the library into packages
	local framework = Framework:Clone() :: ModuleScript
	framework.Parent = packages
	framework.Name = "Framework"
	-- Replace roblox-security scripts with stubs
	EmbedFramework.stubScript(framework.Util.Typecheck.DocParser)
	EmbedFramework.stubScript(framework.Util.Flags)
	EmbedFramework.stubScript(framework.ContextServices.Localization)
	EmbedFramework.stubScript(framework.Style.Themes.StudioTheme)
	-- Replace flag checks with their current values
	EmbedFramework.rewriteStaticFlagsWithCurrentValues(framework)
end

function EmbedFramework.installPeerDependencies(root: Instance, pluginPackages: Folder)
	-- Copy the peer dependencies
	-- We define these manually currently because the Packages folder is hand-crafted.
	-- When we get support for peer dependencies in rotriever / packages
	-- we should derive these automatically.
	EmbedFramework.installPeerDependency(root, pluginPackages, "Cryo")
	if FFlagDeveloperStorybookMigrateToRoact17 then
		local packages = getDeepFolder({"Packages"}, root)
		local pluginIndex = pluginPackages:FindFirstChild("_Index")
		local roactRedirect = Instance.new("ModuleScript")
		roactRedirect.Name = "Roact"
		roactRedirect.Source = [[local Packages = script:FindFirstAncestor("Packages")
return require(Packages._Index["RoactCompat"]["RoactCompat"])]]
		roactRedirect.Parent = packages
		local roact17Redirect = Instance.new("ModuleScript")
		roact17Redirect.Name = "Roact17"
		roact17Redirect.Source = [[local Packages = script:FindFirstAncestor("Packages")
return require(Packages._Index["RoactCompat"]["RoactCompat"])]]
		roact17Redirect.Parent = packages
		local index = getDeepFolder({"_Index"}, packages)
		local react17Packages = {
			"LuauPolyfill",
			"InfiniteScroller",
			"Promise",
			"React",
			"ReactReconciler",
			"ReactRoblox",
			"RoactCompat",
			"Scheduler",
			"Shared",
		}
		forEach(react17Packages, function(libraryName: string)
			local library = pluginIndex:FindFirstChild(libraryName)
			local embeddedLibrary = library:Clone()
			embeddedLibrary.Parent = index
		end)
		EmbedFramework.installPeerDependency(root, pluginPackages, "ReactIs")
	else
		EmbedFramework.installPeerDependency(root, pluginPackages, "Roact")
	end
	EmbedFramework.installPeerDependency(root, pluginPackages, "RoactRodux")
	EmbedFramework.installPeerDependency(root, pluginPackages, "Rodux")
end

function EmbedFramework.installPeerDependency(root: Instance, pluginPackages: Folder, packageName: string)
	local packages = getDeepFolder({"Packages"}, root)
	local pluginIndex = pluginPackages:FindFirstChild("_Index")
	if packages:FindFirstChild(packageName) then
		return
	end
	local redirect = pluginPackages:FindFirstChild(packageName):Clone()
	redirect.Parent = packages
	local libraryName = redirect.Source:match('PackageIndex%[%"([^"]+)%"%]')
	local library = pluginIndex:FindFirstChild(libraryName)
	local index = getDeepFolder({"_Index"}, packages)
	local embeddedLibrary = library:Clone()
	embeddedLibrary.Parent = index
end

function EmbedFramework.stubScript(moduleScript: ModuleScript)
	local parent = moduleScript.Parent
	if parent then
		local stub = parent:FindFirstChild(moduleScript.Name .. ".stub")
		stub.Parent = parent
		stub.Name = moduleScript.Name
		moduleScript.Name = moduleScript.Name .. "_stubbed"
	end
end

function EmbedFramework.rewriteStaticFlagsWithCurrentValues(framework: ModuleScript)
	EmbedFramework.rewriteFlagsForScript(framework)
	EmbedFramework.rewriteFlagsForScript(framework:FindFirstChild("Util") :: ModuleScript)
	EmbedFramework.rewriteFlagsForScript(framework:FindFirstChild("UI") :: ModuleScript)
	EmbedFramework.rewriteFlagsForScript(framework:FindFirstChild("StudioUI") :: ModuleScript)
	forEach(framework:GetChildren(), function(folder: Instance)
		forEach(folder:GetDescendants(), function(child: Instance)
			if child:IsA("ModuleScript") then
				EmbedFramework.rewriteFlagsForScript(child :: ModuleScript)
			end
		end)
	end)
end

-- Lua doesn't differentiate between function call expressions and statements, so we need to
-- wrap our replaced Lua flag value with a function which returns the mock value.
-- This is because in Lua, function calls are both statements and expressions.
-- It doesn't matter much which function this is, but it needs to be in global scope.
-- The "select" function happens to have a suitable API.
-- e.g. for "FFlagEnableBlah" and 5 this will output: select(2, "FFlagEnableBlah", 5)
local function rewriteMethodCall(name: string, value: any)
	return format('select(2, "{}", {:?})', name, value)
end

-- TODO Luau: Support generic methods
-- tryCall<T>(fn: () -> T, default: T)
local function tryCall(fn: () -> any, default: any)
	local ok, result = pcall(function()
		return fn()
	end)
	if ok then
		return result
	else
		return default
	end
end

local function getFlag(flagName: string)
	return tryCall(function()
		return game:GetFastFlag(flagName)
	end, false)
end

local function getFeature(featureName: string)
	return tryCall(function()
		return game:GetEngineFeature(featureName)
	end, featureName)
end

local function getString(stringName: string)
	return tryCall(function()
		return game:GetFastString(stringName)
	end, stringName)
end

local function getInt(intName: string)
	return tryCall(function()
		return game:GetFastInt(intName)
	end, intName)
end

local function getFVariable(settingName: string)
	return tryCall(function()
		return settings():GetFVariable(settingName)
	end, false)
end

local function rewriteFlag(flagName: string)
	return rewriteMethodCall(flagName, getFlag(flagName))
end

local function rewriteEngineFeature(featureName: string)
	return rewriteMethodCall(featureName, getFeature(featureName))
end
local function rewriteString(stringName: string)
	return rewriteMethodCall(stringName, getString(stringName))
end
local function rewriteInt(intName: string)
	return rewriteMethodCall(intName, getInt(intName))
end
local function rewriteSetting(settingName: string)
	return rewriteMethodCall(settingName, getFVariable(settingName))
end

function EmbedFramework.rewriteFlagsForScript(script: ModuleScript)
	-- These API calls are roblox-security only, so cannot be used in a running game
	script.Source = script.Source
		:gsub([[game:DefineFastFlag%(%s*"([^"]+)"[^)]*%)]], rewriteFlag)
		:gsub([[game:DefineFastString%(%s*"([^"]+)"[^)]*%)]], rewriteString)
		:gsub([[game:GetEngineFeature%(%s*"([^"]+)"[^)]*%)]], rewriteEngineFeature)
		:gsub([[game:GetFastFlag%(%s*"([^"]+)"[^)]*%)]], rewriteFlag)
		:gsub([[game:GetFastString%(%s*"([^"]+)"[^)]*%)]], rewriteString)
		:gsub([[game:GetFastInt%(%s*"([^"]+)"[^)]*%)]], rewriteInt)
		:gsub([[settings%(%):GetFFlag%(%s*"([^"]+)"%)]], rewriteFlag)
		:gsub([[settings%(%):GetFVariable%(%s*"([^"]+)"%)]], rewriteSetting)
		:gsub([[settings%(%):GetFVariable%(%s*"([^"]+)"%)]], rewriteSetting)
		:gsub([[game:GetService%("StudioService"%)]], [[({StudioLocaleId = "en-us", GetPropertyChangedSignal = function() return {Connect = function() return {Disconnect = function() end} end} end, HasInternalPermission = function() return true end})]])
		:gsub([[game:GetService%("ABTestService"%)]], [[({GetVariant = function() return "Control" end})]])
		:gsub([[settings%(%)%.Studio]], [[({Theme = {Name = "Light", GetColor = function(_, color) return color == Enum.StudioStyleGuideColor.MainBackground and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(0, 0, 0) end}, ThemeChanged = {Connect = function() return {Disconnect = function() end} end}})]])
		
end

return EmbedFramework
