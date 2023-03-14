--[[
	The demoteScripts utility replaces references to plugin-specific & roblox-specific APIs.
	This allows scripts from a plugin to be used in a running place.
]]
local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)

local Dash = Framework.Dash
local forEach = Dash.forEach

local function demoteScripts(root: Instance)
	forEach(root:GetDescendants(), function(child)
		if child:IsA("ModuleScript") then
			child.Source = child.Source
				:gsub([[game:GetService%("CorePackages"%)]], [[game:GetService("ReplicatedStorage")]])
				:gsub([[game:GetService%("StudioService"%)]], "({HasInternalPermission = function() return true end})")
			Framework.Util.Embed.rewriteFlagsForScript(child)
		end
	end)
end

return demoteScripts
