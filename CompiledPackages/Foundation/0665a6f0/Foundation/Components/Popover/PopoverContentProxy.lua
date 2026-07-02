local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Content = require(script.Parent.Content)
local ContentPlugin = require(script.Parent.ContentPlugin)
local Flags = require(Foundation.Utility.Flags)
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

	local shouldUsePlugin = Flags.FoundationPopoverPluginSupport
	if Flags.FoundationPopoverPluginSecurityGate then
		shouldUsePlugin = shouldUsePlugin and isPluginSecurity()
	end
	if shouldUsePlugin and isPluginElevated then
		return React.createElement(ContentPlugin, resolvedProps)
	end
	return React.createElement(Content, resolvedProps)
end

return React.forwardRef(PopoverContentProxy)
