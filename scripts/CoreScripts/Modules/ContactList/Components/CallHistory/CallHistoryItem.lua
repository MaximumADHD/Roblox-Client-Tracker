--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local FFlagLuaAppUnifyCodeToGenerateRbxThumb = dependencies.FFlagLuaAppUnifyCodeToGenerateRbxThumb

local useSelector = dependencies.Hooks.useSelector

local ControlState = UIBlox.Core.Control.Enum.ControlState
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local useStyle = UIBlox.Core.Style.useStyle

local CallState = require(ContactList.Enums.CallState)

local PADDING_IN_BETWEEN = 12
local PROFILE_SIZE = 68
local DETAIL_CONTEXT_HEIGHT = 24
local PADDING = Vector2.new(24, 12)

export type Participant = {
	userId: number,
	displayName: string,
	userName: string,
}

export type Props = {
	caller: {
		callId: string,
		callerId: number,
		participants: { Participant },
		status: string,
		startUtc: number,
		endUtc: number,
		universeId: number,
		placeId: number,
	},
	localUserId: number,
	showDivider: boolean,
	dismissCallback: () -> (),
	layoutOrder: number?,
}

local function isMissedCall(caller)
	return CallState.fromRawValue(caller.status) ~= CallState.Finished
end

local function getCallStatusText(caller, localUserId)
	if isMissedCall(caller) then
		return "Missed"
	elseif caller.callerId == localUserId then
		return "Outgoing"
	else
		return "Incoming"
	end
end

-- TODO (joshualee) update icons to match design
local function getCallContextImage(caller, localUserId)
	if isMissedCall(caller) then
		return Images["icons/status/alert"]
	elseif caller.callerId == localUserId then
		return Images["icons/controls/keys/arrowRight"]
	else
		return Images["icons/controls/keys/arrowLeft"]
	end
end

local function getAbsoluteDiffDays(currentTimestamp, recordTimestamp, localeId)
	local currentYear = tonumber(currentTimestamp:FormatLocalTime("YYYY", localeId)) :: number -- 	1970, 1971, …, 2029, 2030
	local recordYear = tonumber(recordTimestamp:FormatLocalTime("YYYY", localeId)) :: number -- 	1970, 1971, …, 2029, 2030
	local currentDayOfYear = tonumber(currentTimestamp:FormatLocalTime("DDD", localeId)) :: number -- 1, 2, …, 364, 365
	local recordDayOfYear = tonumber(recordTimestamp:FormatLocalTime("DDD", localeId)) :: number -- 1, 2, …, 364, 365

	local diffDays = 0

	-- add days for each year between current year and record year considering leap years
	for year = recordYear, currentYear - 1 do
		local daysInYear = 365
		if year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0) then
			daysInYear = 366
		end
		diffDays = diffDays + daysInYear
	end

	diffDays = diffDays + currentDayOfYear - recordDayOfYear
	return diffDays
end

local function getTimestampText(endUtc)
	local currentTimestamp = DateTime.now()
	local recordTimestamp = DateTime.fromUnixTimestampMillis(endUtc)
	local localeId = LocalizationService.RobloxLocaleId

	local diffDays = getAbsoluteDiffDays(currentTimestamp, recordTimestamp, localeId)

	if diffDays == 0 then -- same day
		return recordTimestamp:FormatLocalTime("LT", localeId)
	elseif diffDays == 1 then -- yesterday
		return "Yesterday"
	elseif diffDays < 7 then -- within a week
		return recordTimestamp:FormatLocalTime("dddd", localeId)
	else -- more than a week
		return recordTimestamp:FormatLocalTime("L", localeId)
	end
end

