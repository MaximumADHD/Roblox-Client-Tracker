--[[
		A Roact play next game list section of the leave game screen.
		Props:
			screenId : Variant the screen id of this section.
			zIndex : number - Determines the order of UI element rendering.
			focused : bool - Determines if this section is focused.
			onLeaveNextGameList : function() - The callback function for when the selection leaves this section
]]
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Otter = require(CorePackages.Otter)

local Settings = script.Parent.Parent.Parent
local Modules = Settings.Parent
local Constants = require(Settings.Pages.LeaveGameScreen.Constants)
local GamesScrollList = require(Settings.Components.PlayNextGame.GamesScrollList)
local GameSelector = require(Settings.Components.PlayNextGame.GameSelector)
local Utility = require(Settings.Utility)
local RobloxTranslator = require(Modules.RobloxTranslator)

local PlayNextGameXbox = Roact.PureComponent:extend("PlayNextGameXbox")

local FRAME_HIDE_HEIGHT = 375
local FRAME_SHOW_HEIGHT = 547

local BG_HIDE_TRANSPARENCY = 1
local BG_SHOW_TRANSPARENCY = 0.5

local SELECTOR_HIDE_TRANSPARENCY = 1
local SELECTOR_SHOW_TRANSPARENCY = 0

local RECENTLY_PLAYED_LABEL = "Feature.SettingsHub.Label.RecentPlayed"

function PlayNextGameXbox:init()
	self.screenId = self.props.screenId
	self.ref = Roact.createRef()
	self.selectorRef = Roact.createRef()
	-- Initialize parameters for the spring motion
	self.motorOptions = {
		dampingRatio = 1,
		frequency = 5,
	}
	self.onMoveSelection = function(index)
		if self.state.currentSelection ~= index then
			self:setState({
				currentSelection = index
			})
		end
	end
	self.state =
	{
		currentSelection = 1,
		moveSelection = true,
	}
end

