local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

local Framework = require(Packages.Framework)
local ContextServices: any = Framework.ContextServices
local Plugin = ContextServices.Plugin
local TooltipManager = require(Main.Panels.TooltipManager)
local MenuManager = require(Main.Panels.MenuManager)

local Types = require(Main.Types)
type PanelHandler = Types.PanelHandler
type PanelPosition = Types.PanelPosition

export type PanelsContextValue = {
	registerTooltipAsync: (
		anchorUri: StudioUri,
		position: PanelPosition,
		onClose: () -> ()
	) -> (PanelHandler, () -> ()),
	registerMenuAsync: (
		depth: number,
		anchorUri: StudioUri,
		position: PanelPosition,
		onClose: () -> ()
	) -> (PanelHandler, () -> ()),
}

local PanelsContext = React.createContext(nil :: PanelsContextValue?)

local function usePanelsContext(): PanelsContextValue
	local context = React.useContext(PanelsContext)
	if not context then
		error("usePanelsContext must be used within a PanelsContext.Provider")
	end
	return context
end

export type PanelProviderProps = {
	uriScope: string?,
	children: React.ReactNode,
}

-- The first idea was to have the same pool for both menu and tooltip, but given their difference and tooltip being a singleton, it's easier to have them separate
local function PanelProvider(props: PanelProviderProps)
	local plugin = Plugin.use():get()

	local tooltipManager = React.useMemo(function()
		return TooltipManager.new(plugin, props.uriScope)
	end, { plugin, props.uriScope })

	local menuManager = React.useMemo(function()
		return MenuManager.new(plugin, props.uriScope)
	end, { plugin, props.uriScope })

	React.useEffect(function()
		-- policy: when menu will open, close all tooltips
		local subscription = menuManager:onWillOpen(function(depth)
			tooltipManager:closeAll()
		end)
		return function()
			subscription:unsubscribe()
			menuManager:destroy()
			tooltipManager:destroy()
		end
	end, { menuManager :: unknown, tooltipManager })

	local registerTooltipAsync = React.useCallback(
		function(anchorUri: StudioUri, position: PanelPosition, onClose: () -> ())
			local handle = tooltipManager:openAsync({
				targetWidgetUri = anchorUri,
				targetAnchorPoint = position.targetAnchorPoint,
				subjectAnchorPoint = position.subjectAnchorPoint,
				offset = position.offset,
			})
			-- This wrapper is needed for a bidirectional link between the panel and the tooltip
			return handle, function()
				onClose()
				handle.close()
			end
		end,
		{ tooltipManager }
	)

	local registerMenuAsync = React.useCallback(
		function(depth: number, anchorUri: StudioUri, position: PanelPosition, onClose: () -> ())
			local handle = menuManager:openAtAsync(depth, {
				targetWidgetUri = anchorUri,
				targetAnchorPoint = position.targetAnchorPoint,
				subjectAnchorPoint = position.subjectAnchorPoint,
				offset = position.offset,
			}, onClose)
			return handle, function()
				onClose()
				handle.close()
			end
		end,
		{ menuManager }
	)

	return React.createElement(PanelsContext.Provider, {
		value = {
			registerMenuAsync = registerMenuAsync,
			registerTooltipAsync = registerTooltipAsync,
		},
	}, props.children)
end

return {
	Provider = PanelProvider,
	useValue = usePanelsContext,
}
