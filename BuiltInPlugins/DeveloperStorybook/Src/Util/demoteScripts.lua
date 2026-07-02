--[[
	The demoteScripts utility replaces references to plugin-specific & roblox-specific APIs.
	This allows scripts from a plugin to be used in a running place.
]]
local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)

local Dash = require(Main.Packages.Dash)
local forEach = Dash.forEach

local FFlagStorybookDemoteScriptsLimit = game:DefineFastFlag("StorybookDemoteScriptsLimit", false)

local FIntScriptStringLimit = if FFlagStorybookDemoteScriptsLimit
	then game:GetFastInt("ScriptStringLimit")
	else nil :: never

local function demoteScripts(root: Instance)
	forEach(root:GetDescendants(), function(child)
		if child:IsA("ModuleScript") then
			if FFlagStorybookDemoteScriptsLimit and #child.Source > FIntScriptStringLimit then
				warn("Skipping demoteScripts for", child:GetFullName(), "because it's too large")
				return
			end
			child.Source = child.Source
				:gsub([[game:GetService%("CorePackages"%)]], [[game:GetService("ReplicatedStorage")]])
				:gsub([[game:GetService%("StudioService"%)]], "({HasInternalPermission = function() return true end})")
			Framework.Util.Embed.rewriteFlagsForScript(child)
		end
	end)
end

return demoteScripts
