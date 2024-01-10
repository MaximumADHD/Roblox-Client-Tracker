-- See useProperties.lua and usePropertiesDeferred.lua for usage.

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local useForwardRef = require(UtilityRoot.useForwardRef)

export type ChangeFunc = (...any) -> ()
export type PropNames = string | { string }

return function<T>(forwardRef: React.Ref<T>, update: ChangeFunc, defer: boolean, ...: PropNames): React.Ref<T>
	-- flatten and join all prop name arguments into a single string list
	local nameList = Array.concat({}, ...)
	local onRefChange = React.useCallback(function(instance: T)
		local function onPropChange()
			update(table.unpack(Array.map(nameList, function(name)
				-- suppress type warning, runtime fail expected on invalid prop
				return (instance :: any)[name]
			end)))
		end
		local deferTask: thread? = nil
		local deferOnPropChanged = function()
			if not deferTask then
				deferTask = task.defer(function()
					deferTask = nil
					onPropChange()
				end)
			end
		end
		local connections = Array.map(nameList, function(name)
			return (instance :: T & Instance)
				:GetPropertyChangedSignal(name)
				:Connect(if defer then deferOnPropChanged else onPropChange)
		end)
		onPropChange()
		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
			if deferTask then
				task.cancel(deferTask)
			end
		end
	end, { update, table.concat(nameList, ",") } :: { any })
	return useForwardRef(forwardRef, onRefChange)
end
