local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)

local WidgetManager = require(script.Parent.WidgetManager)
local WidgetsContext = require(script.Parent.WidgetsContext)

local Types = require(script.Parent.Types)
type WidgetsContext = Types.WidgetsContext

type StudioUri = StudioUri.StudioUri

export type WidgetsProviderProps = {
	children: React.ReactNode,
}

local function WidgetsProvider(props: WidgetsProviderProps): React.ReactNode
	local plugin = usePlugin()
	if plugin == nil then
		error("WidgetsProvider must be used within a Plugin context")
	end

	local manager = React.useMemo(function()
		return WidgetManager.new(plugin:GetPluginComponent("Widgets"))
	end, { plugin })

	React.useEffect(function()
		return function()
			manager:destroy()
		end
	end, { manager })

	local register = React.useCallback(function(uri: StudioUri, gui: GuiBase2d)
		manager:register(uri, gui)
	end, { manager })

	local deregister = React.useCallback(function(uri: StudioUri, gui: GuiBase2d?)
		manager:deregister(uri, gui)
	end, { manager })

	local refreshAsync = if Flags.FoundationPopoverPluginAnchorRefresh
		then React.useCallback(function(uri: StudioUri): boolean
			return manager:refreshAsync(uri)
		end, { manager })
		else nil :: never

	local nextId = React.useCallback(function(): string
		return manager:nextId()
	end, { manager })

	local value: WidgetsContext = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				register = register,
				deregister = deregister,
				refreshAsync = if Flags.FoundationPopoverPluginAnchorRefresh then refreshAsync else nil :: never,
				nextId = nextId,
			}
		end, { register, deregister, refreshAsync, nextId } :: { unknown })
		else {
			register = register,
			deregister = deregister,
			refreshAsync = if Flags.FoundationPopoverPluginAnchorRefresh then refreshAsync else nil :: never,
			nextId = nextId,
		}

	return React.createElement(WidgetsContext.Provider, {
		value = value,
	}, props.children)
end

return WidgetsProvider
