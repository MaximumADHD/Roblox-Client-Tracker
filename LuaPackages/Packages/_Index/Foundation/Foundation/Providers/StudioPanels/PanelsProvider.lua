local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)
local useWidgetsContext = require(Foundation.Providers.StudioWidgets.useWidgetsContext)

local PanelsContext = require(script.Parent.PanelsContext)
local PopoverManager = require(script.Parent.Managers.PopoverManager)

local Types = require(script.Parent.Types)
type PanelsContext = Types.PanelsContext
type PanelPosition = Types.PanelPosition

type StudioUri = StudioUri.StudioUri

-- Depth is 0-indexed, so we pre-warm 3 QWidgets, one at each depth.
local PREWARM_MAX_DEPTH = 2

export type PanelsProviderProps = {
	uriScope: string?,
	children: React.ReactNode,
}

local function PanelsProvider(props: PanelsProviderProps): React.ReactNode
	local plugin = usePlugin()
	if plugin == nil then
		error("PanelsProvider must be used within a plugin context")
	end
	local widgets = if Flags.FoundationPopoverPluginAnchorRefresh then useWidgetsContext() else nil :: never

	local popoverManager = React.useMemo(function()
		return PopoverManager.new(plugin, props.uriScope)
	end, { plugin, props.uriScope } :: { unknown })

	React.useEffect(function()
		local thread: thread? = task.spawn(function()
			popoverManager:prewarmPoolAsync(PREWARM_MAX_DEPTH)
		end)

		return function()
			if thread then
				task.cancel(thread)
			end

			popoverManager:destroy()
		end
	end, { popoverManager })

	local registerPopoverAsync = React.useCallback(
		function(
			anchorUri: StudioUri,
			position: PanelPosition,
			onClose: () -> (),
			depth: number?,
			parentPopoverId: string?,
			isFocusable: boolean?
		)
			if Flags.FoundationPopoverPluginAnchorRefresh then
				widgets.refreshAsync(anchorUri)
			end
			local handle = popoverManager:openAtAsync({
				targetWidgetUri = anchorUri,
				targetAnchorPoint = position.targetAnchorPoint,
				subjectAnchorPoint = position.subjectAnchorPoint,
				offset = position.offset,
			}, onClose, depth, parentPopoverId, if Flags.FoundationPopoverPluginFocusable then isFocusable else nil)

			return handle, function()
				handle.close()
			end
		end,
		{ popoverManager, widgets } :: { unknown }
	)

	local value: PanelsContext = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				registerPopoverAsync = registerPopoverAsync,
			}
		end, { registerPopoverAsync } :: { unknown })
		else {
			registerPopoverAsync = registerPopoverAsync,
		}

	return React.createElement(PanelsContext.Provider, {
		value = value,
	}, props.children)
end

return PanelsProvider
