local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Content = require(script.Parent.Content)
local ContentPlugin = require(script.Parent.ContentPlugin)
local Flags = require(Foundation.Utility.Flags)
local PopoverContext = require(script.Parent.PopoverContext)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)

export type PopoverContentProps = Content.PopoverContentProps

local function PopoverContentProxy(props: PopoverContentProps, forwardedRef: React.Ref<GuiObject>?): React.ReactNode
	local popoverContext = React.useContext(PopoverContext)

	local plugin, isPluginElevated
	if Flags.FoundationFixUserLevelPlugins then
		plugin, isPluginElevated = usePlugin()
	else
		plugin = usePlugin()
	end

	local isPluginSupported = if Flags.FoundationFixUserLevelPlugins
		then nil
		else React.useMemo(function()
			if plugin == nil then
				return false
			end

			--[[
				Our plugin path requires the Panels component to be available.
				Currently, this is only available to internal plugins.
			]]
			local success, _ = pcall(function()
				return plugin:GetPluginComponent("Panels")
			end)

			return success
		end, { plugin })

	local resolvedProps = props
	if forwardedRef then
		resolvedProps = table.clone(props);
		(resolvedProps :: any).ref = forwardedRef
	end

	local shouldUsePlugin = Flags.FoundationPopoverPluginSupport
	if Flags.FoundationPopoverPluginSecurityGate then
		shouldUsePlugin = shouldUsePlugin and isPluginSecurity()
	end

	if not Flags.FoundationPopoverPluginVirtualAnchor then
		local isMeasurableAnchor = popoverContext.anchor ~= nil and typeof(popoverContext.anchor) ~= "Instance"
		if isMeasurableAnchor then
			shouldUsePlugin = false
		end
	end

	if Flags.FoundationFixUserLevelPlugins then
		if shouldUsePlugin and isPluginElevated then
			return React.createElement(ContentPlugin, resolvedProps)
		end
	else
		if shouldUsePlugin and isPluginSupported then
			return React.createElement(ContentPlugin, resolvedProps)
		end
	end
	return React.createElement(Content, resolvedProps)
end

return React.forwardRef(PopoverContentProxy)