local function CallHistoryItem(props: Props)
	local caller = props.caller
	local localUserId = props.localUserId

	-- Will update this to support more participants in a follow up.
	assert(#caller.participants == 2, "Expect a local user and single other participant in call.")

	-- get the participant that is not the local user
	local participant = caller.participants[1]
	if caller.participants[1].userId == localUserId then
		participant = caller.participants[2]
	end

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local controlState, setControlState = React.useState(ControlState.Initialize)
	local onStateChanged = React.useCallback(function(oldState, newState)
		setControlState(newState)
	end)

	local selectTag = React.useCallback(function(state: any)
		return state.Navigation.currentTag
	end, {})
	local tag = useSelector(selectTag)

	local onDetailsActivated = React.useCallback(function()
		local IsUserInDevModeRemoteFunction = ReplicatedStorage:WaitForChild("Shared")
			:WaitForChild("IsUserInDevModeRemoteFunction") :: RemoteFunction
		local isLocalUserDevMode = IsUserInDevModeRemoteFunction:InvokeServer(localUserId)
		if isLocalUserDevMode == IsUserInDevModeRemoteFunction:InvokeServer(participant.userId) then
			if isLocalUserDevMode then
				coroutine.wrap(function()
					local invokeIrisInviteRemoteEvent =
						RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
					invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(participant.userId))
				end)()
			else
				local CallRequestedEvent =
					ReplicatedStorage:WaitForChild("Shared"):WaitForChild("CallRequestedEvent") :: RemoteEvent
				CallRequestedEvent:FireServer(participant.userId)
			end
		else
			local SharedRS = ReplicatedStorage:WaitForChild("Shared")
			local ShowGenericDialogBindableEvent =
				SharedRS:WaitForChild("ShowGenericDialogBindableEvent") :: BindableEvent
			ShowGenericDialogBindableEvent:Fire(
				"Error",
				"Cannot call another user that isn't in the same mode as you. Toggle your dev mode and try again.",
				true
			)
		end

		props.dismissCallback()
	end, {})

	local interactableTheme
	if controlState == ControlState.Pressed then
		interactableTheme = "BackgroundOnPress"
	elseif controlState == ControlState.Hover then
		interactableTheme = "BackgroundOnHover"
	else
		interactableTheme = "BackgroundDefault"
	end

	local image
	if FFlagLuaAppUnifyCodeToGenerateRbxThumb then
		image = getStandardSizeAvatarHeadShotRbxthumb(tostring(participant.userId))
	else
		image = SocialLibraries.User.getUserAvatarImage(participant.userId)
	end

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, PROFILE_SIZE + PADDING.Y * 2),
		BackgroundColor3 = theme[interactableTheme].Color,
		BackgroundTransparency = theme[interactableTheme].Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		onStateChanged = onStateChanged,
		AutoButtonColor = false,
		[React.Event.Activated] = onDetailsActivated,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING.X),
			PaddingTop = UDim.new(0, PADDING.Y),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Size = UDim2.fromOffset(PROFILE_SIZE, PROFILE_SIZE),
			Image = image,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			Position = UDim2.new(0, PADDING_IN_BETWEEN + PROFILE_SIZE, 0, 0),
			Size = UDim2.new(1, -(PADDING_IN_BETWEEN + PROFILE_SIZE + PADDING.X), 1, -PADDING.Y),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			NameContent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -DETAIL_CONTEXT_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
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
					Text = participant.displayName,
					TextColor3 = theme.TextEmphasis.Color,
					TextSize = font.BaseSize * font.Body.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				Username = React.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.Body.Font,
					LayoutOrder = 2,
					LineHeight = 1.25,
					Text = "@" .. participant.userName,
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),

			Details = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, DETAIL_CONTEXT_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),

				CallContextImage = React.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(DETAIL_CONTEXT_HEIGHT, DETAIL_CONTEXT_HEIGHT),
					BackgroundTransparency = 1,
					ImageColor3 = theme.TextDefault.Color,
					ImageTransparency = theme.TextDefault.Transparency,
					Image = getCallContextImage(caller, localUserId),
				}),

				DetailsText = React.createElement("TextLabel", {
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					LineHeight = 1.16667,
					Text = getCallStatusText(caller, localUserId) .. " • " .. getTimestampText(caller.endUtc),
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
		}),

		Divider = props.showDivider and React.createElement("Frame", {
			Position = UDim2.new(0, 0, 1, -1),
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundColor3 = theme.Divider.Color,
			BackgroundTransparency = theme.Divider.Transparency,
			BorderSizePixel = 0,
		}) or nil,
	})
end

return CallHistoryItem
