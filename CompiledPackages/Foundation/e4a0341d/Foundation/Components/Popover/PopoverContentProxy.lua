local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Content = require(script.Parent.Content)
local ContentPlugin = require(script.Parent.ContentPlugin)
local Flags = require(Foundation.Utility.Flags)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)

export type PopoverContentProps = Content.PopoverContentProps

local function PopoverContentProxy(props: PopoverContentProps, forwardedRef: React.Ref<GuiObject>?): React.ReactNode
	local plugin = usePlugin()
	local isPluginSupported = React.useMemo(function()
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

	if Flags.FoundationPopoverPluginSupport and isPluginSupported then
		return React.createElement(ContentPlugin, resolvedProps)
	end
	return React.createElement(Content, resolvedProps)
end

return React.forwardRef(PopoverContentProxy)
