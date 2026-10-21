--!nocheck
-- TODO: When updating all packages to new Roact/React remove this file

local FFlagDevFrameworkUseInternalReact = game:DefineFastFlag("DevFrameworkUseInternalReact", false)

local Framework = script.Parent.Parent

local react = Framework.Parent.Parent.Parent:FindFirstChild("React")

if react and react:IsA("ModuleScript") then
	return require(react)
end

if FFlagDevFrameworkUseInternalReact then
	if _G.__DEV_FRAMEWORK_USE_INTERNAL_REACT__ then
		return require(Framework.Parent.React)
	end
end

-- Temporary aliases copied from React, so we can use types already, though without real type checking unless we delete the file
export type Binding<T> = any
export type BindingUpdater<T> = any
export type LazyComponent<T, P> = any
export type StatelessFunctionalComponent<P> = any
export type ComponentType<P> = any
export type AbstractComponent<Config, Instance> = any
export type ElementType = any
export type Element<C> = any
export type Key = any
export type Ref<ElementType> = any
export type Node = any
export type Context<T> = any
export type ElementProps<C> = any
export type ElementConfig<T> = any
export type ElementRef<C> = any
export type ComponentClass<P> = any
export type PureComponent<Props, State = nil> = any
export type ReactElement<Props = {}, ElementType = any> = any
export type ReactChild = any
export type FC<P> = any
export type ReactNode = any
export type React_AbstractComponent<Props, Instance> = any
export type React_Component<Props, State> = any
export type React_ComponentType<P> = any
export type React_Context<T> = any
export type React_Element<ElementType> = any
export type React_ElementType = any
export type React_Node = any

return ""
