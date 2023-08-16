--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RetrievalStatus = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus

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
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

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

	-- Using refs instead of state since state might not be updated in time.
	-- These are set to loading and fetching to prepare for the initial fetch.
	local isLoading = React.useRef(true)
	local status, setStatus = React.useState(RetrievalStatus.Fetching)

	React.useEffect(function()
		-- It is assumed this fetch is enough to fill a page. If not, we should
		-- investigate more options.
		dispatch(NetworkingCall.GetCallHistory.API({ limit = 20, universeId = game.GameId })):andThen(function()
			setStatus(RetrievalStatus.Done)
		end, function()
			setStatus(RetrievalStatus.Failed)
		end)

		return function()
			dispatch(RoduxCall.Actions.ClearCallRecords())
		end
	end, {})

	local selectCallRecords = React.useCallback(function(state: any)
		local callRecords = state.Call.callHistory.callRecords
		local list = {}
		for _, callRecord in ipairs(callRecords) do
			for _, participant in pairs(callRecord.participants) do
				if
					participant.userId ~= localUserId
					and (
						props.searchText == ""
						or string.find(participant.displayName:lower(), props.searchText:lower())
						or string.find(participant.userName:lower(), props.searchText:lower())
					)
				then
					list[#list + 1] = callRecord
					break
				end
			end
		end
		return list
	end, dependencyArray(localUserId, props.searchText))

	local callRecords = useSelector(selectCallRecords, function(newCallRecords: any, oldCallRecords: any)
		if #newCallRecords ~= #oldCallRecords then
			-- Shortcut for unmatched list lengths.
			return false
		else
			-- Check to see if records list was changed.
			for i, record in ipairs(newCallRecords) do
				if record.callId ~= oldCallRecords[i].callId then
					return false
				end
			end
			return true
		end
	end)

	local navigateToNewCall = React.useCallback(function()
		dispatch(SetCurrentPage(Pages.FriendList))
	end)

	local nextPageCursor = useSelector(function(state)
		return state.Call.callHistory.nextPageCursor
	end)

	React.useEffect(function()
		if status ~= RetrievalStatus.Fetching then
			isLoading.current = false
		end
	end, { status })

	local children: any = React.useMemo(function()
		local entries: any = {}
		entries["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		for i, caller in ipairs(callRecords) do
			entries[i] = React.createElement(CallHistoryItem, {
				caller = caller,
				localUserId = localUserId,
				showDivider = i ~= #callRecords,
				dismissCallback = props.dismissCallback,
				layoutOrder = i,
			})
		end

		if nextPageCursor ~= "" and status ~= RetrievalStatus.Failed and props.searchText == "" then
			-- We don't show a loading indicator when searching, when loading
			-- fails (we should add an option to do retries) or when there are
			-- no more pages.
			local index = #entries + 1
			entries[index] = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 92),
				BackgroundTransparency = 1,
				LayoutOrder = index,
			}, {
				LoadingSpinner = React.createElement(LoadingSpinner, {
					size = UDim2.fromOffset(48, 48),
					position = UDim2.fromScale(0.5, 0.5),
					anchorPoint = Vector2.new(0.5, 0.5),
				}),
			})
		end

		return entries
	end, dependencyArray(callRecords, nextPageCursor, props.searchText, status))

	local onCanvasPositionChanged = React.useCallback(function(f)
		if
			not isLoading.current
			and status ~= RetrievalStatus.Failed
			and nextPageCursor ~= ""
			and props.searchText == ""
			and f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
		then
			isLoading.current = true
			setStatus(RetrievalStatus.Fetching)
			dispatch(NetworkingCall.GetCallHistory.API({ limit = 10, cursor = nextPageCursor })):andThen(function()
				setStatus(RetrievalStatus.Done)
			end, function()
				setStatus(RetrievalStatus.Failed)
			end)
		end
	end, dependencyArray(nextPageCursor, props.searchText, status))

	return if #callRecords == 0
			and status == RetrievalStatus.Fetching
			and props.searchText == ""
		then React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 92),
			BackgroundTransparency = 1,
		}, {
			LoadingSpinner = React.createElement(LoadingSpinner, {
				size = UDim2.fromOffset(48, 48),
				position = UDim2.fromScale(0.5, 0.5),
				anchorPoint = Vector2.new(0.5, 0.5),
			}),
		})
		elseif #callRecords == 0 and props.searchText == "" then React.createElement("Frame", {
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
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ScrollBarImageColor3 = theme.UIEmphasis.Color,
			ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
			ScrollBarThickness = 4,
			[React.Change.CanvasPosition] = onCanvasPositionChanged,
		}, children)
end

return CallHistoryContainer
