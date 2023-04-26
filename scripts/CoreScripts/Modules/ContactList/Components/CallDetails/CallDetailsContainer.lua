--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector
local GetPresencesFromUserIds = dependencies.NetworkingPresence.GetPresencesFromUserIds

local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle

local CloseCallDetails = require(ContactList.Actions.CloseCallDetails)
local CallDetailsItem = require(ContactList.Components.CallDetails.CallDetailsItem)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {}

local function CallDetailsContainer(props: Props)
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font
	local dispatch = useDispatch()

	-- Retrieve participants from store and fetch presence for each
	local selectCallDetailParticipants = React.useCallback(function(state: any)
		return state.Navigation.callDetailParticipants
	end)
	local callDetailParticipants = useSelector(selectCallDetailParticipants)
	React.useEffect(function()
		local participantIds = {}
		for _, participant in ipairs(callDetailParticipants) do
			table.insert(participantIds, participant.userId)
		end
		dispatch(GetPresencesFromUserIds.API(participantIds))
	end, { callDetailParticipants })

	local selectUserPresence = React.useCallback(function(state: any)
		return state.Presence.byUserId or {}
	end, {})

	local userPresence = useSelector(selectUserPresence)

	-- Create a table of CallDetailsItem for each participant in the call
	local participantList = React.useMemo(function()
		local participantList = {}
		participantList["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})
		for idx, participant in ipairs(callDetailParticipants) do
			participantList["ParticipantItem" .. idx] = React.createElement(CallDetailsItem, {
				user = { userId = participant.userId, username = participant.userName },
				showDivider = idx ~= #callDetailParticipants,
				presenceModel = userPresence[tostring(participant.userId)],
				showParticipantSettings = participant.userId ~= localUserId,
			})
		end
		return participantList
	end, { localPlayer, callDetailParticipants } :: { any })

	return React.createElement("ScrollingFrame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.5, 0.5),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		CanvasSize = UDim2.new(),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 54),
		}),
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 12),
		}),

		HeaderSection = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 48),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1,
		}, {
			BackButton = React.createElement(IconButton, {
				position = UDim2.new(0, 12, 0, 0),
				icon = Images["icons/actions/cycleLeft"],
				iconSize = IconSize.Medium,
				onActivated = function()
					dispatch(CloseCallDetails())
				end,
			}),
			Header = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 10),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Header1.Font,
				LineHeight = 1.25,
				Text = "Call Details",
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.BaseSize * font.Header1.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Center,
			}),
		}),
		SubHeaderSection = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 2,
		}, {
			SubHeader = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Header1.Font,
				LineHeight = 1,
				Text = "Members",
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),

		ParticipantList = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			LayoutOrder = 3,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, { participantList }),
	})
end

return CallDetailsContainer
