--[[
	Debug Flags are String, Bool or IntValue Instances defined under the Workspace.PluginNameFlags folder
]]
local Main = script.Parent
local types = require(Main.types)
type DebugFlags = types.DebugFlags

local Workspace = game:GetService("Workspace")

local function getDebugFlags(pluginName: string?): DebugFlags
	pluginName = pluginName or ""

	local flagsFolder = Workspace:FindFirstChild(pluginName .. "Flags")
	return setmetatable({}, {
		__index = function(_, name: string)
			-- Return nil if the flag does not exist
			if not flagsFolder then
				return nil
			end
			local instance = flagsFolder:FindFirstChild(name)
			if not instance then
				return nil
			end
			local hasValue = instance.ClassName == "StringValue" or instance.ClassName == "BoolValue" or instance.ClassName == "IntValue"
			if hasValue then
				return instance.Value
			else
				return nil
			end
		end
	})
end

return getDebugFlags
