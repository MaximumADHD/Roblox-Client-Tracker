--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SocialService = game:GetService("SocialService")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local Components = script.Parent
local CallHistoryContainer = require(Components.CallHistory.CallHistoryContainer)
local CallDetailsContainer = require(Components.CallDetails.CallDetailsContainer)
local FriendListContainer = require(Components.FriendList.FriendListContainer)
local CallBarContainer = require(Components.CallBarContainer)
local CloseContactList = require(Components.Parent.Actions.CloseContactList)
local OpenContactList = require(Components.Parent.Actions.OpenContactList)

local Pages = require(script.Parent.Parent.Enums.Pages)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

export type Props = {}

return function(props: Props)
	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)
	local dispatch = useDispatch()

	if game:GetEngineFeature("EnableSocialServiceIrisInvite") then
		React.useEffect(function()
			local promptIrisInviteRequestedConn = SocialService.PromptIrisInviteRequested:Connect(
				function(player: any, tag: string)
					if localPlayer and localPlayer.UserId == player.UserId then
						dispatch(OpenContactList(tag))
					end
				end
			)

			local irisInvitePromptClosedConn = SocialService.IrisInvitePromptClosed:Connect(function(player: any)
				if localPlayer and localPlayer.UserId == player.UserId then
					dispatch(CloseContactList())
				end
			end)

			return function()
				promptIrisInviteRequestedConn:Disconnect()
				irisInvitePromptClosedConn:Disconnect()
			end
		end, {})
	end

	local currentContainer
	if currentPage == Pages.CallHistory then
		currentContainer = React.createElement(CallHistoryContainer) :: any
	elseif currentPage == Pages.CallDetails then
		currentContainer = React.createElement(CallDetailsContainer) :: any
	elseif currentPage == Pages.FriendList then
		currentContainer = React.createElement(FriendListContainer) :: any
	end

	return React.createElement("Folder", {}, {
		Container = currentContainer,
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
