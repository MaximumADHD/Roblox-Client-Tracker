local Dash = {}

local Types = require(script.Types)

export type Array<Value> = Types.Array<Value>
export type Args<Value> = Types.Args<Value>
export type Map<Key, Value> = Types.Map<Key, Value>
export type Set<Key> = Types.Set<Key>
export type Table = Types.Table
export type Class<Object> = Types.Class<Object>
export type AnyFunction = Types.AnyFunction

-- Require and add the Dash functions to the Dash table
for _, fn in pairs(script:GetChildren()) do
	if fn.ClassName == "ModuleScript" then
		Dash[fn.Name] = require(fn)
	end
end

return Dash.freeze("Dash", Dash, true)
