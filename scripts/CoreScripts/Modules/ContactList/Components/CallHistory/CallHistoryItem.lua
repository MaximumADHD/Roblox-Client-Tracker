--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local FFlagLuaAppUnifyCodeToGenerateRbxThumb = dependencies.FFlagLuaAppUnifyCodeToGenerateRbxThumb

local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local ControlState = UIBlox.Core.Control.Enum.ControlState
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local useStyle = UIBlox.Core.Style.useStyle

local CallState = require(ContactList.Enums.CallState)
local OpenCallDetails = require(ContactList.Actions.OpenCallDetails)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

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
	OpenCallDetails: () -> (),
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
	if caller.participants[1].userId == props.localUserId then
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

	local dispatch = useDispatch()

	local onDetailsActivated = React.useCallback(function()
		dispatch(OpenCallDetails(caller.participants))
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
		Size = UDim2.new(1, 0, 0, 92),
		BackgroundColor3 = theme[interactableTheme].Color,
		BackgroundTransparency = theme[interactableTheme].Transparency,
		BorderSizePixel = 0,
		onStateChanged = onStateChanged,
		[React.Event.Activated] = onDetailsActivated,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Size = UDim2.fromOffset(68, 68),
			Image = image,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromOffset(80, 2),
			Size = UDim2.new(1, -80, 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
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
				Font = font.Body.Font,
				LayoutOrder = 1,
				LineHeight = 1.25,
				Text = participant.displayName,
				TextColor3 = if isMissedCall(caller) then theme.Alert.Color else theme.TextEmphasis.Color,
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

			Details = React.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 3,
			}, {
				UIPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 8),
				}),

				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 6),
				}),

				CallContextImage = React.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 0),
					Size = UDim2.fromOffset(18, 18),
					Position = UDim2.fromOffset(0, 5),
					BackgroundTransparency = 1,
					ImageColor3 = theme.TextDefault.Color,
					ImageTransparency = theme.TextDefault.Transparency,
					Image = getCallContextImage(caller, localUserId),
				}),

				DetailsText = React.createElement("TextLabel", {
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
				}, { UIPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 2),
				}) }),
			}),
		}),

		CallDetailsButton = if game:GetEngineFeature("EnableSocialServiceIrisInvite")
			then React.createElement(IconButton, {
				size = UDim2.fromOffset(28, 28),
				iconSize = IconSize.Large,
				position = UDim2.new(1, -60, 0, 8),
				iconColor3 = theme.ContextualPrimaryDefault.Color,
				iconTransparency = theme.ContextualPrimaryDefault.Transparency,
				icon = Images["icons/actions/accept"],
				onActivated = function()
					if localPlayer then
						coroutine.wrap(function()
							local invokeIrisInviteRemoteEvent = RobloxReplicatedStorage:WaitForChild(
								"ContactListInvokeIrisInvite",
								math.huge
							) :: RemoteEvent
							invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(participant.userId))
						end)()
					end
				end,
			})
			else nil,

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
