--[[
	Types which are used across all of DevFramework and can also be used by any built-in plugins.

	Currently you can't export Luau types, so you must require this file directly to access
	the types i.e. local Types = require(Framework.Types) where Framework is the root ModuleScript
	(rather than a table)
]]

-- Dummy placeholder type
-- Can be used when we ignore the type, or for method calls (e.g. `type Foo = { doSomething : (_, string) -> ()})` for `foo:doSomething()`)
export type _ = any

-- TODO #luau: support these internally
export type Array<T> = {[number]: T}
export type Record<K, V> = {[K]: V}
export type AnyRecord = Record<any, any>

-- TODO #lua-foundation: types for Roact & Rodux
export type Roact = any
export type RoactComponent<T> = any
export type RoactElement = any
export type RoduxStore = any

-- Style types
export type Padding = number | {
	Left: number?,
	Top: number?,
	Bottom: number?,
	Right: number?,
}

-- Additional props from wrappers can be any valid prop
export type WrapperProps = {
	[string]: any
}

-- TODO #lua-foundation: Types for symbols
export type StyleModifier = any

export type StudioTheme = any


-- Framework context items
export type ContextItem = {
	destroy : () -> (),
}

export type Analytics = ContextItem & {
	report : (_, event : string, ...any) -> (),
}

export type Localization = ContextItem & {
	getText : (_, scope : string, key : string, args : {[string] : any}?) -> string,
}

export type Stylizer = ContextItem & {}


return nil
