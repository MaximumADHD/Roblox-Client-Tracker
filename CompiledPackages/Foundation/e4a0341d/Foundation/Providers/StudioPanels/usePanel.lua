local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
type StudioUri = StudioUri.StudioUri

local Types = require(script.Parent.Types)
type PanelHandle = Types.PanelHandle
type PanelPosition = Types.PanelPosition

local function usePanel(props: {
	isOpen: boolean,
	anchorUri: StudioUri,
	onClose: () -> (),
	position: PanelPosition,
	registerPanelAsync: (anchorUri: StudioUri, position: PanelPosition, onClose: () -> ()) -> (PanelHandle, () -> ()),
})
	local closePanelRef = React.useRef(nil :: (() -> ())?)
	local registerPropsRef = ReactUtils.useRefToState({ anchorUri = props.anchorUri, position = props.position })

	-- These functions MUST be stable, otherwise the popover will be closed
	-- every time the component re-renders because of a complicated series of
	-- events.
	local stableOnClose = React.useRef(props.onClose)
	stableOnClose.current = props.onClose

	local stableRegisterPanelAsync = React.useRef(props.registerPanelAsync)
	stableRegisterPanelAsync.current = props.registerPanelAsync

	local registeredPanelAsyncState = ReactUtils.useAsync(function(): PanelHandle?
		if props.isOpen then
			local panelHandler, onClose = stableRegisterPanelAsync.current(
				registerPropsRef.current.anchorUri,
				registerPropsRef.current.position,
				stableOnClose.current
			)
			closePanelRef.current = onClose
			return panelHandler
		end

		if closePanelRef.current then
			closePanelRef.current()
			closePanelRef.current = nil
		end

		return nil
	end, { props.isOpen, registerPropsRef } :: { unknown })

	local panel = if registeredPanelAsyncState.status == "ok" then registeredPanelAsyncState.value else nil

	ReactUtils.useAsync(function()
		if not panel then
			return nil
		end
		panel.updateAsync({
			targetWidgetUri = props.anchorUri,
			targetAnchorPoint = props.position.targetAnchorPoint,
			subjectAnchorPoint = props.position.subjectAnchorPoint,
			offset = props.position.offset,
		})
		return nil
	end, { panel, props.anchorUri, props.position } :: { unknown })

	React.useEffect(function()
		return function()
			if closePanelRef.current then
				closePanelRef.current()
			end
		end
	end, {})

	return panel
end

return usePanel
