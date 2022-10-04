local CorePackages = game:GetService("CorePackages")
local Package = require(CorePackages.Packages.Dash)

export type Array<Value> = Package.Array<Value> 
export type Args<Value> = Package.Args<Value> 
export type Map<Key, Value> = Package.Map<Key, Value> 
export type Set<Key> = Package.Set<Key> 
export type Table = Package.Table
export type Class<Object> = Package.Class<Object> 
export type AnyFunction = Package.AnyFunction

return Package
