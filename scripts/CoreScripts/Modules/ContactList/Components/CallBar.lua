--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local RoduxCall = dependencies.RoduxCall
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb

local Colors = UIBlox.App.Style.Colors
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

local useSelector = dependencies.Hooks.useSelector

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
	size: Vector2,
	callBarRef: { current: GuiObject? } | nil,
	createdUtc: number,
}

local PROFILE_SIZE = 36
local BUTTON_SIZE = 36
local PADDING_TOP_BOTTOM = 4
local PADDING_LEFT_RIGHT = 4
local PADDING_IN_BETWEEN = 8

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local function formatDuration(duration: number): string
	local minutes = math.floor(duration / 60)
	local seconds = duration % 60
	local minutesStr = string.format("%02d", minutes)
	local secondsStr = string.format("%02d", seconds)
	local formattedTime = minutesStr .. ":" .. secondsStr

	return formattedTime
end

local function getTextFromCallStatus(status: string)
	-- TODO(IRIS-864): Localization.
	if status == RoduxCall.Enums.Status.Connecting.rawValue() then
		return "Calling…"
	elseif status == RoduxCall.Enums.Status.Teleporting.rawValue() then
		return "Teleporting…"
	elseif status == RoduxCall.Enums.Status.Active.rawValue() then
		return "Roblox Call"
	elseif status == RoduxCall.Enums.Status.Failed.rawValue() then
		return "Call Ended"
	else
		error("Invalid status for call bar: " .. status .. ".")
	end
end

local function CallBar(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font
	local currentCallDuration, setCurrentCallDuration = React.useState("00:00")

	local selectCallId = React.useCallback(function(state: any)
		return if state.Call.currentCall then state.Call.currentCall.callId else ""
	end)
	local callId = useSelector(selectCallId)

	local selectCallStatus = React.useCallback(function(state: any)
		return if state.Call.currentCall then state.Call.currentCall.status else ""
	end)
	local callStatus = useSelector(selectCallStatus)

	local selectOtherParticipantId = React.useCallback(function(state: any)
		local currentCall = state.Call.currentCall
		if currentCall then
			if localUserId == currentCall.callerId then
				return currentCall.calleeId
			else
				return currentCall.callerId
			end
		end

		return nil :: any
	end)
	local otherParticipantId = useSelector(selectOtherParticipantId)

	local image
	if otherParticipantId then
		image = getStandardSizeAvatarHeadShotRbxthumb(otherParticipantId)
	end

	local callStatusText = getTextFromCallStatus(callStatus)
	local isEndButtonEnabled = callStatus == RoduxCall.Enums.Status.Active.rawValue()
		or callStatus == RoduxCall.Enums.Status.Connecting.rawValue()

	local endButtonCallback = React.useCallback(function()
		if callStatus == RoduxCall.Enums.Status.Active.rawValue() then
			SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
			props.callProtocol:finishCall(callId)
		elseif callStatus == RoduxCall.Enums.Status.Connecting.rawValue() then
			props.callProtocol:cancelCall(callId)
		end
	end, { callStatus, props.callProtocol })

	React.useEffect(function()
		local callDurationTimerConnection = RunService.Heartbeat:Connect(function()
			if not props.createdUtc then
				return
			end

			local duration = os.time() - (props.createdUtc / 1000)
			local durationString = formatDuration(duration)

			setCurrentCallDuration(durationString)
		end)

		return function()
			callDurationTimerConnection:Disconnect()
		end
	end, {})

	local namesFetch = UserProfiles.Hooks.useUserProfilesFetch({
		userIds = { tostring(otherParticipantId) },
		query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
	})

	local combinedName = ""
	if namesFetch.data then
		combinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, otherParticipantId)
	end

	return React.createElement("Frame", {
		Size = UDim2.fromOffset(props.size.X, props.size.Y),
		Position = UDim2.new(0.5, 0, 0, -(props.size.Y + GuiService:GetGuiInset().Y)),
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundColor3 = theme.BackgroundMuted.Color,
		BackgroundTransparency = theme.BackgroundMuted.Transparency,
		BorderSizePixel = 0,
		ref = props.callBarRef,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
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
			Image = image,
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
				Size = UDim2.new(1, 0, 0, 22),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.CaptionHeader.Font,
				LayoutOrder = 1,
				Text = combinedName,
				TextColor3 = theme.TextEmphasis.Color,
				TextSize = font.BaseSize * font.CaptionHeader.RelativeSize,
				TextTransparency = theme.TextEmphasis.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			DetailsText = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Footer.Font,
				LayoutOrder = 2,
				Text = if callStatus == RoduxCall.Enums.Status.Active.rawValue()
					then currentCallDuration
					else callStatusText,
				TextColor3 = Colors.White,
				TextSize = font.BaseSize * font.Footer.RelativeSize,
				TextTransparency = 0.4,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),

		EndButton = if callStatus ~= RoduxCall.Enums.Status.Failed.rawValue()
			then React.createElement("ImageButton", {
				Position = UDim2.fromOffset(0, 0),
				Active = isEndButtonEnabled,
				AnchorPoint = Vector2.new(1, 1),
				LayoutOrder = 3,
				Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				BackgroundTransparency = style.Theme.Alert.Transparency,
				BackgroundColor3 = style.Theme.Alert.Color,
				BorderSizePixel = 0,
				Image = "rbxassetid://14535614005",
				[React.Event.Activated] = endButtonCallback,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, BUTTON_SIZE),
				}),
			})
			else nil,
	})
end

return CallBar
