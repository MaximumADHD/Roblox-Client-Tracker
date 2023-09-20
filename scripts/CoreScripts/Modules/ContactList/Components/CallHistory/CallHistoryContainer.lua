--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
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
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

local CallHistoryItem = require(ContactList.Components.CallHistory.CallHistoryItem)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	dismissCallback: () -> (),
	isSmallScreen: boolean,
	scrollingEnabled: boolean,
	searchText: string,
}

-- The height for loading and call records.
local ITEM_HEIGHT = 92
-- The amount user needs to move for the gesture to be interpreted as a scroll.
local TOUCH_SLOP = 12

local function CallHistoryContainer(props: Props)
	local dispatch = useDispatch()
	local style = useStyle()
	local font = style.Font
	local theme = style.Theme

	-- Using refs instead of state since state might not be updated in time.
	-- These are set to loading and fetching to prepare for the initial fetch.
	local isLoading = React.useRef(true)
	local scrollingFrameRef = React.useRef(nil)
	local initialPositionY = React.useRef(0)
	local status, setStatus = React.useState(RetrievalStatus.Fetching)
	local overscrolling, setOverscrolling = React.useState(false)

	local nextPageCursor = useSelector(function(state)
		return state.Call.callHistory.nextPageCursor
	end)

	local getCallRecords = React.useCallback(function(cursor)
		isLoading.current = true
		setStatus(RetrievalStatus.Fetching)
		dispatch(NetworkingCall.GetCallHistory.API({ cursor = cursor, limit = 8, universeId = game.GameId })):andThen(
			function()
				setStatus(RetrievalStatus.Done)
			end,
			function()
				setStatus(RetrievalStatus.Failed)
			end
		)
	end, {})

	React.useEffect(function()
		-- It is assumed this fetch is enough to fill a page. If not, we should
		-- investigate more options.
		getCallRecords("")

		return function()
			dispatch(RoduxCall.Actions.ClearCallRecords())
		end
	end, { getCallRecords })

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
	end, {})

	React.useEffect(function()
		if status ~= RetrievalStatus.Fetching then
			isLoading.current = false
		end
	end, { status })

	local noRecordsComponent = React.useMemo(function()
		local message
		if props.searchText ~= "" then
			message = "No friends found"
		elseif status == RetrievalStatus.Failed then
			message = "Something went wrong! Please try again."
		else
			message = "Your friends are waiting for your call!"
		end

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = 10000, -- Hack to push this to the back.
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 20),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12),
				PaddingBottom = UDim.new(0, 12),
				PaddingLeft = UDim.new(0, 24),
				PaddingRight = UDim.new(0, 24),
			}),

			Image = if status ~= RetrievalStatus.Failed or props.searchText ~= ""
				then React.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Images[if props.searchText == ""
						then "icons/graphic/findfriends_xlarge"
						else "icons/status/oof_xlarge"],
					LayoutOrder = 1,
					Size = UDim2.fromOffset(96, 96),
				})
				else nil,

			Message = React.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Font = font.Body.Font,
				LayoutOrder = 2,
				Text = message,
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.Body.RelativeSize * font.BaseSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextWrapped = true,
			}),

			FailedButton = if status == RetrievalStatus.Failed and props.searchText == ""
				then React.createElement("TextButton", {
					Size = UDim2.new(0, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = theme.SystemPrimaryDefault.Color,
					BackgroundTransparency = theme.SystemPrimaryDefault.Transparency,
					BorderSizePixel = 0,
					Font = font.Header2.Font,
					LayoutOrder = 3,
					Text = "Retry",
					TextColor3 = theme.SystemPrimaryContent.Color,
					TextSize = font.Header2.RelativeSize * font.BaseSize,
					TextTransparency = theme.SystemPrimaryContent.Transparency,
					[React.Event.Activated] = function()
						getCallRecords(nextPageCursor)
					end,
				}, {
					UICorner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
					UIPadding = React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 8),
						PaddingRight = UDim.new(0, 8),
					}),
					UISizeConstraint = React.createElement("UISizeConstraint", {
						MinSize = Vector2.new(108, 36),
					}),
				})
				else nil,

			CallButton = if status == RetrievalStatus.Done and props.searchText == ""
				then React.createElement("ImageButton", {
					Size = UDim2.new(1, 0, 0, 48),
					BackgroundColor3 = theme.SystemPrimaryDefault.Color,
					BackgroundTransparency = theme.SystemPrimaryDefault.Transparency,
					BorderSizePixel = 0,
					LayoutOrder = 3,
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
						Image = "rbxassetid://14532752184",
						ImageColor3 = theme.SystemPrimaryContent.Color,
						LayoutOrder = 1,
					}),
					StartCallButtonText = React.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Font = font.Header2.Font,
						LayoutOrder = 2,
						Text = "Start a call",
						TextColor3 = theme.SystemPrimaryContent.Color,
						TextSize = font.Header2.RelativeSize * font.BaseSize,
						TextTransparency = theme.SystemPrimaryContent.Transparency,
					}),
				})
				else nil,
		})
	end, dependencyArray(getCallRecords, props.searchText, status))

	local children: { any } = React.useMemo(function()
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
		if nextPageCursor ~= "" and props.searchText == "" then
			-- This renders an extra component like refresh button or a loading
			-- indicator. We do not want either when there is no next page or
			-- when we are searching.
			local index = #entries + 1
			if status == RetrievalStatus.Failed then
				entries[index] = noRecordsComponent
			else
				entries[index] = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
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
		end

		return entries
	end, dependencyArray(callRecords, nextPageCursor, noRecordsComponent, props.searchText, status))

	local onFetchNextPage = React.useCallback(function(f)
		if
			not isLoading.current
			and status ~= RetrievalStatus.Failed
			and nextPageCursor ~= ""
			and props.searchText == ""
			and f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
		then
			getCallRecords(nextPageCursor)
		end
	end, dependencyArray(getCallRecords, nextPageCursor, props.searchText, status))

	React.useEffect(function()
		-- This is used to handle the case where the number of records is less
		-- than the height of the list. That means the list will never be
		-- scrollable to fetch more items. This does not check if there is a
		-- next page or if we are in a failure state. We'll check that in onFetchNextPage.
		local totalHeight = (#children - 1) * ITEM_HEIGHT

		if scrollingFrameRef.current and totalHeight <= scrollingFrameRef.current.AbsoluteSize.Y then
			onFetchNextPage(scrollingFrameRef.current)
		end
	end, dependencyArray(children, onFetchNextPage))

	local touchStarted = React.useCallback(function(touch: InputObject)
		initialPositionY.current = touch.Position.Y
	end, {})

	local touchMoved = React.useCallback(function(touch: InputObject)
		local delta = touch.Position.Y - initialPositionY.current :: number

		if delta > TOUCH_SLOP and scrollingFrameRef.current and scrollingFrameRef.current.CanvasPosition.Y == 0 then
			-- Check if user is scrolling up at the top. If so, we will
			-- disable this scroller so that inputs will power the outer
			-- scroller.
			setOverscrolling(true)
		end
	end, {})

	local touchEnded = React.useCallback(function()
		setOverscrolling(false)
	end, {})

	return if #callRecords == 0
			and status == RetrievalStatus.Fetching
			and props.searchText == ""
		then React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			LoadingSpinner = React.createElement(LoadingSpinner, {
				size = UDim2.fromOffset(48, 48),
				position = UDim2.fromScale(0.5, 0.5),
				anchorPoint = Vector2.new(0.5, 0.5),
			}),
		})
		elseif #callRecords == 0 then noRecordsComponent
		else Roact.createFragment({
			React.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				ElasticBehavior = Enum.ElasticBehavior.Never,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollingEnabled = not overscrolling and props.scrollingEnabled,
				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
				ScrollBarThickness = 4,
				ref = scrollingFrameRef,
				[React.Change.CanvasPosition] = onFetchNextPage,
			}, children),

			TouchStartedUserInputConnection = props.isSmallScreen
				and props.scrollingEnabled
				and React.createElement(ExternalEventConnection, {
					event = UserInputService.TouchStarted,
					callback = touchStarted,
				}),

			TouchMovedUserInputConnection = props.isSmallScreen
				and props.scrollingEnabled
				and React.createElement(ExternalEventConnection, {
					event = UserInputService.TouchMoved,
					callback = touchMoved,
				}),

			TouchEndedUserInputConnection = props.isSmallScreen
				and props.scrollingEnabled
				and React.createElement(ExternalEventConnection, {
					event = UserInputService.TouchEnded,
					callback = touchEnded,
				}),
		})
end

return CallHistoryContainer
