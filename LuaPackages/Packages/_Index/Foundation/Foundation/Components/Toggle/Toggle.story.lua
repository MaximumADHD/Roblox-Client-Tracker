local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Toggle = require(Foundation.Components.Toggle)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)

local function BasicStory(props)
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(false)

	return React.createElement(Toggle, {
		isChecked = isChecked,
		isDisabled = controls.isDisabled,
		onActivated = function()
			setIsChecked(not isChecked)
		end,
		size = controls.size,
		label = controls.label or "",
	})
end

local function CustomSelectionStory()
	local isChatEnabled, setIsChatEnabled = React.useState(false)
	local isNotifications, setIsNotifications = React.useState(true)
	local tokens = useTokens()

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Medium),
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local function createToggleCard(label: string, description: string, isChecked: boolean, onToggle: () -> ())
		return React.createElement(View, {
			cursor = cursor,
			onActivated = onToggle,
			tag = "col padding-large radius-medium gap-medium bg-surface-100 stroke-muted",
			Size = UDim2.fromOffset(320, 100),
		}, {
			TextContainer = React.createElement(View, {
				tag = "auto-y size-full-0 row gap-small flex-x-between",
				LayoutOrder = 1,
			}, {
				Label = React.createElement(Text, {
					Text = label,
					tag = "text-body-medium content-emphasis auto-xy",
					LayoutOrder = 1,
				}),
				Toggle = React.createElement(Toggle, {
					isChecked = isChecked,
					onActivated = onToggle,
					label = "",
					-- Make the toggle non-selectable since the parent card handles selection
					Selectable = false,
					LayoutOrder = 2,
				}),
			}),
			Description = React.createElement(Text, {
				Text = description,
				tag = "text-body-small content-muted auto-xy text-wrap",
				LayoutOrder = 2,
			}),
		})
	end

	return React.createElement(View, {
		tag = "auto-xy col gap-large",
	}, {
		NotificationsCard = createToggleCard(
			"Push Notifications",
			"Receive notifications for messages and updates",
			isNotifications,
			function()
				setIsNotifications(not isNotifications)
			end
		),
		ChatCard = createToggleCard("Chat", "Enable chat for real-time communication", isChatEnabled, function()
			setIsChatEnabled(not isChatEnabled)
		end),
	})
end

return {
	summary = "Toggle component",
	stories = {
		{
			name = "Basic",
			story = BasicStory :: any,
		},
		{
			name = "Custom Selection",
			summary = "Select card containers instead of toggles",
			story = CustomSelectionStory,
		},
	},
	controls = {
		isDisabled = false,
		label = "Label",
		size = Dash.values(InputSize),
	},
}
