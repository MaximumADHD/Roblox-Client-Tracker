--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")

local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local RetrievalStatus = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local useApolloClient = ApolloClientModule.useApolloClient

local ContactList = RobloxGui.Modules.ContactList
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local FindFriendsFromUserId = dependencies.NetworkingFriends.FindFriendsFromUserId
local SearchFriendsByQuery = dependencies.NetworkingFriends.SearchFriendsByQuery
local GetSuggestedCallees = dependencies.NetworkingCall.GetSuggestedCallees

local useStyle = UIBlox.Core.Style.useStyle
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)
local SectionHeader = require(ContactList.Components.FriendList.SectionHeader)
local NoItemView = require(ContactList.Components.common.NoItemView)
local Constants = require(ContactList.Components.common.Constants)

local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	dismissCallback: () -> (),
	isSmallScreen: boolean,
	scrollingEnabled: boolean,
	searchText: string,
}

local function FriendListContainer(props: Props)
	local apolloClient = useApolloClient()
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
	local friends, setFriends = React.useState({})
	local nextPageCursor, setNextPageCursor = React.useState(nil)
	local currentGuid = React.useRef("")
	-- Cache this because we just fetch once. Given the catch, this promise will
	-- succeed. We can inspect the result to see if it is a true success.
	local requestSuggestedCallees = React.useRef(dispatch(GetSuggestedCallees.API()):catch(function() end))

	local trimmedSearchText = React.useMemo(function()
		return string.gsub(props.searchText, "%s+", "")
	end, { props.searchText })

	local lastRemovedFriend = useSelector(function(state)
		return state.LastRemovedFriend.lastRemovedFriendId
	end)

	-- Note: Careful about dependencies to this function or else we might have
	-- an infinite render.
	local getFriends = React.useCallback(function(currentFriends, cursor)
		if localUserId then
			isLoading.current = true
			setStatus(RetrievalStatus.Fetching)

			local secondTimeout = if currentGuid.current == "" then 0 else 0.5
			local guid = HttpService:GenerateGUID(false)
			currentGuid.current = guid

			local request = function()
				-- Used to debounce the requests so that we don't overload the server.
				if currentGuid.current ~= guid then
					return
				end

				local requestFriends = dispatch(
					if trimmedSearchText == ""
						then FindFriendsFromUserId.API(
							localUserId,
							{ userSort = "CombinedName", cursor = cursor, limit = 20 }
						)
						else SearchFriendsByQuery.API(
							localUserId,
							{ userSort = "CombinedName", cursor = cursor, limit = 20, query = trimmedSearchText }
						)
				)

				Promise.all({ requestFriends, requestSuggestedCallees.current }):andThen(function(result)
					if currentGuid.current ~= guid then
						return
					end

					local responseFriends = result[1]
					local responseSuggestedCallees = result[2]

					local updatedFriends = {}
					for _, friend in ipairs(currentFriends) do
						table.insert(updatedFriends, friend)
					end
					for _, friend in ipairs(responseFriends.responseBody.PageItems) do
						table.insert(updatedFriends, friend)
					end

					local userIds = Cryo.List.map(updatedFriends, function(friend)
						return tostring(friend.id)
					end)

					if trimmedSearchText == "" and responseSuggestedCallees ~= nil then
						-- We catch this error. So we just know if it
						-- succeeds based on whether the response exists.
						for _, suggestedCallee in ipairs(responseSuggestedCallees.responseBody.suggestedCallees) do
							table.insert(userIds, tostring(suggestedCallee.userId))
						end
					end

					apolloClient
						:query({
							query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
							variables = {
								userIds = userIds,
							},
						})
						:andThen(function()
							if currentGuid.current ~= guid then
								return
							end
							-- Friend names fetched, update the list with this page.
							setFriends(updatedFriends)
							setNextPageCursor(responseFriends.responseBody.NextCursor)
							setStatus(RetrievalStatus.Done)
						end)
						:catch(function(error)
							if currentGuid.current ~= guid then
								return
							end
							setStatus(RetrievalStatus.Failed)
						end)
				end, function()
					if currentGuid.current ~= guid then
						return
					end
					setStatus(RetrievalStatus.Failed)
				end)
			end

			if secondTimeout == 0 then
				request()
			else
				delay(secondTimeout, request)
			end
		end
	end, dependencyArray(trimmedSearchText, lastRemovedFriend))

	React.useEffect(function()
		getFriends({}, "")

		return function()
			-- Clear out results since getFriends changes when search changes.
			setFriends({})
			setNextPageCursor(nil)
		end
	end, dependencyArray(getFriends))

	React.useEffect(function()
		if status ~= RetrievalStatus.Fetching then
			isLoading.current = false
		end
	end, { status })

	local selectSuggestedCallees = React.useCallback(function(state: any)
		return state.Call.suggestedCallees.suggestedCallees
	end, {})

	local suggestedCallees = useSelector(
		selectSuggestedCallees,
		function(newSuggestedCallees: any, oldSuggestedCallees: any)
			if #newSuggestedCallees ~= #oldSuggestedCallees then
				-- Shortcut for unmatched list lengths.
				return false
			else
				-- Check to see if callees list was changed.
				for i, callee in ipairs(newSuggestedCallees) do
					if callee.userId ~= oldSuggestedCallees[i].userId then
						return false
					end
				end
				return true
			end
		end
	) or {}

	local noFriendsText = React.useMemo(function()
		local message
		if status == RetrievalStatus.Failed then
			message = RobloxTranslator:FormatByKey("Feature.Call.Error.Title.GenericLong")
		elseif props.searchText ~= "" then
			message = RobloxTranslator:FormatByKey("Feature.Call.Description.NoFriendsFound")
		else
			message = RobloxTranslator:FormatByKey("Feature.Call.Prompt.AddFriends")
		end

		return React.createElement(NoItemView, {
			isImageEnabled = status ~= RetrievalStatus.Failed,
			imageName = if props.searchText == ""
				then "icons/graphic/findfriends_xlarge"
				else "icons/status/oof_xlarge",
			isFailedButtonEnabled = status == RetrievalStatus.Failed,
			onFailedButtonActivated = function()
				getFriends(friends, nextPageCursor)
			end,
			isCallButtonEnabled = false,
			onCallButtonActivated = function() end,
			messageText = message,
		})
	end, dependencyArray(props.searchText, friends, getFriends, nextPageCursor, status))

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

	local namesUserIds = React.useMemo(function()
		local users = Cryo.List.join(friends, suggestedCallees)
		return Cryo.List.map(users, function(user)
			return tostring(user.id or user.userId)
		end)
	end)

	local namesFetch = UserProfiles.Hooks.useUserProfilesFetch({
		userIds = namesUserIds,
		query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
	})

	local touchEnded = React.useCallback(function()
		setOverscrolling(false)
	end, {})

	local children: any = React.useMemo(
		function()
			local entries: any = {}
			entries["UIListLayout"] = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			if #suggestedCallees ~= 0 and trimmedSearchText == "" then
				--[[
					Only incrementing numbers are counted when measuring the size of the entries table with #entries.
					String keys like "suggestedHeader" do not contribute to the #entries count.
				]]
				--
				entries[#entries + 1] = React.createElement(SectionHeader, {
					name = RobloxTranslator:FormatByKey("Feature.Call.Label.Suggested"),
					description = RobloxTranslator:FormatByKey("Feature.Call.Description.SuggestedFriends"),
					layoutOrder = #entries + 1,
				})

				local filteredSuggestedCallees = {}
				for i, callee in ipairs(suggestedCallees) do
					if not BlockingUtility:IsPlayerBlockedByUserId(callee.userId) then
						table.insert(filteredSuggestedCallees, callee)
					end
				end

				for i, callee in ipairs(filteredSuggestedCallees) do
					local combinedName = ""
					local userName = ""

					if namesFetch.data then
						combinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, callee.userId)
						userName = UserProfiles.Selectors.getUsernameFromId(namesFetch.data, callee.userId)
					end

					entries[#entries + 1] = React.createElement(FriendListItem, {
						userId = callee.userId,
						combinedName = combinedName,
						userName = userName,
						userPresenceType = callee.userPresenceType,
						lastLocation = callee.lastLocation,
						dismissCallback = props.dismissCallback,
						layoutOrder = #entries + 1,
						showDivider = i ~= #filteredSuggestedCallees,
					})
					-- end
				end
			end

			if #friends ~= 0 then
				entries[#entries + 1] = React.createElement(SectionHeader, {
					name = RobloxTranslator:FormatByKey("Feature.Call.Label.Friends"),
					description = RobloxTranslator:FormatByKey("Feature.Call.Description.Friends"),
					layoutOrder = #entries + 1,
				})
			end

			local filteredFriends = {}
			for i, friend in ipairs(friends) do
				if not BlockingUtility:IsPlayerBlockedByUserId(friend.id) then
					table.insert(filteredFriends, friend)
				end
			end

			for i, friend in ipairs(filteredFriends) do
				local combinedName = ""
				local userName = ""
				if namesFetch.data then
					combinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, friend.id)
					userName = UserProfiles.Selectors.getUsernameFromId(namesFetch.data, friend.id)
				end

				entries[#entries + 1] = React.createElement(FriendListItem, {
					userId = friend.id,
					combinedName = combinedName,
					userName = userName,
					dismissCallback = props.dismissCallback,
					layoutOrder = #entries + 1,
					showDivider = i ~= #filteredFriends,
				})
				-- end
			end

			if nextPageCursor ~= nil then
				-- This renders an extra component like refresh button or a loading
				-- indicator. We do not want either when there is no next page.
				local index = #entries + 1
				if status == RetrievalStatus.Failed then
					entries[index] = noFriendsText
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
		end,
		dependencyArray(
			friends,
			nextPageCursor,
			noFriendsText,
			status,
			namesFetch.data,
			suggestedCallees,
			trimmedSearchText
		)
	)

	local onFetchNextPage = React.useCallback(function(f)
		if
			not isLoading.current
			and status ~= RetrievalStatus.Failed
			and nextPageCursor ~= nil
			and f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
		then
			getFriends(friends, nextPageCursor)
		end
	end, dependencyArray(friends, getFriends, nextPageCursor, status))

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

	return if #friends == 0 and status == RetrievalStatus.Fetching
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
		elseif #friends == 0 then noFriendsText
		else Roact.createFragment({
			FriendsScrollingFrame = React.createElement("ScrollingFrame", {
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

return FriendListContainer
