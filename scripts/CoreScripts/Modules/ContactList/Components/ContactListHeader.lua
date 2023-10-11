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
local Images = UIBlox.App.ImageSet.Images
local ImageSetButton = UIBlox.Core.ImageSet.Button
local useStyle = UIBlox.Core.Style.useStyle

local BUTTON_SIZE = 28
local DIVIDER_WIDTH = 1
local BUTTON_PADDING = 8
local TEXT_PADDING = 12
local SIDE_PADDING = 24

export type Props = {
	layoutOrder: number?,
	headerHeight: number,
	currentPage: Pages.PagesType,
	dismissCallback: () -> (),
}

-- TODO(IRIS-864): Localization.
local getTitleFromPage = function(currentPage)
	if currentPage == Pages.FriendList then
		return "Start New Call"
	elseif currentPage == Pages.CallHistory then
		return "Recent Calls"
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
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, SIDE_PADDING),
			PaddingRight = UDim.new(0, SIDE_PADDING),
		}),
		HeaderUIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		DismissButton = React.createElement(ImageSetButton, {
			Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			Image = if props.currentPage == Pages.CallHistory
				then Images["icons/navigation/close"]
				else Images["icons/navigation/pushBack"],
			LayoutOrder = 1,
			[React.Event.Activated] = if props.currentPage == Pages.CallHistory
				then props.dismissCallback
				else navigateToCallHistory,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),
		DividerContainer = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Divider = React.createElement("Frame", {
				Size = UDim2.new(0, DIVIDER_WIDTH, 0, 16),
				BackgroundColor3 = theme.Divider.Color,
				BackgroundTransparency = theme.Divider.Transparency,
				BorderSizePixel = 0,
			}),
			DividerContainerUIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, BUTTON_PADDING),
				PaddingRight = UDim.new(0, TEXT_PADDING),
			}),
		}),
		HeaderText = React.createElement("TextLabel", {
			Size = UDim2.new(1, -(BUTTON_PADDING + TEXT_PADDING + DIVIDER_WIDTH + BUTTON_SIZE * 2), 0, 24),
			BackgroundTransparency = 1,
			Font = font.Header1.Font,
			Text = getTitleFromPage(props.currentPage),
			TextColor3 = theme.TextEmphasis.Color,
			TextSize = font.Header1.RelativeSize * font.BaseSize,
			TextTransparency = theme.TextEmphasis.Transparency,
			LayoutOrder = 3,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		NewCallButton = if props.currentPage == Pages.CallHistory
			then React.createElement(ImageSetButton, {
				Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				Image = "rbxassetid://14522111372",
				LayoutOrder = 4,
				[React.Event.Activated] = navigateToNewCall,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			})
			else nil,
	})
end

return ContactListHeader
