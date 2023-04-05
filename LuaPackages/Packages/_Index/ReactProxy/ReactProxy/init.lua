--!strict
local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

-- Leverage luau's greedy type behavior to type this package with the newest
-- definitions from rc11; we cast the rc10 import to any to supress the warnings
local React
if Roact17UpgradeFlag.getRolloutForId() then
	React = require(Packages.React_rc19)
else
	React = require(Packages.React_rc18) :: any
end

type Object = { [string]: any }

export type LazyComponent<T, P> = {
	["$$typeof"]: number,
	_payload: P,
	_init: (payload: P) -> T,
	--   ...
}
-- local ReactLazy = require(script.ReactLazy)
-- export type LazyComponent<T, P> = ReactLazy.LazyComponent<T, P>

local SharedModule = require(script.Shared)
-- ROBLOX deviation START: bindings support
export type Binding<T> = SharedModule.ReactBinding<T>
export type BindingUpdater<T> = SharedModule.ReactBindingUpdater<T>
-- ROBLOX deviation END

export type StatelessFunctionalComponent<P> = SharedModule.React_StatelessFunctionalComponent<P>
-- ROBLOX deviation START: we use the definitely-typed version of this, which appears to work for flowtype in VirtualizedList, etc
export type ComponentType<P> = ComponentClass<P> | FC<P>
-- ROBLOX deviation END
export type AbstractComponent<Config, Instance> = SharedModule.React_AbstractComponent<Config, Instance>
export type ElementType = SharedModule.React_ElementType
export type Element<C> = SharedModule.React_Element<C>
export type Key = SharedModule.React_Key
export type Ref<ElementType> = SharedModule.React_Ref<ElementType>
export type Node = SharedModule.React_Node
export type Context<T> = SharedModule.ReactContext<T>
-- ROBLOX TODO: Portal
export type ElementProps<C> = SharedModule.React_ElementProps<C>
export type ElementConfig<T> = SharedModule.React_ElementConfig<T>
export type ElementRef<C> = SharedModule.React_ElementRef<C>
-- ROBLOX TODO: Config
-- ROBLOX TODO: ChildrenArray

-- ROBLOX deviation START: manual type exports since that's not free with 'return React'
export type ComponentClass<P> = SharedModule.React_ComponentType<P>
export type PureComponent<Props, State = nil> = SharedModule.React_PureComponent<Props, State>
-- ROBLOX deviation END

-- ROBLOX deviation START: definitelytyped typescript exports
export type ReactElement<Props = Object, ElementType = any> = SharedModule.ReactElement<Props, ElementType>
-- we don't include ReactText in ReactChild since roblox renderer doesn't support raw text nodes
export type ReactChild = SharedModule.ReactElement<any, string> | string | number
export type FC<P> = SharedModule.React_StatelessFunctionalComponent<P>
export type ReactNode = SharedModule.React_Node
-- ROBLOX deviation END

-- ROBLOX deviation START: export React types that are flowtype built-ins and used by VirtualizedList, etc
export type React_AbstractComponent<Props, Instance> = SharedModule.React_Component<Props, Instance>
export type React_Component<Props, State> = SharedModule.React_Component<Props, State>
export type React_ComponentType<P> = SharedModule.React_ComponentType<P>
export type React_Context<T> = SharedModule.React_Context<T>
export type React_Element<ElementType> = SharedModule.React_Element<ElementType>
export type React_ElementType = SharedModule.React_ElementType
export type React_Node = SharedModule.React_Node

-- ROBLOX deviation END

return React
