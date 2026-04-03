local Foundation = script:FindFirstAncestor("Foundation")

local Packages = Foundation.Parent
local React = require(Packages.React)

local PluginContext = require(script.Parent.PluginContext)

type Props = {
	plugin: Plugin?,
	children: React.ReactNode,
}

local function PluginProvider(props: Props): React.ReactNode
	return React.createElement(PluginContext.Provider, {
		-- To be honest, not entirely sure why we can't pass nil here. It makes
		-- a lot of tests in the app fail because context value cannot be nil.
		-- Instead, we pass React.None and check for that in the usePlugin hook.
		value = props.plugin or React.None,
	}, props.children)
end

return PluginProvider
