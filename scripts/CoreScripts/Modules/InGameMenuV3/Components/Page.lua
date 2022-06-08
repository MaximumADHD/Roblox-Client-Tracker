local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local InGameMenu = script.Parent.Parent
local NavigateUp = require(InGameMenu.Thunks.NavigateUp)
local Constants = require(InGameMenu.Resources.Constants)

local ZonePortal = require(InGameMenu.Components.ZonePortal)
local Pages = require(InGameMenu.Components.Pages)
local Spacer = require(InGameMenu.Components.Spacer)
local LeaveButton = require(InGameMenu.Components.LeaveButton)

local Direction = require(InGameMenu.Enums.Direction)

local HeaderBar = UIBlox.App.Bar.HeaderBar

local TITLE_HEIGHT = 48
local SPACER_HEIGHT = 4
local TOTAL_HEADER_HEIGHT = TITLE_HEIGHT + SPACER_HEIGHT

local function renderWithSelectionCursor(props, getSelectionCursor)
	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			Position = props.position,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = props.visible and not props.pageIsModal,
			ZIndex = props.zIndex,
			Selectable = false,
		}, {
			PageHeader = Roact.createElement(HeaderBar, {
				title = props.pageTitle,
				renderLeft = props.isFilteringMode and function()
					return nil
				end or props.enableBackButton and HeaderBar.renderLeft.backButton(function()
					props.navigateUp()
				end) or function()
					return nil
				end,
				renderCenter = props.isFilteringMode and function()
					return props.searchBar
				end or nil,
				renderRight = function()
					if props.isFilteringMode then
						return nil
					end

					return props.titleChildren
				end,
				backgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				barHeight = TITLE_HEIGHT,
			}),
			Spacer = Roact.createElement(Spacer, {
				position = UDim2.new(0, 0, 0, TITLE_HEIGHT),
			}),
			PageContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, Constants.Zone.ContentOffset, 1, 0),
				Size = UDim2.new(1, -Constants.Zone.ContentOffset, 1, -TOTAL_HEADER_HEIGHT),
			}, props[Roact.Children]),
			LeaveButton = props.useLeaveButton and Roact.createElement(LeaveButton, {
				hidden = props.scrollingDown,
				ZIndex = 2,
			}) or nil,
			ZonePortal = Roact.createElement(ZonePortal, {
				targetZone = 0,
				direction = Direction.Left,
			}) or nil,
		})
	end)
end

local function Page(props)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return renderWithSelectionCursor(props, getSelectionCursor)
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local page = Pages.pagesByKey[state.menuPage]
	return {
		enableBackButton = page and page.navigationDepth > 1,
	}
end, function(dispatch)
	return {
		navigateUp = function()
			dispatch(NavigateUp)
		end,
	}
end)(Page)
