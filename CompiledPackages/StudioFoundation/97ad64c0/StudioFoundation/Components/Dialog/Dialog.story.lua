local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Dialog = require(script.Parent.Dialog)
local Foundation = require(Packages.Foundation)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local Types = require(Main.Types)

local Plugin = Framework.ContextServices.Plugin
local StudioUri = require(Main.Util.StudioUri)
local e = React.createElement

-- Shows a button that opens and closes a Dialog
local function ButtonControlledDialog(props: Dialog.Props & { autoClose: boolean })
	local isOpen, setIsOpen = React.useState(false)

	local dialogProps = React.useMemo(function()
		local newProps = table.clone(props)
		if newProps.primaryAction then
			local originalOnActivated = newProps.primaryAction.onActivated
			newProps.primaryAction.onActivated = function(...)
				setIsOpen(false)
				originalOnActivated(...)
			end
		end
		if newProps.secondaryAction then
			local originalOnActivated = newProps.secondaryAction.onActivated
			newProps.secondaryAction.onActivated = function(...)
				setIsOpen(false)
				originalOnActivated(...)
			end
		end
		if newProps.tertiaryAction then
			local originalOnActivated = newProps.tertiaryAction.onActivated
			newProps.tertiaryAction.onActivated = function(...)
				setIsOpen(false)
				originalOnActivated(...)
			end
		end
		return newProps
	end, { props })

	-- Auto close after 5 seconds in case the dialog is unclosable and requires restarting Studio
	React.useEffect(function(): (() -> ())?
		if not props.autoClose or not isOpen then
			return nil
		end

		local thread = task.delay(5, function()
			setIsOpen(false)
		end)

		return function()
			task.cancel(thread)
		end
	end, { props.autoClose, isOpen, setIsOpen } :: { unknown })

	return e(React.Fragment, nil, {
		OpenButton = e(Foundation.Button, {
			text = if isOpen then "Close Dialog" else "Open Dialog",
			onActivated = function()
				setIsOpen(function(prevIsOpen)
					return not prevIsOpen
				end)
			end,
		}),
		Dialog = if isOpen then e(Dialog, dialogProps) else nil,
	})
end

local function createBasicExample(dialogType: Types.DialogType)
	return {
		name = dialogType :: string,
		story = function(props)
			local plugin = Plugin.use():get()
			local panelUri = StudioUri.join(plugin:GetUri(), {
				Category = "Panels",
				ItemId = `DialogStory{dialogType}`,
			})
			local widgetUri = StudioUri.join(panelUri, {
				Category = "Widgets",
			})
			return e(ButtonControlledDialog, {
				uri = panelUri,
				type = dialogType,
				title = "Dialog Title",
				description = "This is a description for the dialog. It provides more details about the purpose of the dialog.",
				primaryAction = {
					uri = StudioUri.child(widgetUri, "Primary"),
					text = "Primary",
					onActivated = function()
						print("Primary")
					end,
				},
				secondaryAction = {
					uri = StudioUri.child(widgetUri, "Secondary"),
					text = "Secondary",
					onActivated = function()
						print("Secondary")
					end,
				},
				tertiaryAction = {
					uri = StudioUri.child(widgetUri, "Tertiary"),
					text = "Tertiary",
					onActivated = function()
						print("Tertiary")
					end,
				},
				autoClose = props.controls.autoClose,
			})
		end,
	}
end

return {
	name = "DialogPanel",
	summary = "Demonstrates the windowing logic of DialogPanel housing a DialogView. By default, the dialogs automatically close after 5 seconds in case they are unclosable for whatever reason.",
	controls = {
		type = { "Default", "Warning", "Critical" },
		title = "Save changes to Place1?",
		description = "",
		primaryActionText = "Save",
		secondaryActionText = "Don't save",
		tertiaryActionText = "Cancel",
		autoClose = { true, false },
	},
	stories = {
		{
			name = "Configurable",
			story = function(props: any)
				local plugin = Plugin.use():get()
				local panelUri = StudioUri.join(plugin:GetUri(), {
					Category = "Panels",
					ItemId = "DialogStoryConfigurable",
				})
				local widgetUri = StudioUri.join(panelUri, {
					Category = "Widgets",
				})
				return e(ButtonControlledDialog, {
					uri = panelUri,
					type = props.controls.type,
					title = props.controls.title,
					description = props.controls.description,
					primaryAction = if props.controls.primaryActionText ~= ""
						then {
							uri = StudioUri.child(widgetUri, "Primary"),
							text = props.controls.primaryActionText,
							onActivated = function()
								print("Primary")
							end,
						}
						else nil,
					secondaryAction = if props.controls.secondaryActionText ~= ""
						then {
							uri = StudioUri.child(widgetUri, "Secondary"),
							text = props.controls.secondaryActionText,
							onActivated = function()
								print("Secondary")
							end,
						}
						else nil,
					tertiaryAction = if props.controls.tertiaryActionText ~= ""
						then {
							uri = StudioUri.child(widgetUri, "Tertiary"),
							text = props.controls.tertiaryActionText,
							onActivated = function()
								print("Tertiary")
							end,
						}
						else nil,
					autoClose = props.controls.autoClose,
				})
			end,
		},
		createBasicExample("Default"),
		createBasicExample("Warning"),
		createBasicExample("Critical"),
	},
}
