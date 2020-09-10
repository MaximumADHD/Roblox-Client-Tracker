local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Otter)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerEntry = require(script.Parent.PlayerEntry)
local TeamEntry = require(script.Parent.TeamEntry)
local PlayerDropDown = require(script.Parent.PlayerDropDown)
local TitleBar = require(script.Parent.TitleBar)

local PlayerList = Components.Parent

local FAKE_NEUTRAL_TEAM = require(PlayerList.GetFakeNeutralTeam)

local MOTOR_OPTIONS = {
    dampingRatio = 1,
    frequency = 4,
}

local RENDER_OUTSIDE_WINDOW_ELEMENTS = 3

local FFlagExtendPlayerScrollListWindowingForGamepadSelection = game:DefineFastFlag(
	"ExtendPlayerScrollListWindowingForGamepadSelection", false)

local PlayerListDisplay = Roact.PureComponent:extend("PlayerListDisplay")

PlayerListDisplay.validateProps = t.strictInterface({
	isVisible = t.boolean,
	isMinimized = t.boolean,
	isTenFootInterface = t.boolean,
	isUsingGamepad = t.boolean,

	screenSizeY = t.integer,
	entrySize = t.integer,

	sortedPlayers = t.array(t.instanceIsA("Player")),

	sortedTeams = t.optional(t.array(t.instanceIsA("Team"))),
	teamColorToPlayerMap = t.optional(t.map(t.integer, t.array(t.instanceIsA("Player")))),
	teamScores = t.optional(t.map(t.instanceIsA("Team"), t.map(t.string, t.any))),

	teamNames = t.map(t.instanceIsA("Team"), t.string),
	teamColors = t.map(t.instanceIsA("Team"), t.BrickColor),
	playerTeam = t.map(t.integer, t.instanceIsA("Team")),

	playerStats = t.map(t.integer, t.map(t.string, t.any)),
	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),

	playerIconInfo = t.map(t.integer, t.strictInterface({
		isPlaceOwner = t.boolean,
		avatarIcon = t.optional(t.table),
		specialGroupIcon = t.optional(t.table),
	})),

	playerRelationship = t.map(t.integer, t.strictInterface({
		isBlocked = t.boolean,
		friendStatus = t.enum(Enum.FriendStatus),
		isFollowing = t.boolean,
		isFollower = t.boolean,
	})),

	dropDownPlayer = t.optional(t.instanceIsA("Player")),
	dropDownVisible = t.boolean,
})

function PlayerListDisplay:init()
	self.scrollingFrameRef = Roact.createRef()
	self.firstPlayerRef = Roact.createRef()

	self.state = {
		containerSizeY = 100,
		scrollingFramePositionY = 0,
		lastCanvasPosition = Vector2.new(0, 0),
		contentsVisible = true,
	}

	self.absoluteSizeChanged = function(rbx)
		self:setState({
			containerSizeY = rbx.AbsoluteSize.Y,
		})
	end

	self.canvasPositionChanged = function(rbx)
		self:setState({
			lastCanvasPosition = rbx.CanvasPosition
		})
	end

	self.absolutePositionChanged = function(rbx)
		self:setState({
			scrollingFramePositionY = rbx.AbsolutePosition.Y,
		})
	end

	self.minimizedBinding, self.updateMinimizedBinding = Roact.createBinding(0)

	self.minimizedMotor = Otter.createSingleMotor(0)
	self.minimizedMotor:onStep(self.updateMinimizedBinding)
	self.minimizedMotor:onComplete(function(value)
		if value == 0 then
			self:setState({
				contentsVisible = true,
			})
		end
	end)
end

function PlayerListDisplay:inVerticalScrollWindow(position, size)
	local lowerBound = position + size
	if FFlagExtendPlayerScrollListWindowingForGamepadSelection then
		lowerBound = lowerBound + (size * RENDER_OUTSIDE_WINDOW_ELEMENTS)
	end

	if lowerBound < self.state.lastCanvasPosition.Y then
		return false
	end

	local upperBound = position
	if FFlagExtendPlayerScrollListWindowingForGamepadSelection then
		upperBound = upperBound - (size * RENDER_OUTSIDE_WINDOW_ELEMENTS)
	end

	if upperBound > self.state.lastCanvasPosition.Y + self.state.containerSizeY then
		return false
	end

	return true
