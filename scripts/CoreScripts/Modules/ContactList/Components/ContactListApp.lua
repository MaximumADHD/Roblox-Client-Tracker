--!strict
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local Components = script.Parent
local CallerListContainer = require(Components.CallerListContainer)
local CallDetailsContainer = require(Components.CallDetails.CallDetailsContainer)
local CallBarContainer = require(Components.CallBarContainer)
local CloseContactList = require(Components.Parent.Actions.CloseContactList)
local OpenContactList = require(Components.Parent.Actions.OpenContactList)

local Pages = require(script.Parent.Parent.Enums.Pages)

export type Props = {}

local ToggleContactList = "ToggleContactList"

return function(props: Props)
	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)
	local dispatch = useDispatch()

	React.useEffect(function()
		ContextActionService:BindAction(ToggleContactList, function(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.End then
				if currentPage ~= nil then
					dispatch(CloseContactList())
				else
					dispatch(OpenContactList())
				end
			end
		end, false, Enum.KeyCode.Period)

		return function()
			ContextActionService:UnbindAction(ToggleContactList)
		end
	end, { currentPage })

	local currentContainer
	if currentPage == Pages.CallerList then
		currentContainer = React.createElement(CallerListContainer)
	elseif currentPage == Pages.CallDetails then
		currentContainer = React.createElement(CallDetailsContainer)
	end

	return React.createElement("Folder", {}, {
		Container = currentContainer,
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
