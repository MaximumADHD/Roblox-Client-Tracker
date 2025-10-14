local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)

local Icon = Foundation.Icon
local Text = Foundation.Text
local View = Foundation.View

local ChatModalSelectorDialogController = require(root.Components.ChatModalSelectorDialogController)
local Types = require(root.Components.Types)

local FFlagHideShortcutsOnReportDropdown = require(root.Flags.FFlagHideShortcutsOnReportDropdown)

type Props = {
	onMenuOpenChange: (boolean) -> (),
	onSelect: (message: Types.Message, orderedMessages: { Types.Message }) -> (),
	placeholderText: string,
	selectedValue: string?,
	selectorHeight: number, -- Need this prop to determine height of button, otherwise it'll expand indefinitely
}

--[[
	This component defines the dropdown button that shows on the InGameMenu next to the 'Which Chat?' label.
]]
local function ChatModalSelector(props: Props)
	local onOpen
	if FFlagHideShortcutsOnReportDropdown then
		onOpen = React.useCallback(function()
			props.onMenuOpenChange(true)
		end, { props.onMenuOpenChange })
	end

	local onClose = React.useCallback(function()
		ChatModalSelectorDialogController.unmountModalSelector()
		if FFlagHideShortcutsOnReportDropdown then
			props.onMenuOpenChange(false)
		end
	end, { props.onMenuOpenChange })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, props.selectorHeight),
	}, {
		ControlButton = React.createElement(View, {
			tag = "size-full stroke-thicker stroke-emphasis radius-medium",
			onActivated = function()
				ChatModalSelectorDialogController.mountModalSelector(onClose, onOpen, props.onSelect)
			end,
		}, {
			Text = React.createElement(Text, {
				Text = props.selectedValue or props.placeholderText,
				tag = "size-full anchor-center-center position-center-center",
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			Icon = React.createElement(Icon, {
				name = "icons/actions/truncationExpand",
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
			}),
		}),
	})
end

return ChatModalSelector
