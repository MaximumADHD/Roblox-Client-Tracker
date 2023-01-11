local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local React = require(CorePackages.Packages.React)

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local InGameMenu = script.Parent.Parent
local NavigateUp = require(InGameMenu.Thunks.NavigateUp)
local Constants = require(InGameMenu.Resources.Constants)

local UIAnimator = require(InGameMenu.Utility.UIAnimator)
local ZonePortal = require(InGameMenu.Components.ZonePortal)
local Pages = require(InGameMenu.Components.Pages)
local Spacer = require(InGameMenu.Components.Spacer)
local LeaveButton = require(InGameMenu.Components.LeaveButton)
local SearchBar = require(InGameMenu.Components.SearchBar)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Direction = require(InGameMenu.Enums.Direction)

local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize
local HeaderBar = UIBlox.App.Bar.HeaderBar
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)

local FADE_ANIMATION_SPEED = 0.3

local TITLE_HEIGHT = 48
local SPACER_HEIGHT = 4
local TOTAL_HEADER_HEIGHT = TITLE_HEIGHT + SPACER_HEIGHT
local ACTIONS_ICON_PADDING = 10

local HeaderBarMemo = React.memo(HeaderBar, function(newProps, oldProps)
	return newProps.memoKey == oldProps.memoKey and newProps.title == oldProps.title
end)

local PageWithSearch = Roact.PureComponent:extend("PageWithSearch")

PageWithSearch.validateProps = t.strictInterface({
	pageTitle = t.string,
	searchText = t.string,
	isFilteringMode = t.boolean,
	enableBackButton = t.optional(t.boolean),
	scrollingDown = t.optional(t.boolean),
	position = t.optional(t.UDim2),
	visible = t.optional(t.boolean),
	zIndex = t.optional(t.number),
	pageIsModal = t.optional(t.boolean),
	navigateUp = t.optional(t.callback),
	hasSearchBar = t.optional(t.boolean),
	onSearchBarDismissed = t.optional(t.callback),
	onSearchTextChanged = t.optional(t.callback),
	onSearchBarFocused = t.optional(t.callback),
	onSearchModeEntered = t.optional(t.callback),
	useLeaveButton = t.optional(t.boolean),
	onHeaderActivated = t.optional(t.callback),
	[Roact.Children] = t.optional(t.table),
})

PageWithSearch.defaultProps = {
	scrollingDown = false,
	hasSearchBar = false,
	visible = true,
	pageIsModal = false,
	isFilteringMode = false,
}

function PageWithSearch:init()
	self.searchBarRef = Roact.createRef()
	self.uiAnimator = UIAnimator:new()

	self.setSearchBarRef = function(rbx)
		self.searchBarRef = rbx
		if rbx then
			self.uiAnimator:addReversibleTween(
				rbx,
				'fade',
				UIAnimator.ReversibleTweens.Fade(),
				TweenInfo.new(FADE_ANIMATION_SPEED)
			)
		else
			self.uiAnimator:removeAllTweens(rbx)
		end
	end

	self.onSearchBarDismissed = function()
		self.uiAnimator:playReversibleTween(self.searchBarRef, 'fade', false)
		if self.props.onSearchBarDismissed then
			self.props.onSearchBarDismissed()
		end
	end

	self.menuOpenChange = function(menuOpen, wasOpen)
		if not menuOpen and wasOpen and self.props.isFilteringMode and self.props.onSearchBarDismissed then
			self.props.onSearchBarDismissed()
		end
	end
end

function PageWithSearch:renderTitle(style)
	local theme = style.Theme
	local font = style.Font
	local centerTextFontStyle = font.Header1

	return Roact.createElement(StyledTextLabel, {
		size = UDim2.new(1, 0, 1, 0),
		text = self.props.pageTitle,
		textTruncate = Enum.TextTruncate.AtEnd,
		textXAlignment = Enum.TextXAlignment.Center,
		textYAlignment = Enum.TextYAlignment.Center,
		fontStyle = centerTextFontStyle,
		colorStyle = theme.TextEmphasis,
	})
end

function PageWithSearch:renderWithSelectionCursor(getSelectionCursor)
	local props = self.props
	local memoKey = 0;
	if props.isFilteringMode then
		memoKey += 1
	end
	if props.enableBackButton then
		memoKey += 2
	end
	if props.hasSearchBar then
		memoKey += 4
	end

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
			PageHeader = Roact.createElement("CanvasGroup", {
				GroupTransparency = 0,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			}, {
				Roact.createElement(HeaderBarMemo, {
					title = props.pageTitle,
					memoKey = memoKey,
					onHeaderActivated = props.onHeaderActivated,
					renderLeft = function()
						if props.enableBackButton and self.props.isFilteringMode == false then
							return HeaderBar.renderLeft.backButton(function()
								props.navigateUp()
							end)()
						end
						return nil
					end,
					renderCenter = function()
						local centerElements = {
							Title = self:renderTitle(style)
						}

						if props.hasSearchBar then
							centerElements.SearchBar = Roact.createElement(SearchBar, {
								size = UDim2.new(1, 0, 1, 0),
								text = props.searchText,
								autoCaptureFocus = true,
								onTextChanged = props.onSearchTextChanged,
								onFocused = props.onSearchBarFocused,
								onCancelled = self.onSearchBarDismissed,
								zIndex = 1,
								visible = self.props.isFilteringMode,
								[Roact.Ref] = self.setSearchBarRef,
							})
						end
						return Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundColor3 = style.Theme.BackgroundDefault.Color,
							BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
						}, centerElements)
					end,
					renderRight = function()
						local layoutOrder = -1
						local children = {
							Layout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								SortOrder = Enum.SortOrder.LayoutOrder,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
								VerticalAlignment = Enum.VerticalAlignment.Center,
								Padding = UDim.new(0, ACTIONS_ICON_PADDING),
							})
						}

						if not self.props.isFilteringMode then
							if props.titleChildren then
								for childKey, child in pairs(props.titleChildren) do
									children[childKey] = child
									layoutOrder = layoutOrder + 1
								end
							end

							if props.hasSearchBar then
								children.SearchIcon = Roact.createElement(IconButton, {
									layoutOrder = layoutOrder,
									size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
									icon = Images["icons/common/search"],
									onActivated = function()
										self.uiAnimator:playReversibleTween(self.searchBarRef, 'fade', true)
										if self.props.onSearchModeEntered then
											self.props.onSearchModeEntered()
										end
									end,
								})
							end
						end

						local childrenCount = layoutOrder + 1
						if childrenCount == 0 then
							return nil :: any
						end
						return Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, childrenCount * ICON_SIZE, 1, 0),
						}, children)
					end,
					backgroundTransparency = style.Theme.BackgroundDefault.Transparency,
					barHeight = TITLE_HEIGHT,
				})
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
			Watcher = Roact.createElement(PageNavigationWatcher, {
				onNavigate = self.menuOpenChange,
				desiredPage = "",
			}),
		})
	end)
end

function PageWithSearch:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
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
end)(PageWithSearch)
