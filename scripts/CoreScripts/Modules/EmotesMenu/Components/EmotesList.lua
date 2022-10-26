--!nonstrict
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local tutils = require(CorePackages.tutils)
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local AvatarExperienceDeps = require(CorePackages.AvatarExperienceDeps)
local RoactFitComponents = AvatarExperienceDeps.RoactFitComponents

local ImageSet = UIBlox.Core.ImageSet
local Images = UIBlox.App.ImageSet.Images

local Components = script.Parent
local EmotesModules = Components.Parent
local Constants = require(EmotesModules.Constants)
local EmoteBubbleSizes = Constants.EmoteBubbleSizes
local Actions = EmotesModules.Actions
local getPlayersService = require(EmotesModules.Dependencies.getPlayersService)
local getCameraService = require(EmotesModules.Dependencies.getCameraService)

local EmoteBubble = require(Components.EmoteBubble)
local HideMenu = require(Actions.HideMenu)

local HORIZONTAL_PADDING = 9
local CANVAS_SIZE_PADDING = 20
local PORTRAIT_X_PADDING = 12

local CLOSE_BUTTON_SIZE = 28
local CLOSE_ICON_SIZE = 24
local CLOSE_BUTTON_ICON =  Images["icons/navigation/close"]

local DIVIDER_WIDTH = 3

local GRADIENT_TRANSPARENCY = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.18, 0),
	NumberSequenceKeypoint.new(0.79, 0),
	NumberSequenceKeypoint.new(1, 1),
})

local GAMEPAD_INPUT_TYPES = {
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
	[Enum.UserInputType.Gamepad5] = true,
	[Enum.UserInputType.Gamepad6] = true,
	[Enum.UserInputType.Gamepad7] = true,
	[Enum.UserInputType.Gamepad8] = true,
}

local ELEMENT_HEIGHT = EmoteBubbleSizes.BubblePadding + EmoteBubbleSizes.BubbleSize + EmoteBubbleSizes.TextPadding +
		EmoteBubbleSizes.TextSize
local KEYBINDS_PRIORITY = Enum.ContextActionPriority.High.Value
-- NAV_BINDINGS_PRIORITY needs to be higher than KEYBINDS_PRIORITY so that gamepad navigation takes
-- precedence over the open menu button
local NAV_BINDINGS_PRIORITY = Enum.ContextActionPriority.High.Value + 10

-- How many off-screen emote bubbles should render from the top and how many from the bottom
local RENDER_BUFFER = 2
-- How many emotes we should show onscreen at once
local NUM_ELEMENTS = 7

local EmotesList = Roact.PureComponent:extend("EmotesList")

EmotesList.validateProps = t.strictInterface({
	-- from mapStateToProps
	menuVisible = t.boolean,
	currentEmotes = t.map(t.integer, t.string),
	emotesInfo = t.map(t.string, t.array(t.integer)),
	layout = t.number,

	-- from mapDispatchToProps
	hideMenu = t.callback,
})

local function getOnScreenCharacterPosition(character)
	local primaryPart = character.PrimaryPart
	local camera = getCameraService()
	if primaryPart then
		return camera:WorldToScreenPoint(primaryPart.Position)
	else
		local orientation, _ = character:GetBoundingBox()
		return camera:WorldToScreenPoint(orientation.Position)
	end
end

function EmotesList:init()
	self.scrollingFrameRef = Roact.createRef()
	self.character = nil
	self:setState({
		focusedBubble = 0,
		isGamepad = GAMEPAD_INPUT_TYPES[UserInputService:GetLastInputType()],
		firstElementOnScreen = 1,
		lastElementOnScreen = NUM_ELEMENTS,
		viewportSize = getCameraService().ViewportSize,
		characterOnScreen = nil,
		characterScreenPos = Vector2.new(0, 0),
	})

	self.onScroll = function(rbx)
		-- Subtract EmoteBubbleSizes.BubblePadding here to account for the padding
		-- of the scrollingFrame from the top of the screen
		local firstElementOnScreen = math.ceil((rbx.CanvasPosition.Y - EmoteBubbleSizes.BubblePadding) / ELEMENT_HEIGHT) + 1
		local lastElementOnScreen =
			math.floor((rbx.CanvasPosition.Y + rbx.AbsoluteSize.Y) / ELEMENT_HEIGHT)

		self:setState({
			firstElementOnScreen = firstElementOnScreen,
			lastElementOnScreen = lastElementOnScreen,
		})
	end
end

