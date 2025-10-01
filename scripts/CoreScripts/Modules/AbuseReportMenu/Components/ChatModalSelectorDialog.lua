local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local ChatLineReporting = require(CorePackages.Workspace.Packages.ChatLineReporting)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)

local ChatLineReportSelectionModal = ChatLineReporting.ChatLineReportSelectionModal
local ChatLineSelectionMode = ChatLineReporting.Enums.ChatLineSelectionMode
local useStyle = UIBlox.Core.Style.useStyle

local useOrderedMessages = require(root.Hooks.useOrderedMessages)

type Props = {
	isShown: boolean,
	onClose: () -> (),
}

--[[
	This component is responsible for displaying the chat line reporting modal along with a dimmed background overlay.
]]
local function ChatModalSelectorDialog(props: Props): React.ReactElement | nil
	local style = useStyle()
	local theme = style.Theme
	local orderedMessages = useOrderedMessages()

	if not props.isShown then
		return nil
	end
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Overlay = React.createElement("TextButton", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			AutoButtonColor = false,
			BackgroundColor3 = theme.Overlay.Color,
			BackgroundTransparency = theme.Overlay.Transparency,
			Position = UDim2.fromScale(0.5, 0.5),
			Selectable = false, -- prevent gamepad focus from focusing on this component
			Size = UDim2.new(1, 0, 1, 0),
			Text = "", -- need to blank out the text, otherwise default will be 'TextButton'
			ZIndex = 10,
			[React.Event.Activated] = function()
				props.onClose()
			end,
		}),
		ChatLineReportSelectionModalFrame = React.createElement(
			"Frame",
			{
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 11,
			},
			React.createElement(ChatLineReportSelectionModal, {
				isCentered = true,
				onContinue = function() end,
				onBack = props.onClose,
				mode = ChatLineSelectionMode.Direct,
				messages = orderedMessages,
				selectedMessage = {},
				setSelectedMessage = function() end,
				analyticsDispatch = function() end,
			})
		),
	})
end

return ChatModalSelectorDialog
