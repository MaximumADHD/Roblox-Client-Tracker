--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox
local RoduxCall = dependencies.RoduxCall

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local PROFILE_SIZE = 36
local BUTTON_SIZE = 36
local PADDING_TOP_BOTTOM = 16
local PADDING_LEFT_RIGHT = 24
local PADDING_IN_BETWEEN = 12

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local function getTextFromCallStatus(status)
	-- TODO (joshli): Need to translate these.
	if status == RoduxCall.Enums.Status.Connecting.rawValue() then
		return "Waiting..."
	elseif status == RoduxCall.Enums.Status.Active.rawValue() then
		return "Roblox Call"
	else
		return "Error"
	end
end

local function CallBar(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local dispatch = useDispatch()

	local selectCallId = React.useCallback(function(state: any)
		return if state.Call.currentCall then state.Call.currentCall.callId else ""
	end)
	local callId = useSelector(selectCallId)

	local selectCallStatus = React.useCallback(function(state: any)
		return if state.Call.currentCall then state.Call.currentCall.status else ""
	end)
	local callStatus = useSelector(selectCallStatus)

	local selectOtherEndParticipant = React.useCallback(function(state: any)
		if state.Call.currentCall then
			for _, participant in pairs(state.Call.currentCall.participants) do
				if localUserId ~= participant.userId then
					return participant
				end
			end
		end

		return nil
	end)
	local otherEndParticipant = useSelector(selectOtherEndParticipant)

	return React.createElement("Frame", {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 68),
		BackgroundColor3 = theme.BackgroundMuted.Color,
		BackgroundTransparency = theme.BackgroundMuted.Transparency,
		BorderSizePixel = 0,
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
			Image = if otherEndParticipant
				then SocialLibraries.User.getUserAvatarImage(otherEndParticipant.userId)
				else nil,
			LayoutOrder = 1,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, -(PROFILE_SIZE + (PADDING_IN_BETWEEN * 2) + BUTTON_SIZE), 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 2,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			DisplayName = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Header2.Font,
				LayoutOrder = 1,
				LineHeight = 1.25,
				Text = if otherEndParticipant then otherEndParticipant.displayName else "",
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
					Text = getTextFromCallStatus(callStatus),
					TextColor3 = theme.UIDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.UIDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
		}),

		EndButton = React.createElement("ImageButton", {
			Position = UDim2.fromOffset(0, 0),
			AnchorPoint = Vector2.new(1, 1),
			LayoutOrder = 3,
			Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
			BackgroundTransparency = style.Theme.UIMuted.Transparency,
			BackgroundColor3 = style.Theme.UIMuted.Color,
			BorderSizePixel = 0,
			Image = "rbxassetid://12788429603",
			[React.Event.Activated] = function()
				if callStatus == RoduxCall.Enums.Status.Active.rawValue() then
					props.callProtocol:finishCall(callId)
				elseif callStatus == RoduxCall.Enums.Status.Connecting.rawValue() then
					props.callProtocol:cancelCall(callId)
				end

				dispatch(RoduxCall.Actions.EndCall())
			end,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, BUTTON_SIZE),
			}),
		}),
	})
end

return CallBar