function EmotesList:bindActions()
	if self.actionsBound then
		return
	end

	local function shiftFocusUp(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then
			local currFocusedBubble = self.state.focusedBubble
			if currFocusedBubble > 0 then
				self:setState({
					focusedBubble = currFocusedBubble - 1
				})
			end
		end
	end

	local function shiftFocusDown(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then
			local currFocusedBubble = self.state.focusedBubble
			local emoteCount = tutils.fieldCount(self.props.emotesInfo)
			if currFocusedBubble < emoteCount - 1 then
				self:setState({
					focusedBubble = currFocusedBubble + 1
				})
			end
		end
	end

	local function closeMenu(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then
			self.props.hideMenu()
		end
	end

	local closeButtons = {
		Constants.EmoteMenuCloseKey,
		Constants.EmoteMenuCloseButton,
		Constants.EmoteMenuCloseButtonSecondary
	}

	ContextActionService:BindActionAtPriority(Constants.ShiftFocusUpAction, shiftFocusUp, --[[createTouchButton = ]] false,
		NAV_BINDINGS_PRIORITY, Constants.EmoteMenuNavUpButton)
	ContextActionService:BindActionAtPriority(Constants.ShiftFocusDownAction, shiftFocusDown, --[[createTouchButton = ]] false,
		NAV_BINDINGS_PRIORITY, Constants.EmoteMenuNavDownButton)

	ContextActionService:BindActionAtPriority(Constants.CloseMenuAction, closeMenu, --[[createTouchButton = ]] false,
		KEYBINDS_PRIORITY, unpack(closeButtons))

	self.actionsBound = true
end

function EmotesList:unbindActions()
	if self.actionsBound then
		ContextActionService:UnbindAction(Constants.ShiftFocusUpAction)
		ContextActionService:UnbindAction(Constants.ShiftFocusDownAction)
		ContextActionService:UnbindAction(Constants.CloseMenuAction)

		self.actionsBound = false
	end
end

function EmotesList:didMount()
	if self.props.menuVisible then
		self:bindActions()
	end

	local players = getPlayersService()
	self.character = players.LocalPlayer.Character
	if self.character then
		local screenPos, onScreen = getOnScreenCharacterPosition(self.character)
		self:setState({
			characterScreenPos = screenPos,
			characterOnScreen = onScreen,
		})
	end
end

function EmotesList:getLayoutInfo()
	--[[
		Determine the size/position of the EmoteList based on screen size and orientation
		In portrait mode, the list appears above the touch jump button
		In landscape mode, the list appears to the left of the touch jump button
		Unless in compact landscape mode, allign the list vertically with the player
		If this interferes with touch jump ui in portrait mode, position the list directly above that ui
		If in compact landscape mode, the list extends vertically over the entire screen
	]]
	local characterScreenPosY = self.state.characterScreenPos.Y
	local isPortrait = self.state.viewportSize.X <= self.state.viewportSize.Y

	local LayoutConstants = Constants.Layouts[self.props.layout]
	local emotePositionFromLayout = LayoutConstants.EmotesListPosition
	local listHeight = ELEMENT_HEIGHT * NUM_ELEMENTS

	local fitFrameHeight = UDim.new(0, listHeight)
	local fitFrameAnchorPoint = Vector2.new(1, 0.5)
	local fitFramePosition
	if isPortrait then
		local yPos = -emotePositionFromLayout.Y.Offset
		local hasEnoughSpaceRelativeToCharacter = self.state.viewportSize.Y - characterScreenPosY - yPos > listHeight / 2

		local listHeightWithOffset
		if self.state.characterOnScreen and hasEnoughSpaceRelativeToCharacter then
			fitFramePosition = UDim2.new(1, -PORTRAIT_X_PADDING, 0, characterScreenPosY)
			listHeightWithOffset =
				self.state.viewportSize.Y - characterScreenPosY + listHeight / 2 + EmoteBubbleSizes.BubblePadding
		else
			fitFrameAnchorPoint = Vector2.new(1, 1)
			fitFramePosition = UDim2.new(1, -PORTRAIT_X_PADDING, 1, -yPos)
			listHeightWithOffset = yPos + listHeight + EmoteBubbleSizes.BubblePadding
		end
		-- if the number of elements we want to show exeeds the height of the topbar,
		-- make the height so the top of the list is underneath the topbar with padding
		local topGuiInset, _ = GuiService:GetGuiInset()
		local sizeLimit = self.state.viewportSize.Y - topGuiInset.Y
		if listHeightWithOffset > sizeLimit then
			fitFrameHeight = UDim.new(0, sizeLimit - EmoteBubbleSizes.BubblePadding - yPos)
		end
	else
		local xPos = emotePositionFromLayout.X.Offset + EmoteBubbleSizes.BubblePadding
		local spaceRelativeToCharacter = math.min(self.state.viewportSize.Y - characterScreenPosY, characterScreenPosY)
		local hasEnoughSpaceRelativeToCharacter = spaceRelativeToCharacter > listHeight / 2
		if listHeight > self.state.viewportSize.Y then
			fitFramePosition = UDim2.new(1, xPos, 0.5, 0)
			fitFrameHeight = UDim.new(1, 0)
		elseif self.state.characterOnScreen and hasEnoughSpaceRelativeToCharacter then
			fitFramePosition = UDim2.new(1, xPos, 0, characterScreenPosY)
		else
			fitFramePosition = UDim2.new(1, xPos, 0.5, 0)
		end
	end

	return fitFrameHeight, fitFrameAnchorPoint, fitFramePosition
end

function EmotesList:renderEmoteBubbles()
	local emotesChildren = {}
	local slottedEmotes = {}
	local equippedEmotes = self.props.currentEmotes
	local emotesInfoTable = self.props.emotesInfo
	local isGamepad = self.state.isGamepad
	local count = 0
	local y = EmoteBubbleSizes.BubblePadding

	for index, emoteName in pairs(equippedEmotes) do
		local emoteAssetIds = emotesInfoTable[emoteName]
		for _, emoteAssetId in pairs(emoteAssetIds) do
			if not slottedEmotes[emoteAssetId] then
				local offScreen = nil
				if count + 1 < self.state.firstElementOnScreen then
					offScreen = Constants.OffScreen.Top
				elseif count + 1 > self.state.lastElementOnScreen then
					offScreen = Constants.OffScreen.Bottom
				end
				local shouldRender = count + 1 + RENDER_BUFFER >= self.state.firstElementOnScreen and
					count + 1 - RENDER_BUFFER <= self.state.lastElementOnScreen
				emotesChildren["Emote" .. emoteAssetId] = shouldRender and Roact.createElement(EmoteBubble, {
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, y),
					emoteName = emoteName,
					emoteAssetId = emoteAssetId,
					slotIndex = index,
					focused = isGamepad and self.state.focusedBubble == count,
					scrollingFrameRef = self.scrollingFrameRef,
					offScreen = offScreen,
				})

				count = count + 1
				y = y + ELEMENT_HEIGHT
				slottedEmotes[emoteAssetId] = true
			end
		end
	end

	for emoteName, emoteAssetIds in pairs(emotesInfoTable) do
		for _, emoteAssetId in pairs(emoteAssetIds) do
			if not slottedEmotes[emoteAssetId] then
				local offScreen = nil
				if count + 1 < self.state.firstElementOnScreen then
					offScreen = Constants.OffScreen.Top
				elseif count + 1 > self.state.lastElementOnScreen then
					offScreen = Constants.OffScreen.Bottom
				end
				local shouldRender = count + 1 + RENDER_BUFFER >= self.state.firstElementOnScreen and
					count + 1 - RENDER_BUFFER <= self.state.lastElementOnScreen
				emotesChildren["Emote" .. emoteAssetId] = shouldRender and Roact.createElement(EmoteBubble, {
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, y),
					emoteName = emoteName,
					emoteAssetId = emoteAssetId,
					focused = isGamepad and self.state.focusedBubble == count,
					scrollingFrameRef = self.scrollingFrameRef,
					offScreen = offScreen,
				})

				count = count + 1
				y = y + ELEMENT_HEIGHT
			end
		end
	end

	return emotesChildren
end

function EmotesList:render()
	local emoteCount = tutils.fieldCount(self.props.emotesInfo)

	local leftOverSpace = 0
	local canvasHeight = ELEMENT_HEIGHT * emoteCount
	local scrollingFrame = self.scrollingFrameRef:getValue()
	if scrollingFrame and canvasHeight < scrollingFrame.AbsoluteSize.Y then
		leftOverSpace = scrollingFrame.AbsoluteSize.Y - canvasHeight
	end

	local selectedBubbleSize =
		EmoteBubbleSizes.BubbleSize + EmoteBubbleSizes.HighlightOffset + EmoteBubbleSizes.HighlightPadding
	local expandedBubbleSize = selectedBubbleSize * EmoteBubbleSizes.AnimScale

	local fitFrameHeight, fitFrameAnchorPoint, fitFramePosition = self:getLayoutInfo()

	return Roact.createElement(RoactFitComponents.FitFrameHorizontal, {
		Visible = self.props.menuVisible,
		height = fitFrameHeight,
		FillDirection = Enum.FillDirection.Horizontal,
		AnchorPoint = fitFrameAnchorPoint,
		BackgroundTransparency = 1,
		Position = fitFramePosition,
		contentPadding = UDim.new(0, HORIZONTAL_PADDING),
	}, {
		CloseFrame = Roact.createElement("Frame", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, CLOSE_BUTTON_SIZE, 1, 0),
		}, {
			CloseButton = Roact.createElement("ImageButton", {
				Size = UDim2.fromOffset(CLOSE_BUTTON_SIZE, CLOSE_BUTTON_SIZE),
				Position = UDim2.fromScale(0, 0.5),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 0.3,
				BackgroundColor3 = Constants.Colors.White,
				[Roact.Event.Activated] = self.props.hideMenu,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0.5, 0),
				}),

				CloseIcon = Roact.createElement(ImageSet.Label, {
					Image = CLOSE_BUTTON_ICON,
					Size = UDim2.fromOffset(CLOSE_ICON_SIZE, CLOSE_ICON_SIZE),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					BackgroundTransparency = 1,
					ImageColor3 = Constants.Colors.Black,
				}),
			}),
		}),

		ListDivider = Roact.createElement("Frame", {
			LayoutOrder = 2,
			Size = UDim2.new(0, DIVIDER_WIDTH, 1, 0),
			BackgroundColor3 = Constants.Colors.White,
			BorderSizePixel = 0,
		}, {
			UIGradient = Roact.createElement("UIGradient", {
				Rotation = 90,
				Transparency = GRADIENT_TRANSPARENCY,
			})
		}),

		EmotesScrollingFrameContainer = emoteCount > 0 and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 3,
			Size = UDim2.new(0, expandedBubbleSize, 1, 0),
		}, {
			EmotesScrollingFrame = Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.fromOffset(-(expandedBubbleSize / 2 - EmoteBubbleSizes.BubbleSize / 2), leftOverSpace / 2),
				CanvasSize = UDim2.new(1, 0, 0, canvasHeight + CANVAS_SIZE_PADDING),
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				ClipsDescendants = true,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				[Roact.Ref] = self.scrollingFrameRef,
				[Roact.Change.CanvasPosition] = self.onScroll,
			}, self:renderEmoteBubbles()),
		}),

		LastInputChangedListener = Roact.createElement(ExternalEventConnection, {
			event = UserInputService.LastInputTypeChanged,
			callback = function(lastInputType)
				local isGamepad = GAMEPAD_INPUT_TYPES[lastInputType]
				if isGamepad ~= self.state.isGamepad then
					self:setState({
						isGamepad = isGamepad
					})
				end
			end,
		}),

		ViewportSizeChangedListener = Roact.createElement(ExternalEventConnection, {
			event = Workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"),
			callback = function()
				self:setState({
					viewportSize = Workspace.CurrentCamera.ViewportSize,
				})
			end,
		}),
	})
