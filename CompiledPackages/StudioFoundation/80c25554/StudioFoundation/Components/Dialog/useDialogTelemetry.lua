local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local HttpService = game:GetService("HttpService")

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local StudioUri = require(Main.Util.StudioUri)
local TelemetryConfigs = require(Main.Resources.TelemetryConfigs)
local TelemetryServiceContext = require(Main.Contexts.TelemetryServiceContext)
local Types = require(Main.Types)

type DialogAction = Types.DialogAction
type DialogEscapeButtonAction = Types.DialogEscapeButtonAction

export type Props = {
	uri: StudioUri,
	type: Types.DialogType,
	primaryAction: DialogAction?,
	secondaryAction: DialogAction?,
	tertiaryAction: DialogAction?,
	escapeAction: DialogEscapeButtonAction?,
}

export type TelemetryWrappedDialogActions = {
	primaryAction: DialogAction?,
	secondaryAction: DialogAction?,
	tertiaryAction: DialogAction?,
	escapeAction: DialogEscapeButtonAction?,
}

--[[
    Sends the three following events:
        StudioDialogShown event on mount
        StudioDialogInteracted event on DialogAction.onActivated
			To achieve this, it returns the same DialogActions wrapped with telemetry logic
        StudioDialogDestroyed event on unmount
--]]
local function useDialogTelemetry(props: Props): TelemetryWrappedDialogActions
	-- Get TelemetryService as a context to allow injectability in tests
	local TelemetryService = React.useContext(TelemetryServiceContext)

	-- Used for timing-related metrics in the events
	local startTime = React.useMemo(function()
		return os.clock()
	end, {})

	-- Number of interactions to be reported with the destroyed event
	local interactionCountRef = React.useRef(0)

	-- Store dialog metadata in a ref to avoid re-rendering the component when it changes
	local dialogMetadataRef = React.useRef({ DialogGuid = HttpService:GenerateGUID(false) } :: any)
	React.useEffect(function()
		dialogMetadataRef.current.dialogUri = StudioUri.toString(props.uri)
		dialogMetadataRef.current.dialogType = props.type
		dialogMetadataRef.current.primaryButtonUri = if props.primaryAction
			then StudioUri.toString(props.primaryAction.uri)
			else nil
		dialogMetadataRef.current.secondaryButtonUri = if props.secondaryAction
			then StudioUri.toString(props.secondaryAction.uri)
			else nil
		dialogMetadataRef.current.tertiaryButtonUri = if props.tertiaryAction
			then StudioUri.toString(props.tertiaryAction.uri)
			else nil
		dialogMetadataRef.current.escapeButtonUri = if props.escapeAction
			then StudioUri.toString(props.escapeAction.uri)
			else nil
	end, {
		dialogMetadataRef :: unknown,
		props.uri,
		props.type,
		props.primaryAction,
		props.secondaryAction,
		props.tertiaryAction,
		props.escapeAction,
	})

	-- Send StudioDialogShown event on mount and StudioDialogDestroyed event on unmount
	React.useEffect(function()
		TelemetryService:LogEvent(
			TelemetryConfigs.DIALOG_SHOWN,
			Dash.joinDeep(TelemetryConfigs.DEFAULT_METADATA, {
				customFields = dialogMetadataRef.current,
			})
		)

		return function()
			TelemetryService:LogEvent(
				TelemetryConfigs.DIALOG_DESTROYED,
				Dash.joinDeep(TelemetryConfigs.DEFAULT_METADATA, {
					customFields = Dash.join(dialogMetadataRef.current, {
						durationSec = os.clock() - startTime,
						interactionCount = interactionCountRef.current,
					}),
				})
			)
		end
	end, { dialogMetadataRef :: unknown, startTime, interactionCountRef })

	-- Helper to send StudioDialogInteracted event on user interaction
	local sendInteractedEvent = React.useCallback(function(buttonUri: StudioUri)
		TelemetryService:LogEvent(
			TelemetryConfigs.DIALOG_INTERACTED,
			Dash.joinDeep(TelemetryConfigs.DEFAULT_METADATA, {
				customFields = Dash.join(dialogMetadataRef.current, {
					timeToInteractSec = os.clock() - startTime,
					interactionIndex = interactionCountRef.current,
					interactedButtonUri = StudioUri.toString(buttonUri),
				}),
			})
		)
		interactionCountRef.current += 1
	end, { dialogMetadataRef :: unknown, startTime, interactionCountRef })

	-- Wrap each DialogAction with telemetry logic to send StudioDialogInteracted event on user interaction
	local wrappedDialogActions = React.useMemo(function()
		local function wrapDialogAction(action: DialogAction?): DialogAction?
			if not action then
				return nil
			end

			return table.freeze(Dash.join(action, {
				onActivated = function(buttonUri: StudioUri)
					sendInteractedEvent(buttonUri)
					action.onActivated(buttonUri)
				end,
			}))
		end

		local function wrapEscapeButton(escapeAction: DialogEscapeButtonAction?): DialogEscapeButtonAction?
			if not escapeAction then
				return nil
			end

			return table.freeze(Dash.join(escapeAction, {
				onClose = function()
					sendInteractedEvent(escapeAction.uri)
					if escapeAction.onClose then
						escapeAction.onClose()
					end
				end,
			}))
		end

		return {
			primaryAction = wrapDialogAction(props.primaryAction),
			secondaryAction = wrapDialogAction(props.secondaryAction),
			tertiaryAction = wrapDialogAction(props.tertiaryAction),
			escapeAction = wrapEscapeButton(props.escapeAction),
		}
	end, {
		sendInteractedEvent :: unknown,
		props.primaryAction,
		props.secondaryAction,
		props.tertiaryAction,
		props.escapeAction,
	})

	return wrappedDialogActions
end

return useDialogTelemetry
