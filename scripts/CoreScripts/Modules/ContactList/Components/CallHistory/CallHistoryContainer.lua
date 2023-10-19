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
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

local CallHistoryItem = require(ContactList.Components.CallHistory.CallHistoryItem)
local NoItemView = require(ContactList.Components.common.NoItemView)
local Constants = require(ContactList.Components.common.Constants)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	dismissCallback: () -> (),
	isSmallScreen: boolean,
	scrollingEnabled: boolean,
}

local function CallHistoryContainer(props: Props)
	local dispatch = useDispatch()
	local style = useStyle()
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
		local limit = if cursor == "" then 16 else 8
		dispatch(NetworkingCall.GetCallHistory.API({ cursor = cursor, limit = limit, universeId = game.GameId })):andThen(
			function()
				setStatus(RetrievalStatus.Done)
			end,
			function()
				setStatus(RetrievalStatus.Failed)
			end
		)
	end, {})

	React.useEffect(function()
		getCallRecords("")

		return function()
			dispatch(RoduxCall.Actions.ClearCallRecords())
		end
	end, { getCallRecords })

	local selectCallRecords = React.useCallback(function(state: any)
		return state.Call.callHistory.callRecords
	end, {})

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
		-- TODO(IRIS-864): Localization.
		if status == RetrievalStatus.Failed then
			message = "Something went wrong! Please try again."
		else
			message = "Your friends are waiting for your call!"
		end

		return React.createElement(NoItemView, {
			isImageEnabled = status ~= RetrievalStatus.Failed,
			imageName = "icons/graphic/findfriends_xlarge",
			isFailedButtonEnabled = status == RetrievalStatus.Failed,
			onFailedButtonActivated = function()
				getCallRecords(nextPageCursor)
			end,
			isCallButtonEnabled = status == RetrievalStatus.Done,
			onCallButtonActivated = navigateToNewCall,
			messageText = message,
		})
	end, dependencyArray(getCallRecords, navigateToNewCall, nextPageCursor, status))

	local touchStarted = React.useCallback(function(touch: InputObject)
		initialPositionY.current = touch.Position.Y
	end, {})

	local touchMoved = React.useCallback(function(touch: InputObject)
		local delta = touch.Position.Y - initialPositionY.current :: number

		if
			delta > Constants.TOUCH_SLOP
			and scrollingFrameRef.current
			and scrollingFrameRef.current.CanvasPosition.Y == 0
		then
			-- Check if user is scrolling up at the top. If so, we will
			-- disable this scroller so that inputs will power the outer
			-- scroller.
			setOverscrolling(true)
		end
	end, {})

	local touchEnded = React.useCallback(function()
		setOverscrolling(false)
	end, {})

	local children: { any } = React.useMemo(function()
		local entries: any = {}
		entries["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		for i, callRecord in ipairs(callRecords) do
			entries[i] = React.createElement(CallHistoryItem, {
				callRecord = callRecord,
				localUserId = localUserId,
				showDivider = i ~= #callRecords,
				dismissCallback = props.dismissCallback,
				layoutOrder = i,
			})
		end
		if nextPageCursor ~= "" then
			-- This renders an extra component like refresh button or a loading
			-- indicator. We do not want either when there is no next page.
			local index = #entries + 1
			if status == RetrievalStatus.Failed then
				entries[index] = noRecordsComponent
			else
				entries[index] = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, Constants.ITEM_HEIGHT),
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
	end, dependencyArray(callRecords, nextPageCursor, noRecordsComponent, status))

	local onFetchNextPage = React.useCallback(function(f)
		if
			not isLoading.current
			and status ~= RetrievalStatus.Failed
			and nextPageCursor ~= ""
			and f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
		then
			getCallRecords(nextPageCursor)
		end
	end, dependencyArray(getCallRecords, nextPageCursor, status))

	React.useEffect(function()
		-- This is used to handle the case where the number of records is less
		-- than the height of the list. That means the list will never be
		-- scrollable to fetch more items. This does not check if there is a
		-- next page or if we are in a failure state. We'll check that in onFetchNextPage.
		local totalHeight = (#children - 1) * Constants.ITEM_HEIGHT

		if scrollingFrameRef.current and totalHeight <= scrollingFrameRef.current.AbsoluteSize.Y then
			onFetchNextPage(scrollingFrameRef.current)
		end
	end, dependencyArray(children, onFetchNextPage))

	return if #callRecords == 0 and status == RetrievalStatus.Fetching
		then React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants.ITEM_HEIGHT),
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
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(1, 0, 0, #children * Constants.ITEM_HEIGHT),
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
