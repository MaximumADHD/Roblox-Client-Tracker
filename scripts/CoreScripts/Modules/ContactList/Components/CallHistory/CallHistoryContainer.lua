--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local SetCurrentPage = require(ContactList.Actions.SetCurrentPage)
local Pages = require(ContactList.Enums.Pages)
local dependencies = require(ContactList.dependencies)
local NetworkingCall = dependencies.NetworkingCall
local RoduxCall = dependencies.RoduxCall
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector
local UIBlox = dependencies.UIBlox

local useStyle = UIBlox.Core.Style.useStyle
local Colors = UIBlox.App.Style.Colors
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local CallHistoryItem = require(ContactList.Components.CallHistory.CallHistoryItem)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	dismissCallback: () -> (),
	searchText: string,
}

local function CallHistoryContainer(props: Props)
	local dispatch = useDispatch()
	local style = useStyle()
	local font = style.Font
	local theme = style.Theme

	React.useEffect(function()
		dispatch(NetworkingCall.GetCallHistory.API({ limit = 8 }))

		return function()
			dispatch(RoduxCall.Actions.ClearCallRecords())
		end
	end, {})

	local selectCallHistoryResponse = React.useCallback(function(state: any)
		return state.Call.callHistory or {}
	end)

	local callHistoryResponse = useSelector(selectCallHistoryResponse)
	local callHistoryState, setCallHistoryState = React.useState({ callRecords = {}, nextPageCursor = "" })
	local filteredCallRecords, setFilteredCallRecords = React.useState({})
	local lastUsedCursor = React.useRef("")

	local function concatArray(a, b)
		local result = { table.unpack(a) }
		table.move(b, 1, #b, #result + 1, result)
		return result
	end

	React.useEffect(function()
		setCallHistoryState(function(prevState)
			local newState = { callRecords = {}, nextPageCursor = "" }
			newState.nextPageCursor = callHistoryResponse.nextPageCursor
			newState.callRecords = if callHistoryResponse.callRecords ~= nil
				then concatArray(prevState.callRecords, callHistoryResponse.callRecords)
				else {}
			return newState
		end)
	end, { callHistoryResponse })

	React.useEffect(function()
		local newFilteredCallRecords = {}
		for _, callRecord in ipairs(callHistoryState.callRecords) do
			for _, participant in pairs(callRecord.participants) do
				if
					participant.userId ~= localUserId
					and (
						props.searchText == ""
						or string.find(participant.displayName:lower(), props.searchText:lower())
						or string.find(participant.userName:lower(), props.searchText:lower())
					)
				then
					newFilteredCallRecords[#newFilteredCallRecords + 1] = callRecord
					break
				end
			end
		end

		setFilteredCallRecords(newFilteredCallRecords)
	end, dependencyArray(callHistoryState.callRecords, props.searchText))

	local children: any = React.useMemo(function()
		local entries = {}
		entries["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		for index, caller in ipairs(filteredCallRecords) do
			entries[index] = React.createElement(CallHistoryItem, {
				caller = caller,
				showDivider = index ~= #filteredCallRecords,
				localUserId = localUserId,
				dismissCallback = props.dismissCallback,
			})
		end

		return entries
	end, dependencyArray(filteredCallRecords))

	local navigateToNewCall = React.useCallback(function()
		dispatch(SetCurrentPage(Pages.FriendList))
	end)

	return if #callHistoryState.callRecords == 0
		then React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 20),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			UIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 20),
				PaddingRight = UDim.new(0, 20),
			}),
			NoCallHistoryText = React.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Font = font.Body.Font,
				LayoutOrder = 1,
				Text = "Your friends are waiting for you call!",
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.Body.RelativeSize * font.BaseSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			StartCallButton = React.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 0, 48),
				BackgroundColor3 = Colors.White,
				LayoutOrder = 2,
				[React.Event.Activated] = navigateToNewCall,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				StartCallIcon = React.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(28, 28),
					BackgroundTransparency = 1,
					Image = Images["icons/actions/friends/friendInvite"],
					ImageColor3 = Colors.Black,
					LayoutOrder = 1,
				}),
				StartCallButtonText = React.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					Font = font.Body.Font,
					LayoutOrder = 2,
					Text = "Start a call",
					TextColor3 = Colors.Black,
					TextSize = font.Body.RelativeSize * font.BaseSize,
					TextTransparency = theme.TextDefault.Transparency,
				}),
			}),
		})
		else React.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.new(),
			BackgroundTransparency = 1,
			[React.Change.CanvasPosition] = function(f)
				if
					f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
					and callHistoryState.nextPageCursor ~= ""
					and callHistoryState.nextPageCursor ~= lastUsedCursor.current
				then
					lastUsedCursor.current = callHistoryState.nextPageCursor
					dispatch(
						NetworkingCall.GetCallHistory.API({ limit = 30, cursor = callHistoryState.nextPageCursor })
					)
				end
			end,
		}, children)
end

return CallHistoryContainer