function PlayNextGameXbox:render()
	local props = self.props
	local focused = props.focused
	local backgroundTransparency = 1
	local selectorTransparency = focused and 0 or 1
	local gamesdata = self.props.gamesData
	local size = UDim2.new(1, 0, 0, FRAME_HIDE_HEIGHT)
	local zIndex = self.props.zIndex + 1
	local indicatorArrow;
	local gameTitle;
	local gameStats;
	local gameSelector;
	local dividerSize = UDim2.new(0, 864, 0, 2)
	if focused then
		local upVotes = gamesdata[self.state.currentSelection].totalUpVotes
		local downVotes = gamesdata[self.state.currentSelection].totalDownVotes
		local gameRating = 0
		if upVotes + downVotes ~= 0 then
			gameRating = math.floor(((upVotes / (upVotes + downVotes)) * 100) + 0.5);
		end
		gameTitle = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, 60),
			Position = UDim2.new(0.5, 0, 0, 355),
			AnchorPoint = Vector2.new(0.5, 0),
			Text = gamesdata[self.state.currentSelection].name,
			Font = Enum.Font.SourceSans,
			FontSize = Enum.FontSize.Size48,
			TextColor3 = Constants.Color.WHITE,
			BackgroundTransparency = 1,
			TextWrapped = true,
			ZIndex = zIndex,
		})
		gameStats = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 28),
			Position = UDim2.new(0.5, 0, 0, 420),
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
		},{
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 15),
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			GameRating = Roact.createElement("Frame", {
				Size = UDim2.new(0, 90, 0, 30),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			},{
				Icon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, 28, 0, 28),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Image = Constants.Image.THUMB_ICON,
					BackgroundTransparency = 1,
					ZIndex = zIndex,
				}),
				Text = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, 60, 0, 30),
					Position = UDim2.new(0, 36, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Text = tostring(gameRating)..' %',
					Font = Enum.Font.SourceSans,
					FontSize = Enum.FontSize.Size24,
					TextColor3 = Constants.Color.WHITE,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					ZIndex = zIndex,
				}),
			}),
			NumOfPlayers = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 30),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			},{
				Icon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, 28, 0, 28),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Image = Constants.Image.PLAYER_NUMBER_ICON,
					BackgroundTransparency = 1,
					ZIndex = zIndex,
				}),
				Text = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, 60, 1, 0),
					Position = UDim2.new(0, 36, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Text = tostring(gamesdata[self.state.currentSelection].playerCount),
					Font = Enum.Font.SourceSans,
					FontSize = Enum.FontSize.Size24,
					TextColor3 = Constants.Color.WHITE,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					ZIndex = zIndex,
				}),
			}),
		})
		gameSelector = Roact.createElement(GameSelector, {
			position = UDim2.new(0.5, 0, 0, 192),
			anchorPoint = Vector2.new(0.5, 0.5),
			imageTransparency = selectorTransparency,
			objRef = self.selectorRef,
			onActivated = self.onSelectGame,
			ZIndex = zIndex + 1,
		})
	else
		indicatorArrow = Roact.createElement("ImageLabel", {
			Image = Constants.Image.DOWN_ARROW,
			Size = UDim2.new(0, 24, 0, 12),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 40),
			BackgroundTransparency = 1,
			ZIndex = zIndex,
		})
	end
	return Roact.createElement("Frame", {
		Size = size,
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, 0),
		BackgroundTransparency = backgroundTransparency,
		BackgroundColor3 = Color3.fromRGB(1, 1, 1),
		BorderSizePixel = 0,
		ZIndex = zIndex,
		[Roact.Ref] = self.ref,
	},{
		LeftDivider = Roact.createElement("Frame", {
			Size = dividerSize,
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.new(0, 0, 0, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = Constants.Color.WHITE,
			ZIndex = zIndex,
		}),
		RightDivider = Roact.createElement("Frame", {
			Size = dividerSize,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = Constants.Color.WHITE,
			ZIndex = zIndex,
		}),
		NextGameListLabel = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0.5, 0, 0, -3),
			AnchorPoint = Vector2.new(0.5, 0.5),
			--TODO: Need to be localized.
			Text = RobloxTranslator:FormatByKey(RECENTLY_PLAYED_LABEL),
			Font = Enum.Font.SourceSans,
			FontSize = Enum.FontSize.Size24,
			TextColor3 = Constants.Color.WHITE,
			BackgroundTransparency = 1,
			TextWrapped = true,
			TextXAlignment = "Center",
			TextYAlignment = "Center",
			ZIndex = zIndex + 1,
		}),
		IndicatorArrow = indicatorArrow,
		GamesList = Roact.createElement("Frame",{
			Position = UDim2.new(0.5, 0, 0, 66),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(1, 0, 0, 232),
			BackgroundTransparency = 1,
		},{
			GamesScrollList = Roact.createElement(GamesScrollList,{
				focused = focused,
				onMoveSelection = self.onMoveSelection,
				gamesList = gamesdata,
				zIndex = zIndex,
			}),
		}),
		GameTitle = gameTitle,
		GameStats = gameStats,
		GameSelector = gameSelector,
		Redirect = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 10),
			Position = UDim2.new(0.5, 0, 0, -100),
			AnchorPoint = Vector2.new(0.5, 0),
			Selectable = true,
			BackgroundTransparency = 1,
			[Roact.Event.SelectionGained] = function()
				GuiService.SelectedCoreObject = nil
				self.props.onLeaveNextGameList()
			end
		}),
	})
end

function PlayNextGameXbox:didMount()
	delay(0, function()
		if self.props.focused and self.ref.current then
			GuiService:AddSelectionParent(self.screenId, self.ref.current)
		end
	end)
	self.motor = Otter.createSingleMotor(0)
	self.motor:onStep(function(value)
		local t = value/100
		if self.ref.current ~= nil then
			self.ref.current.Size = UDim2.new(1, 0, 0, Utility:Round(Utility:Lerp(t, FRAME_HIDE_HEIGHT, FRAME_SHOW_HEIGHT)))
			self.ref.current.BackgroundTransparency = Utility:Lerp(t, BG_HIDE_TRANSPARENCY, BG_SHOW_TRANSPARENCY)
		end
		if self.selectorRef.current ~= nil then
			self.selectorRef.current.ImageTransparency = Utility:Lerp(t, SELECTOR_HIDE_TRANSPARENCY, SELECTOR_SHOW_TRANSPARENCY)
		end
	end)
	self.motor:start()
end

function PlayNextGameXbox:didUpdate(previousProps, previousState)
	if self.props.focused == previousProps.focused then
		return
	end
	GuiService:RemoveSelectionGroup(self.screenId)
	if self.props.focused and self.ref.current then
		GuiService:AddSelectionParent(self.screenId, self.ref.current)
	end
	local targetPercentage = self.props.focused and 100 or 0
	self.motor:setGoal(Otter.spring(targetPercentage, self.motorOptions))
end

function PlayNextGameXbox:willUnmount()
	GuiService:RemoveSelectionGroup(self.screenId)
	self.motor:destroy()
end

return PlayNextGameXbox