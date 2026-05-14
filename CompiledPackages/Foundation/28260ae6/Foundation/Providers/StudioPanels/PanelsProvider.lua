local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)

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

	local popoverManager = React.useMemo(function()
		return PopoverManager.new(plugin, props.uriScope)
	end, { plugin, props.uriScope } :: { unknown })

	React.useEffect(function()
		local thread: thread?
		if Flags.FoundationPopoverPluginPrewarmDepthPool then
			thread = task.spawn(function()
				popoverManager:prewarmPoolAsync(PREWARM_MAX_DEPTH)
			end)
		end

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
			parentPopoverId: string?
		)
			local handle = popoverManager:openAtAsync({
				targetWidgetUri = anchorUri,
				targetAnchorPoint = position.targetAnchorPoint,
				subjectAnchorPoint = position.subjectAnchorPoint,
				offset = position.offset,
			}, onClose, depth, parentPopoverId)

			return handle, function()
				handle.close()
			end
		end,
		{ popoverManager }
	)

	local value: PanelsContext = {
		registerPopoverAsync = registerPopoverAsync,
	}

	return React.createElement(PanelsContext.Provider, {
		value = value,
	}, props.children)
end

return PanelsProvider
