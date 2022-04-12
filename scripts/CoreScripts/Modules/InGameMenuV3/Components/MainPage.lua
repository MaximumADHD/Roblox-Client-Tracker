--!nocheck

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local InGameMenu = script.Parent.Parent
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Constants = require(InGameMenu.Resources.Constants)
local Direction = require(InGameMenu.Enums.Direction)

local PageNavigation = require(script.Parent.PageNavigation)
local GameIconHeader = require(script.Parent.GameIconHeader)
local ZonePortal = require(script.Parent.ZonePortal)

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)
local Spacer = require(InGameMenu.Components.Spacer)
local LeaveButton = require(InGameMenu.Components.LeaveButton)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)

local Flags = InGameMenu.Flags
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagSideNavControllerBar = require(Flags.GetFFlagSideNavControllerBar)
local FocusHandler = require(script.Parent.Connection.FocusHandler)
local IGMMainPageControllerBar = require(script.Parent.IGMMainPageControllerBar)

local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)

local MAIN_PAGE_WIDTH = 400

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
	currentZone = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
	isMainPageInForeground = GetFFlagSideNavControllerBar() and t.optional(t.boolean) or nil,
})

function MainPage:init()
	self.mainPageFirstButtonRef = Roact.createRef()

	self.fetchGameIsFavorite = function()
		return self.props.fetchGameIsFavorite(networkImpl)
	end
	self.pageSize, self.setPageSize = Roact.createBinding(UDim2.new(0, 0, 0, 0))

	PageUtils.initOnScrollDownState(self)
end

function MainPage:renderMainPageFocusHandler()
	local canCaptureFocus = self.canGamepadCaptureFocus(self.props)

	local shouldForgetPreviousSelection = nil -- can be inlined when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		canCaptureFocus = self.canGamepadCaptureFocus(self.props)
		shouldForgetPreviousSelection = not self.props.open or self.props.currentZone == 0
	end

	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus,
		shouldForgetPreviousSelection = shouldForgetPreviousSelection,
		didFocus = GetFFlagIGMGamepadSelectionHistory() and function(previousSelection)
			GuiService.SelectedCoreObject = previousSelection or self.mainPageFirstButtonRef:getValue()
		end or function()
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

	return withStyle(function(style)

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
			MainPageFocusHandler = GetFFlagUseIGMControllerBar() and not (VRService.VREnabled and FFlagEnableNewVrSystem) and self:renderMainPageFocusHandler() or nil,
			ControllerBar = Roact.createElement(IGMMainPageControllerBar, {
				canCaptureFocus = canCaptureFocus,
			}),
			ZonePortal = Roact.createElement(ZonePortal, {
				targetZone = 0,
				direction = Direction.Left,
			}),
			PageContents = Roact.createElement("ScrollingFrame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = self.pageSize,
				Size = UDim2.new(1, 0, 1),
				[Roact.Change.CanvasPosition] = self.onScroll,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					[Roact.Change.AbsoluteContentSize] = function(rbx)
						self.setPageSize(UDim2.new(0, 0, 0, rbx.AbsoluteContentSize.Y))
					end,
				}),
				GameIconHeader = Roact.createElement(GameIconHeader, {LayoutOrder = 1}),
				Spacer = Roact.createElement(Spacer, {
					layoutOrder = 2,
				}),
				PageNavigation = Roact.createElement(PageNavigation, {
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
						PaddingBottom = UDim.new(0, 24),
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 24),
					}),
					DescriptionText = Roact.createElement(StyledTextLabel, {
						fontStyle = style.Font.Header2,
						colorStyle = style.Theme.TextEmphasis,
						size = UDim2.new(1, 0, 0, 59),
						text = self.props.gameDescription,
						textWrapped = true,
						textXAlignment = Enum.TextXAlignment.Left,
						textYAlignment = Enum.TextYAlignment.Top,
					}),
				})
			}),
			LeaveButton = Roact.createElement(LeaveButton, {
				hidden = self.state.scrollingDown,
			}),
		})
	end)
end

function MainPage:didMount()
	self.fetchGameIsFavorite()
end

function MainPage.canGamepadCaptureFocus(props)
	return props.canCaptureFocus
		and props.inputType == Constants.InputType.Gamepad
end

function MainPage:didUpdate(prevProps, prevState)
	if not GetFFlagIGMGamepadSelectionHistory() then
		if self.canGamepadCaptureFocus(self.props) then
			GuiService.SelectedCoreObject = self.mainPageFirstButtonRef:getValue()
		end
	end

	if VRService.VREnabled and FFlagEnableNewVrSystem then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local isMainPageInForeground = nil
	if GetFFlagSideNavControllerBar() then
		isMainPageInForeground = state.isMenuOpen and not state.respawn.dialogOpen and state.menuPage == Constants.MainPagePageKey
	end

	local currentZone = nil -- can inline when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		currentZone = state.currentZone
	end

	local canCaptureFocus = state.menuPage == Constants.MainPagePageKey
		and state.isMenuOpen
		and not state.respawn.dialogOpen
		and state.currentZone == 1

	return {
		open = state.isMenuOpen,
		screenSize = state.screenSize,
		canCaptureFocus = canCaptureFocus,
		currentZone = currentZone,
		inputType = state.displayOptions.inputType,
		isMainPageInForeground = isMainPageInForeground,
		isFavorited = state.gameInfo.isFavorited,
		gameDescription = state.gameInfo.description,
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