end

function EmotesList:didUpdate(prevProps, prevState)
	if self.props.menuVisible ~= prevProps.menuVisible then
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame then
			if self.props.menuVisible then
				self:bindActions()
				-- determine which elements are on screen when opening the menu (before any scroll has occured)
				self.onScroll(scrollingFrame)
			else
				self:unbindActions()
				-- Reset focusedBubble and Scrolling Frame on emotes menu close
				self:setState({
					focusedBubble = 0
				})
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		end
	end

	if self.props.menuVisible and self.character then
		local isPortrait = self.state.viewportSize.X <= self.state.viewportSize.Y
		local wasPortrait = prevState.viewportSize.X <= prevState.viewportSize.Y
		-- Only change the position of the EmotesList while it is opened when changing orientation
		if isPortrait ~= wasPortrait then
			local screenPos, onScreen = getOnScreenCharacterPosition(self.character)
			self:setState({
				characterScreenPos = screenPos,
				characterOnScreen = onScreen,
			})
		end
	end
end

function EmotesList:willUnmount()
	self:unbindActions()
end

local function mapStateToProps(state)
	return {
		menuVisible = state.displayOptions.menuVisible,
		currentEmotes = state.emotesPage.currentEmotes,
		emotesInfo = state.emotesPage.emotesInfo,
		layout = state.layout,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		hideMenu = function()
			return dispatch(HideMenu())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmotesList)
