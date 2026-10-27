local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local Types = require(Main.Types)
type PanelHandler = Types.PanelHandler
type PanelPosition = Types.PanelPosition

local function usePanel(props: {
	isOpen: boolean,
	anchorUri: StudioUri,
	onClose: () -> (),
	position: PanelPosition,
	registerPanelAsync: (anchorUri: StudioUri, position: PanelPosition, onClose: () -> ()) -> (PanelHandler, () -> ()),
})
	local onCloseRef = React.useRef(nil :: (() -> ())?)
	local registerPropsRef = ReactUtils.useRefToState({ anchorUri = props.anchorUri, position = props.position })

	local registeredPanelAsyncState = ReactUtils.useAsync(function(): PanelHandler?
		if props.isOpen then
			local panelHandler, onClose = props.registerPanelAsync(
				registerPropsRef.current.anchorUri,
				registerPropsRef.current.position,
				props.onClose
			)
			onCloseRef.current = onClose
			return panelHandler
		end

		if onCloseRef.current then
			onCloseRef.current()
			onCloseRef.current = nil
		end

		return nil
	end, { props.isOpen :: unknown, props.onClose, registerPropsRef, props.registerPanelAsync })

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
	end, { panel :: unknown, props.anchorUri, props.position })

	React.useEffect(function()
		return function()
			if onCloseRef.current then
				onCloseRef.current()
			end
		end
	end, {})

	return panel
end

return usePanel
