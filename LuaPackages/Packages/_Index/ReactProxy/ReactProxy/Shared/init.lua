--!strict
-- ROBLOX deviation: Promote `shared` to an actual unpublished package with a
-- real interface instead of just a bag of loose source code
type Object = { [string]: any }

local ReactTypes = require(script.ReactTypes)
local flowtypes = require(script["flowtypes.roblox"])
local ReactElementType = require(script.ReactElementType)
-- local ReactFiberHostConfig = require(script.ReactFiberHostConfig)
-- local ReactSharedInternals = require(script.ReactSharedInternals)

-- Re-export all top-level public types
export type ReactEmpty = ReactTypes.ReactEmpty
export type ReactFragment = ReactTypes.ReactFragment
export type ReactNodeList = ReactTypes.ReactNodeList
export type ReactProviderType<T> = ReactTypes.ReactProviderType<T>
export type ReactConsumer<T> = ReactTypes.ReactConsumer<T>
export type ReactProvider<T> = ReactTypes.ReactProvider<T>
export type ReactContext<T> = ReactTypes.ReactContext<T>
export type ReactPortal = ReactTypes.ReactPortal
export type RefObject = ReactTypes.RefObject
export type EventPriority = ReactTypes.EventPriority
export type ReactFundamentalComponentInstance<C, H> =
	ReactTypes.ReactFundamentalComponentInstance<C, H>
export type ReactFundamentalImpl<C, H> = ReactTypes.ReactFundamentalImpl<C, H>
export type ReactFundamentalComponent<C, H> = ReactTypes.ReactFundamentalComponent<C, H>
export type ReactScope = ReactTypes.ReactScope
export type ReactScopeQuery = ReactTypes.ReactScopeQuery
export type ReactScopeInstance = ReactTypes.ReactScopeInstance
-- ROBLOX deviation START: Re-export bindings types
export type ReactBinding<T> = ReactTypes.ReactBinding<T>
export type ReactBindingUpdater<T> = ReactTypes.ReactBindingUpdater<T>
-- ROBLOX deviation END
export type MutableSourceVersion = ReactTypes.MutableSourceVersion
export type MutableSourceGetSnapshotFn<Source, Snapshot> =
	ReactTypes.MutableSourceGetSnapshotFn<Source, Snapshot>
export type MutableSourceSubscribeFn<Source, Snapshot> = ReactTypes.MutableSourceSubscribeFn<
	Source,
	Snapshot
>
export type MutableSourceGetVersionFn = ReactTypes.MutableSourceGetVersionFn
export type MutableSource<Source> = ReactTypes.MutableSource<Source>
export type Wakeable = ReactTypes.Wakeable
export type Thenable<R> = ReactTypes.Thenable<R>
export type Source = ReactElementType.Source
export type ReactElement<P = Object, T = any> = ReactElementType.ReactElement<P, T>
-- export type OpaqueIDType = ReactFiberHostConfig.OpaqueIDType
-- export type Dispatcher = ReactSharedInternals.Dispatcher

-- re-export flowtypes from here. I wonder if this should be a separate 'package'?
export type React_Ref<ElementType> = flowtypes.React_Ref<ElementType>
export type React_Context<T> = flowtypes.React_Context<T>
export type React_AbstractComponent<Config, Instance> = flowtypes.React_AbstractComponent<
	Config,
	Instance
>
export type React_ComponentType<Config> = flowtypes.React_ComponentType<Config>
export type React_PureComponent<Props, State = nil> = flowtypes.React_PureComponent<
	Props,
	State
>
export type React_Component<Props, State> = flowtypes.React_Component<Props, State>
export type React_ElementProps<ElementType> = flowtypes.React_ElementProps<ElementType>
export type React_StatelessFunctionalComponent<Props> =
	flowtypes.React_StatelessFunctionalComponent<Props>
export type React_Node = flowtypes.React_Node
export type React_Element<ElementType> = flowtypes.React_Element<ElementType>
export type React_ElementType = flowtypes.React_ElementType
export type React_ElementConfig<C> = flowtypes.React_ElementConfig<C>
export type React_ElementRef<C> = flowtypes.React_ElementRef<C>
export type React_Portal = flowtypes.React_Portal
export type React_Key = flowtypes.React_Key

return {}
