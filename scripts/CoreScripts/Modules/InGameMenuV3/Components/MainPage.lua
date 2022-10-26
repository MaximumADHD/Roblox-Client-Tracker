--!nonstrict

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local React = require(CorePackages.Packages.React)

local withStyle = UIBlox.Core.Style.withStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local VerticalScrollViewWithIndicator = UIBlox.App.Container.VerticalScrollViewWithIndicator

local InGameMenu = script.Parent.Parent
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Constants = require(InGameMenu.Resources.Constants)
local Direction = require(InGameMenu.Enums.Direction)

local PageNavigation = require(script.Parent.PageNavigation)
local PageNavigationMemo = React.memo(PageNavigation)

local GameIconHeader = require(script.Parent.GameIconHeader)
local ZonePortal = require(script.Parent.ZonePortal)

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)
local Spacer = require(InGameMenu.Components.Spacer)
local LeaveButton = require(InGameMenu.Components.LeaveButton)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)

local Flags = InGameMenu.Flags
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)
local GetFFlagSideNavControllerBar = require(Flags.GetFFlagSideNavControllerBar)
local FocusHandler = require(script.Parent.Connection.FocusHandler)
local IGMMainPageControllerBar = require(script.Parent.IGMMainPageControllerBar)

local GetFFlagShareInviteLinkContextMenuV3Enabled = require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

local MAIN_PAGE_WIDTH = Constants.PageWidth

local MainPage = Roact.PureComponent:extend("MainPage")

MainPage.validateProps = t.strictInterface({
	open = t.boolean,
	respawnButtonVisible = t.boolean,
	startLeavingGame = t.callback,
	startRespawning = t.callback,
	closeMenu = t.callback,
	screenSize = t.Vector2,
	canCaptureFocus = t.optional(t.boolean),
	inputType = t.optional(t.string),
	setFirstItemRef = t.optional(t.callback),
	shouldForgetPreviousSelection = t.optional(t.boolean),
	isMainPageInForeground = GetFFlagSideNavControllerBar() and t.optional(t.boolean) or nil,
})

function MainPage:init()
	self:setState({
		heightOffset = 0,
	})
	self.scrollingThread = nil
	self.scrollingDown = nil

	self.mainPageFirstButtonRef = Roact.createRef()
	self.scrollingFrameRef = Roact.createRef()

	self.fetchGameIsFavorite = function()
		return self.props.fetchGameIsFavorite(networkImpl)
	end

	self.onMenuNavigate = function(menuOpen, prevOpen)
		if menuOpen and not prevOpen then
			local scrollingFrame = self.scrollingFrameRef:getValue()
			if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		end
	end
end

function MainPage:renderMainPageFocusHandler()
	return Roact.createElement(FocusHandler, {
		isFocused = self.canGamepadCaptureFocus(self.props),
		shouldForgetPreviousSelection = self.props.shouldForgetPreviousSelection,
		didFocus = function(previousSelection)
			GuiService.SelectedCoreObject = previousSelection or self.mainPageFirstButtonRef:getValue()
		end,
	})
end