end

function PlayerListDisplay:calculateDropDownAbsPosition(dropDownPosition, playerEntrySizeY)
	local scrollingFrame = self.scrollingFrameRef.current
	if scrollingFrame then
		dropDownPosition = dropDownPosition - scrollingFrame.CanvasPosition.Y
		if dropDownPosition + playerEntrySizeY >= scrollingFrame.AbsoluteSize.Y then
			local offset = dropDownPosition + playerEntrySizeY - scrollingFrame.AbsoluteSize.Y
			return dropDownPosition - offset, Vector2.new(0, scrollingFrame.CanvasPosition.Y + offset)
		end
		return dropDownPosition, nil
	end
	return dropDownPosition, nil
end

function PlayerListDisplay:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local entryPadding = layoutValues.EntryPadding
			local teamEntrySizeY = layoutValues.TeamEntrySizeY
			local playerEntrySizeY = layoutValues.PlayerEntrySizeY

			local childElements = {}

			local canvasSizeY = 0
			local dropDownPosition = 0

			if self.props.sortedTeams then
				local addedEntriesCount = 0
				local firstPlayer = true
				for i, sortedTeam in ipairs(self.props.sortedTeams) do
					if self:inVerticalScrollWindow(canvasSizeY, teamEntrySizeY) then
						childElements["t_" .. tostring(i)] =  Roact.createElement("Frame", {
							Position = UDim2.fromOffset(0, canvasSizeY),
							Size = UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.TeamEntrySizeY),
							BackgroundTransparency = 1,
						}, {
							Roact.createElement(TeamEntry, {
								teamName = self.props.teamNames[sortedTeam.team],
								teamColor = self.props.teamColors[sortedTeam.team],
								leaderstats = self.props.teamScores[sortedTeam.team],
								gameStats = self.props.gameStats,
								entrySize = self.props.entrySize,
							})
						})
					end
					addedEntriesCount = addedEntriesCount + 1
					canvasSizeY = canvasSizeY + teamEntrySizeY + entryPadding

					local teamPlayers
					if sortedTeam.team == FAKE_NEUTRAL_TEAM then
						teamPlayers = {}
						for _, player in ipairs(self.props.sortedPlayers) do
							if self.props.playerTeam[player.UserId] == nil then
								table.insert(teamPlayers, player)
							end
						end
					else
						teamPlayers = self.props.teamColorToPlayerMap[sortedTeam.team.TeamColor.Number] or {}
					end

					for j, player in ipairs(teamPlayers) do
						local userId = player.UserId
						if firstPlayer or self:inVerticalScrollWindow(canvasSizeY, playerEntrySizeY) then
							childElements["p_" .. tostring(player.UserId)] = Roact.createElement("Frame", {
								Position = UDim2.fromOffset(0, canvasSizeY),
								Size = UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY),
								BackgroundTransparency = 1,
							}, {
								Roact.createElement(PlayerEntry, {
									player = player,
									playerStats = self.props.playerStats[userId],
									playerIconInfo = self.props.playerIconInfo[userId],
									playerRelationship = self.props.playerRelationship[userId],
									titlePlayerEntry = false,
									gameStats = self.props.gameStats,
									hasDivider = not (j == #teamPlayers),
									entrySize = self.props.entrySize,

									[Roact.Ref] = firstPlayer and self.firstPlayerRef or nil,
								})
							})
						end
						firstPlayer = false

						if player == self.props.dropDownPlayer then
							dropDownPosition = canvasSizeY
						end

						canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
						addedEntriesCount = addedEntriesCount + 1
					end
				end
			else
				for i, player in ipairs(self.props.sortedPlayers) do
					if i == 1 or self:inVerticalScrollWindow(canvasSizeY, playerEntrySizeY) then
						childElements["p_" .. tostring(player.UserId)] = Roact.createElement("Frame", {
							Position = UDim2.fromOffset(0, canvasSizeY),
							Size = UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY),
							BackgroundTransparency = 1,
						}, {
							Roact.createElement(PlayerEntry, {
								player = player,
								playerStats = self.props.playerStats[player.UserId],
								playerIconInfo = self.props.playerIconInfo[player.UserId],
								playerRelationship = self.props.playerRelationship[player.UserId],
								titlePlayerEntry = false,
								gameStats = self.props.gameStats,
								hasDivider = i ~= #self.props.sortedPlayers,
								entrySize = self.props.entrySize,

								[Roact.Ref] = i == 1 and self.firstPlayerRef or nil,
							})
						})
					end

					if player == self.props.dropDownPlayer then
						dropDownPosition = canvasSizeY
					end

					canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
				end
			end

			local absDropDownPosition, canvasPositionOverride = self:calculateDropDownAbsPosition(
				dropDownPosition, playerEntrySizeY)

			if layoutValues.IsTenFoot then
				return Roact.createElement("Frame", {
					Position = layoutValues.PlayerScrollListPosition,
					Size = layoutValues.PlayerScrollListSize,
					BackgroundTransparency = 1,

					[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
				}, {
					ScollingFrame = Roact.createElement("ScrollingFrame", {
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						CanvasSize = UDim2.new(0, 0, 0, canvasSizeY),
						BackgroundTransparency = 1,
						ScrollBarImageColor3 = layoutValues.ScrollImageColor,
						ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollingEnabled = not self.props.dropDownVisible,
						Selectable = false,
						CanvasPosition = self.props.dropDownVisible and canvasPositionOverride or self.state.lastCanvasPosition,

						[Roact.Change.CanvasPosition] = self.canvasPositionChanged,

						[Roact.Ref] = self.scrollingFrameRef,
					}, childElements),
				})
			else
				local scrollingFrameMaxSizeY = self.state.containerSizeY - 8
				if #self.props.gameStats > 0 then
					scrollingFrameMaxSizeY = scrollingFrameMaxSizeY - layoutValues.TitleBarSizeY
				end

				local transparencyBinding = self.minimizedBinding:map(function(value)
					local defaultTransparency = layoutValues.OverrideBackgroundTransparency
					local fadedTransparency = layoutValues.FadedBackgroundTransparency
					local delta = fadedTransparency - defaultTransparency
					return defaultTransparency + (delta * value)
				end)

				local dropDownContentsVisible = self.state.contentsVisible

				return Roact.createElement("Frame", {
					Position = layoutValues.PlayerScrollListPosition,
					Size = layoutValues.PlayerScrollListSize,
					BackgroundTransparency = 1,

					[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
				}, {
					SizeOffsetFrame = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
					}, {
						UIScale = Roact.createElement("UIScale", {
							Scale = self.minimizedBinding:map(function(value)
								return 1 - (layoutValues.FadedBackgroundScaleDelta * value)
							end),
						}),

						UIListLayout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							VerticalAlignment = Enum.VerticalAlignment.Top,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
						}),

						TopRoundedRect = Roact.createElement("ImageLabel", {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Image = "rbxasset://textures/ui/TopRoundedRect8px.png",
							ImageColor3 = style.Theme.BackgroundContrast.Color,
							ImageTransparency = transparencyBinding,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(8, 8, 24, 16),
							SliceScale = 0.5,
							Size = UDim2.new(1, 0, 0, 4),
						}),

						TitleBar = #self.props.gameStats > 0 and Roact.createElement(TitleBar, {
							LayoutOrder = 2,
							contentsVisible = self.state.contentsVisible,
							backgroundTransparency = transparencyBinding,
							gameStats = self.props.gameStats,
							Size = UDim2.new(1, 0, 0, layoutValues.TitleBarSizeY),
							entrySize = self.props.entrySize,
						}),

						ScrollingFrameContainer = Roact.createElement("Frame", {
							LayoutOrder = 3,
							Position = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(1, 0, 0, math.min(canvasSizeY, scrollingFrameMaxSizeY)),
							BackgroundColor3 = style.Theme.BackgroundContrast.Color,
							BackgroundTransparency = transparencyBinding,
							BorderSizePixel = 0,

							[Roact.Change.AbsolutePosition] = self.absolutePositionChanged,
						}, {
							PlayerDropDown = Roact.createElement(PlayerDropDown, {
								contentsVisible = dropDownContentsVisible,
								selectedPlayer = self.props.dropDownPlayer,
								positionY = absDropDownPosition,
								minPositionBoundY = -self.state.scrollingFramePositionY + layoutValues.DropDownScreenSidePadding,
								maxPositionBoundY = (self.props.screenSizeY -
									self.state.scrollingFramePositionY - layoutValues.DropDownScreenSidePadding),
							}),

							ScrollingFrameClippingFrame = Roact.createElement("Frame", {
								Visible = self.state.contentsVisible,
								Size = UDim2.new(1, 0, 1, 0),
								BackgroundTransparency = 1,
								ClipsDescendants = true,
							}, {
								ScollingFrame = Roact.createElement("ScrollingFrame", {
									Size = UDim2.new(1, -layoutValues.ScrollBarOffset, 1, 0),
									CanvasSize = UDim2.new(0, 0, 0, canvasSizeY),
									BackgroundTransparency = 1,
									ScrollBarImageColor3 = layoutValues.ScrollImageColor,
									ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
									BorderSizePixel = 0,
									ScrollBarThickness = layoutValues.ScrollBarSize,
									VerticalScrollBarInset = Enum.ScrollBarInset.Always,
									ClipsDescendants = false,
									ScrollingEnabled = not self.props.dropDownVisible,
									Selectable = false,
									CanvasPosition = self.props.dropDownVisible and canvasPositionOverride or self.state.lastCanvasPosition,

									[Roact.Change.CanvasPosition] = self.canvasPositionChanged,

									[Roact.Ref] = self.scrollingFrameRef,
								}, {
									OffsetUndoFrame = Roact.createElement("Frame", {
										Size = UDim2.new(1, layoutValues.ScrollBarOffset + layoutValues.ScrollBarSize, 0, canvasSizeY),
										BackgroundTransparency = 1,
									}, childElements)
								}),
							})
						}),

						BottomRoundedRect = Roact.createElement("ImageLabel", {
							LayoutOrder = 4,
							BackgroundTransparency = 1,
							Image = "rbxasset://textures/ui/BottomRoundedRect8px.png",
							ImageColor3 = style.Theme.BackgroundContrast.Color,
							ImageTransparency = transparencyBinding,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(8, 8, 24, 16),
							SliceScale = 0.5,
							Size = UDim2.new(1, 0, 0, 4),
						}),
					}),
				})
			end
		end)
	end)
