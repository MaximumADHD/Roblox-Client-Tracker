--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local ConfigureFriendMenu = require(ContactList.Components.common.ConfigureFriendMenu)

local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox

local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local CloseCFM = require(ContactList.Actions.CloseCFM)

local useStyle = UIBlox.Core.Style.useStyle

local CALL_DIALOG_DISPLAY_ORDER = 8

local function PlayerMenuContainer(passedProps)
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local isOpen = useSelector(function(state)
		return state.PlayerMenu.isOpen
	end)

	return React.createElement(Roact.Portal, {
		target = CoreGui :: Instance,
	}, {
		PlayerMenuScreen = React.createElement("ScreenGui", {
			Enabled = isOpen,
			IgnoreGuiInset = true,
			DisplayOrder = CALL_DIALOG_DISPLAY_ORDER,
		}, {
			Overlay = React.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = theme.Overlay.Color,
				BackgroundTransparency = theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
				[React.Event.Activated] = function()
					dispatch(CloseCFM())
				end,
			}),
			ConfigureFriendMenu = React.createElement(ConfigureFriendMenu),
		}),
	})
end

return PlayerMenuContainer
