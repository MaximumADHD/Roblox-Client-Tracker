--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images

local useDispatch = dependencies.Hooks.useDispatch

local ControlState = UIBlox.Core.Control.Enum.ControlState
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local useStyle = UIBlox.Core.Style.useStyle

local CallState = require(script.Parent.Parent.Enums.CallState)
local CloseContactList = require(script.Parent.Parent.Actions.CloseContactList)
local InitiateCall = require(script.Parent.Parent.Actions.InitiateCall)

export type User = {
	userId: number,
	username: string,
}

export type Props = {
	caller: {
		participants: { User },
		state: string,
	},
	showDivider: boolean,
	OpenCallDetails: () -> (),
}

local function getTextFromCallState(state)
	if state == CallState.Incoming then
		return "Incoming"
	elseif state == CallState.Outgoing then
		return "Outgoing"
	else
		return "Missed"
	end
end

local function CallerListItem(props: Props)
	local caller = props.caller
	-- Will update this to support more participants in a follow up.
	assert(#caller.participants == 1, "Expect a single participant in call.")
	local participant = caller.participants[1]
	local state = CallState.fromRawValue(caller.state)

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local controlState, setControlState = React.useState(ControlState.Initialize)
	local onStateChanged = React.useCallback(function(oldState, newState)
		setControlState(newState)
	end)

	local dispatch = useDispatch()
	local onActivated = React.useCallback(function()
		dispatch(InitiateCall(1, participant.userId, participant.username))
		dispatch(CloseContactList())
	end, {})

	local interactableTheme
	if controlState == ControlState.Pressed then
		interactableTheme = "BackgroundOnPress"
	elseif controlState == ControlState.Hover then
		interactableTheme = "BackgroundOnHover"
	else
		interactableTheme = "BackgroundDefault"
	end

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 64),
		BackgroundColor3 = theme[interactableTheme].Color,
		BackgroundTransparency = theme[interactableTheme].Transparency,
		BorderSizePixel = 0,
		onStateChanged = onStateChanged,
		[React.Event.Activated] = onActivated,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Position = UDim2.fromOffset(0, 2),
			Size = UDim2.fromOffset(36, 36),
			Image = SocialLibraries.User.getUserAvatarImage(participant.userId),
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromOffset(48, 0),
			Size = UDim2.new(1, -48, 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			Username = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Body.Font,
				LayoutOrder = 1,
				LineHeight = 1.25,
				Text = participant.username,
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.BaseSize * font.Body.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			Details = React.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				UIPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 2),
				}),

				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),

				DetailsText = React.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					LineHeight = 1.16667,
					Text = getTextFromCallState(state) .. " • Now",
					TextColor3 = state == CallState.Missed and theme.Alert.Color or theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = state == CallState.Missed and theme.Alert.Transparency
						or theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
		}),

		CallDetailsButton = React.createElement(IconButton, {
			size = UDim2.fromOffset(16, 16),
			iconSize = IconSize.Small,
			position = UDim2.new(1, -40, 0, 12),
			iconColor3 = theme.SystemPrimaryDefault.Color,
			iconTransparency = theme.SystemPrimaryDefault.Transparency,
			icon = Images["icons/actions/info"],
			onActivated = function()
				props.OpenCallDetails()
			end,
		}),

		Divider = props.showDivider and React.createElement("Frame", {
			Position = UDim2.new(0, 48, 1, -1),
			Size = UDim2.new(1, -48, 0, 1),
			BackgroundColor3 = theme.Divider.Color,
			BackgroundTransparency = theme.Divider.Transparency,
			BorderSizePixel = 0,
		}) or nil,
	})
end

return CallerListItem