end

function PlayerListDisplay:didUpdate(prevProps)
	if self.props.isVisible ~= prevProps.isVisible then
		if self.props.isVisible then
			if self.props.isTenFootInterface and self.props.isUsingGamepad then
				GuiService.SelectedCoreObject = self.firstPlayerRef.current
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
			end
			GuiService:AddSelectionParent("PlayerlistGuiSelection", self.scrollingFrameRef.current)
		else
			if self.props.isTenFootInterface and self.props.isUsingGamepad then
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			end
			if GuiService.SelectedCoreObject and
				GuiService.SelectedCoreObject:IsDescendantOf(self.scrollingFrameRef.current) then
				GuiService.SelectedCoreObject = nil
			end
			GuiService:RemoveSelectionGroup("PlayerlistGuiSelection")
		end
	end

	if self.props.isMinimized ~= prevProps.isMinimized then
		self.minimizedMotor:setGoal(Otter.spring(self.props.isMinimized and 1 or 0, MOTOR_OPTIONS))
		if self.props.isMinimized then
			self:setState({
				contentsVisible = false,
			})
		end
	end
end

local function mapStateToProps(state)
	local isMinimized = state.displayOptions.isMinimized

	return {
		isVisible = state.displayOptions.isVisible,
		isMinimized = isMinimized,
		isTenFootInterface = state.displayOptions.isTenFootInterface,
		isUsingGamepad = state.displayOptions.isUsingGamepad,

		gameStats = state.gameStats,

		teamNames = state.teamNames,
		teamColors = state.teamColors,

		playerStats = state.playerStats,
		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
		playerTeam = state.playerTeam,

		dropDownPlayer = state.playerDropDown.selectedPlayer,
		dropDownVisible = state.playerDropDown.isVisible,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(PlayerListDisplay)
