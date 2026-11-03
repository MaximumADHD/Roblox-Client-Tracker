local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local Plugin = Framework.ContextServices.Plugin

--[=[
	Creates a state variable that is synced with a plugin setting under the given key


	@param settingKey The key to use for storing the setting.
	@param defaultValue The value to use if the setting is not yet set.
	@param options Optional table for custom serialization.
	@return A tuple containing the current `value` and a `setValue` function, similar to `React.useState`.

	The value is saved to the settings only on the first update. Default value is not saved on the first use.

	For complex data types like tables that cannot be stored directly, you can provide optional `serialize` and `deserialize` functions. For example, you can use `HttpService:JSONEncode` and `HttpService:JSONDecode` to store tables as JSON strings.

	The hooke doesn't track ket, plugin and default, assuming they are stable.

	@example
	```luau
	-- Simple example with a boolean value
	local function SettingsPanel()
		local reducedMotion, setReducedMotion = usePluginSetting("PluginNameReducedMotion", false)

		return React.createElement(Checkbox, {
			label = "Enable Reduced Motion",
			isChecked = reducedMotion,
			onActivated = function()
				setReducedMotion(function(oldValue) return not oldValue end)
			end,
		})
	end
	```

	@example
	```luau
	-- Example with a table, using JSON for serialization
	local HttpService = game:GetService("HttpService")

	local function WindowManager()
		local defaultPosition = { x = 0, y = 0 }
		local windowPosition, setWindowPosition = usePluginSetting("PluginNameWindowPosition", defaultPosition, {
			serialize = function(value)
				return HttpService:JSONEncode(value)
			end,
			deserialize = function(value)
				local success, result = pcall(HttpService.JSONDecode, HttpService, value)
				return if success then result else defaultPosition
			end,
		})
		-- ...
	end
	```
]=]
local function usePluginSetting<T>(
	settingKey: string,
	defaultValue: T?,
	options: {
		serialize: (value: T) -> string,
		deserialize: (value: string) -> T,
	}?
): (T?, (T | (T) -> T) -> ())
	local plugin = Plugin:use():get()
	local isMount = React.useRef(true)

	local value, setValue = React.useState(function()
		local setting = plugin:GetSetting(settingKey)

		if setting ~= nil then
			return if options then options.deserialize(setting) else setting
		else
			return defaultValue
		end
	end)

	React.useEffect(function()
		if isMount.current then
			isMount.current = false
			return
		end
		plugin:SetSetting(settingKey, if options then options.serialize(value) else value)
	end, { value })

	return value, setValue
end

return usePluginSetting
