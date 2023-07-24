--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local Pages = require(ContactList.Enums.Pages)
local SetCurrentPage = require(ContactList.Actions.SetCurrentPage)

local useDispatch = dependencies.Hooks.useDispatch
local UIBlox = dependencies.UIBlox
local Colors = UIBlox.App.Style.Colors
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle

local BUTTON_SIZE = 36
local DIVIDER_WIDTH = 1
local IN_BETWEEN_PADDING = 12
local PADDING = Vector2.new(12, 16)

export type Props = {
	layoutOrder: number?,
	headerHeight: number,
	currentPage: Pages.PagesType,
	dismissCallback: () -> (),
	isDevMode: boolean?,
}

-- TODO (timothyhsu): Localization
local getTitleFromPage = function(currentPage)
	if currentPage == Pages.FriendList then
		return "Start New Call"
	elseif currentPage == Pages.CallHistory then
		return "Recent Calls"
	elseif currentPage == Pages.CallDetails then
		return "Call Details"
	end

	return ""
end

local ContactListHeader = function(props: Props)
	local style = useStyle()
	local dispatch = useDispatch()
	local theme = style.Theme
	local font = style.Font

	local navigateToCallHistory = React.useCallback(function()
		dispatch(SetCurrentPage(Pages.CallHistory))
	end, {})

	local navigateToNewCall = React.useCallback(function()
		dispatch(SetCurrentPage(Pages.FriendList))
	end)

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, props.headerHeight),
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
	}, {
		HeaderUIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, IN_BETWEEN_PADDING),
		}),
		HeaderUIPadding = React.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING.Y),
			PaddingLeft = UDim.new(0, PADDING.X),
			PaddingRight = UDim.new(0, PADDING.X),
			PaddingTop = UDim.new(0, PADDING.Y),
		}),
		DismissButton = React.createElement(IconButton, {
			size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
			icon = if not props.isDevMode or props.currentPage == Pages.CallHistory
				then Images["icons/navigation/close"]
				else Images["icons/navigation/pushBack"],
			iconSize = if not props.isDevMode or props.currentPage == Pages.CallHistory
				then IconSize.Small
				else IconSize.Medium,
			iconColor3 = Colors.White,
			layoutOrder = 1,
			onActivated = if not props.isDevMode or props.currentPage == Pages.CallHistory
				then props.dismissCallback
				else navigateToCallHistory,
		}),
		Divider = React.createElement("Frame", {
			Size = UDim2.new(0, DIVIDER_WIDTH, 1, 0),
			BackgroundColor3 = theme.Divider.Color,
			BackgroundTransparency = theme.Divider.Transparency,
			LayoutOrder = 2,
		}),
		HeaderText = React.createElement("TextLabel", {
			Size = UDim2.new(1, -(IN_BETWEEN_PADDING * 3 + DIVIDER_WIDTH + BUTTON_SIZE * 2), 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Font = font.Header1.Font,
			LayoutOrder = 3,
			Text = getTitleFromPage(props.currentPage),
			TextColor3 = theme.TextEmphasis.Color,
			TextSize = font.Header1.RelativeSize * font.BaseSize,
			TextTransparency = theme.TextEmphasis.Transparency,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		NewCallButton = if props.currentPage == Pages.CallHistory
			then React.createElement(IconButton, {
				size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				icon = Images["icons/actions/edit/add"],
				iconSize = IconSize.Medium,
				iconColor3 = Colors.White,
				layoutOrder = 4,
				onActivated = navigateToNewCall,
			})
			else nil,
	})
end

return ContactListHeader