function MainPage:render()
	local canCaptureFocus = nil
	if GetFFlagSideNavControllerBar() then
		canCaptureFocus = self.props.isMainPageInForeground and self.props.inputType == Constants.InputType.Gamepad
	else
		canCaptureFocus = self.canGamepadCaptureFocus(self.props)
	end

	return PageUtils.withScrollDownState(function(onScroll, scrollingDown)
		return withStyle(function(style)
			self:updateHeightOffset(scrollingDown)
			return Roact.createElement("TextButton", {
				Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				Visible = self.props.open,
				Text = "",
				AutoButtonColor = false,
				Selectable = false,
			}, {
				PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
					desiredPage = Constants.MainPagePageKey,
					onNavigate = self.onMenuNavigate,
				}),
				MainPageFocusHandler = GetFFlagUseIGMControllerBar()
						and not VRService.VREnabled
						and self:renderMainPageFocusHandler()
					or nil,
				ControllerBar = Roact.createElement(IGMMainPageControllerBar, {
					canCaptureFocus = canCaptureFocus,
				}),
				ZonePortal = Roact.createElement(ZonePortal, {
					targetZone = 0,
					direction = Direction.Left,
				}),
				PageContents = Roact.createElement(VerticalScrollViewWithIndicator, {
					size = UDim2.new(1, 0, 1, self.state.heightOffset),
					useAutomaticCanvasSize = true,
					canvasSizeY = UDim.new(0, 0),  -- no minmum size
					scrollingFrameRef = self.scrollingFrameRef,
					[Roact.Change.CanvasPosition] = onScroll,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Top,
					}),
					GameIconHeader = Roact.createElement(GameIconHeader, { LayoutOrder = 1 }),
					Spacer = Roact.createElement(Spacer, {
						layoutOrder = 2,
					}),
					PageNavigation = Roact.createElement(PageNavigationMemo, {
						LayoutOrder = 3,
						mainPageFirstButtonRef = self.mainPageFirstButtonRef,
						autosize = true,
					}),
					Description = Roact.createElement("Frame", {
						LayoutOrder = 4,
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
					}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingTop = UDim.new(0, 24),
							PaddingBottom = UDim.new(0, 80),
							PaddingLeft = UDim.new(0, 24),
							PaddingRight = UDim.new(0, 24),
						}),
						DescriptionText = Roact.createElement(StyledTextLabel, {
							fontStyle = style.Font.CaptionBody,
							colorStyle = style.Theme.TextEmphasis,
							size = UDim2.new(1, 0, 0, 0),
							text = self.props.gameDescription,
							textWrapped = true,
							fluidSizing = false,
							textXAlignment = Enum.TextXAlignment.Left,
							textYAlignment = Enum.TextYAlignment.Top,
							automaticSize = Enum.AutomaticSize.Y,
						}),
					}),
				}),
				LeaveButton = Roact.createElement(LeaveButton, {
					hidden = scrollingDown,
				}),
			})
		end)
	end)
end

function MainPage:updateHeightOffset(scrollingDown)
	if self.scrollingDown ~= scrollingDown then
		self.scrollingDown = scrollingDown

		if self.scrollingThread then
			task.cancel(self.scrollingThread)
		end

		if scrollingDown then
			self:setState({
				heightOffset = 0,
			})
		else
			self.scrollingThread = task.delay(Constants.LeaveButtonTweenTime, function()
				self:setState({
					heightOffset = -Constants.LeaveButtonContainerHeight,
				})
			end)
		end
	end
end

function MainPage:didMount()
	self.fetchGameIsFavorite()
end

function MainPage.canGamepadCaptureFocus(props)
	return props.canCaptureFocus and props.inputType == Constants.InputType.Gamepad
end

function MainPage:didUpdate(prevProps, prevState)
	if VRService.VREnabled then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local isMainPageInForeground = nil
	if GetFFlagSideNavControllerBar() then
		isMainPageInForeground = state.isMenuOpen
			and not state.respawn.dialogOpen
			and state.menuPage == Constants.MainPagePageKey
	end

	local canCaptureFocus = state.menuPage == Constants.MainPagePageKey
		and state.isMenuOpen
		and not state.respawn.dialogOpen
		and state.currentZone == 1

	return {
		shouldForgetPreviousSelection = state.menuPage ~= Constants.MainPagePageKey or state.currentZone == 0,
		screenSize = state.screenSize,
		canCaptureFocus = canCaptureFocus,
		inputType = state.displayOptions.inputType,
		isMainPageInForeground = isMainPageInForeground,
		isFavorited = state.gameInfo.isFavorited,
		gameDescription = state.gameInfo.description,
		gameCreated = if GetFFlagShareInviteLinkContextMenuV3Enabled() then state.gameInfo.created else nil,
		shareInviteLink = if GetFFlagShareInviteLinkContextMenuV3Enabled() then state.shareLinks.Invites.ShareInviteLink else nil,
	}
end, function(dispatch)
	local universeId = game.GameId

	return {
		fetchGameIsFavorite = function(networking)
			return universeId > 0 and dispatch(ApiFetchGameIsFavorite(networking, tostring(universeId)))
		end,
		postFavorite = function(networking, isFavorite)
			return dispatch(GamePostFavorite(networking, tostring(universeId), isFavorite))
		end,
		setFavorite = function(isFavorite)
			return dispatch(SetGameFavorite(tostring(universeId), isFavorite))
		end,
		startLeavingGame = function()
			dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))
		end,
		closeMenu = function()
			dispatch(CloseMenu)
		end,
	}
end)(MainPage)
