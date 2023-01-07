local MessageToast = script.Parent.Parent
local dependencies = require(MessageToast.dependencies)
local Types = require(MessageToast.Common.Types)
local Dash = dependencies.Dash
local UIBlox = dependencies.UIBlox
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local React = dependencies.React
local useLocalization = dependencies.Hooks.useLocalization
local useNavigation = dependencies.Hooks.useNavigation
local dependencyArray = dependencies.Hooks.dependencyArray
local useDidUpdate = dependencies.Hooks.useDidUpdate
local getTranslationKeys = require(script.Parent.getTranslationKeys)

export type Props = {
	messageType: Types.MessageTypes,
	duration: number,
	localizationOverrides: {
		toastTitle: string?,
		toastSubtitle: string?,
	}?,
}

local defaultProps = {
	messageType = Types.DefaultError,
	duration = 2,
}

local MessageToastScreen = function(receivedProps: Props)
	local props: Props = Dash.join(defaultProps, receivedProps or {})
	local localizedStrings = useLocalization(getTranslationKeys(props.messageType, props.localizationOverrides))

	local navigation = useNavigation()
	local didUpdateRef = useDidUpdate()

	local toastContent = React.useMemo(function()
		return {
			toastTitle = localizedStrings.toastTitle,
			toastSubtitle = localizedStrings.toastSubtitle,
			onDismissed = function()
				-- This check is incase a second toast gets called before the first has disappeared.
				-- Otherwise the first toast will close both toasts.
				if didUpdateRef.current then
					return
				end

				navigation.goBack()
			end,
		}
	end, dependencyArray(localizedStrings.toastTitle, localizedStrings.toastSubtitle))

	return React.createElement(SlideFromTopToast, {
		toastContent = toastContent,
		duration = props.duration,
	})
end

return MessageToastScreen
