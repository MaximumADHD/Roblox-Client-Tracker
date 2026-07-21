local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Content = require(script.Parent.Content)
local ContentPlugin = require(script.Parent.ContentPlugin)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)

export type PopoverContentProps = Content.PopoverContentProps

local function PopoverContentProxy(props: PopoverContentProps, forwardedRef: React.Ref<GuiObject>?): React.ReactNode
	local _plugin, isPluginElevated = usePlugin()

	local resolvedProps = props
	if forwardedRef then
		resolvedProps = table.clone(props);
		(resolvedProps :: any).ref = forwardedRef
	end

	if isPluginSecurity() and isPluginElevated then
		return React.createElement(ContentPlugin, resolvedProps)
	end
	return React.createElement(Content, resolvedProps)
end

return React.forwardRef(PopoverContentProxy)
