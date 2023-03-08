--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local useStyle = UIBlox.Core.Style.useStyle

local useDispatch = dependencies.Hooks.useDispatch

local CancelCall = require(script.Parent.Parent.Actions.CancelCall)
local OutgoingCallState = require(script.Parent.Parent.Enums.OutgoingCallState)

export type Props = {
	caller: {
		userId: number,
		username: string,
		state: string,
	},
}

local PROFILE_SIZE = 36
local PADDING_TOP_BOTTOM = 16
local PADDING_LEFT_RIGHT = 24
local PADDING_IN_BETWEEN = 12

local function getTextFromOutgoingCallState(state)
	-- TODO (joshli): Need to translate these.
	if state == OutgoingCallState.Calling then
		return "Calling…"
	elseif state == OutgoingCallState.Connecting then
		return "Connecting…"
	else
		return "Roblox Call"
	end
end

local function CallerNotification(props: Props)
	local caller = props.caller
	local state = OutgoingCallState.fromRawValue(caller.state)

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	-- Remove this when we no longer need to test this.
	local dispatch = useDispatch()
	local onActivated = React.useCallback(function()
		dispatch(CancelCall(1))
	end, {})
	local onStateChanged = React.useCallback(function()
		-- PlaceHolder.
	end, {})

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 68),
		BackgroundColor3 = theme.BackgroundMuted.Color,
		BackgroundTransparency = theme.BackgroundMuted.Transparency,
		BorderSizePixel = 0,
		onStateChanged = onStateChanged,
		[React.Event.Activated] = onActivated,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),

		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, PADDING_IN_BETWEEN),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING_LEFT_RIGHT),
			PaddingTop = UDim.new(0, PADDING_TOP_BOTTOM),
			PaddingRight = UDim.new(0, PADDING_LEFT_RIGHT),
			PaddingBottom = UDim.new(0, PADDING_TOP_BOTTOM),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Position = UDim2.fromOffset(0, 0),
			Size = UDim2.fromOffset(PROFILE_SIZE, PROFILE_SIZE),
			Image = SocialLibraries.User.getUserAvatarImage(caller.userId),
			LayoutOrder = 1,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, -(PROFILE_SIZE + PADDING_IN_BETWEEN), 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 2,
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
				Font = font.Header2.Font,
				LayoutOrder = 1,
				LineHeight = 1.25,
				Text = caller.username,
				TextColor3 = theme.TextEmphasis.Color,
				TextSize = font.BaseSize * font.Header2.RelativeSize,
				TextTransparency = theme.TextEmphasis.Transparency,
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

				DetailsText = React.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					LineHeight = 1.16667,
					Text = getTextFromOutgoingCallState(state),
					TextColor3 = theme.UIDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.UIDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
		}),
	})
end

return CallerNotification
