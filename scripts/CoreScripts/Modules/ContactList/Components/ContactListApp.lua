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
local CloseContactList = require(Components.Parent.Actions.CloseContactList)
local OpenContactList = require(Components.Parent.Actions.OpenContactList)

export type Props = {}

local ToggleContactList = "ToggleContactList"

return function(props: Props)
	local selectVisible = React.useCallback(function(state: any)
		return state.Navigation.contactListVisible or false
	end)
	local visible = useSelector(selectVisible)
	local dispatch = useDispatch()

	React.useEffect(function()
		ContextActionService:BindAction(ToggleContactList, function(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.End then
				if visible then
					dispatch(CloseContactList())
				else
					dispatch(OpenContactList())
				end
			end
		end, false, Enum.KeyCode.Period)

		return function()
			ContextActionService:UnbindAction(ToggleContactList)
		end
	end, { visible })

	return if visible then React.createElement(CallerListContainer) else nil
end
