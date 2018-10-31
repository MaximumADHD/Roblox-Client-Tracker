--[[
		A Roact play next game screen.
		Props:
			screenId : Variant
			zIndex : number
			ref : Roact.Ref
			focused : bool
			closeScreen : function()
			numOfGames : number
]]
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Otter = require(CorePackages.Otter)

local Settings = script.Parent.Parent.Parent
local Modules = Settings.Parent
local Common = Modules.Common
local Analytics = require(Common.Analytics)
local Constants = require(Settings.Pages.LeaveGameScreen.Constants)
local ResumeButton = require(Settings.Components.ResumeButton)
local LeaveButton = require(Settings.Components.LeaveButton)
local Utility = require(Settings.Utility)
local RobloxTranslator = require(Modules.RobloxTranslator)

--NOTE: This play next game view can be swaped different version such as one for touch and PC
local PlayNextGameView = require(Settings.Components.PlayNextGame.PlayNextGameXbox)

local ApiFetchRecentlyPlayedGames = require(Settings.Thunks.ApiFetchRecentlyPlayedGames)

local LEAVE_BUTTON_KEY = "LeaveButton"
local DONT_LEAVE_BUTTON_KEY = "DontLeaveButton"
local NEXT_GAME_LIST = "NextGameList"
local LEAVE_GAME_LABEL_KEY = "Feature.SettingsHub.Label.LeaveGame"

local LeaveGame = Roact.PureComponent:extend("LeaveGame")

local LEAVE_GAME_ALERT_SHOW_Y = 267
local LEAVE_GAME_ALERT_HIDE_Y = 183

-- NOTE: event context might need to be changed for other platforms.
local EVENT_CONTEXT = "XboxOne"
function LeaveGame:init()
	self.screenId = self.props.screenId or HttpService:GenerateGUID(false)
	self.ref = Roact.createRef()
	self.analytics = Analytics.new()
	self.motorOptions = {
		dampingRatio = 1,
		frequency = 5,
	}
	self.leaveButtonRef = Roact.createRef()
	self.resume = function()
		self.props.closeScreen()
	end
	self.enterNextGameList = function()
		if #self.props.gamesList == 0 then
			self:_selectButton()
			return
		end
		local eventName = "EnterNextGameList"
		self.analytics.EventStream:setRBXEventStream(EVENT_CONTEXT, eventName)
		self:setState({
				enterGameList = true
			})
	end

	self.leaveNextGameList = function()
		self:setState({
				enterGameList = false
			})
	end
	self.state = {
		enterGameList = false,
	}
end

function LeaveGame:willUpdate(nextProps, nextState)
	assert(self.props.screenId == nextProps.screenId)
end

function LeaveGame:render()
	local zIndex = self.props.zIndex or 1
	local leaveGameAlert = Roact.createElement("Frame", {
		Size = UDim2.new(0, 672, 0, 167),
		Position = UDim2.new(0.5, 0, 0, LEAVE_GAME_ALERT_SHOW_Y),
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.ref,
	},{
		LeaveGameText = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, 45),
			Position = UDim2.new(0.5, 0, 0, 0),
			AnchorPoint = Vector2.new(0.5, 0),
			Text = RobloxTranslator:FormatByKey(LEAVE_GAME_LABEL_KEY),
			Font = Enum.Font.SourceSans,
			FontSize = Enum.FontSize.Size36,
			TextColor3 = Constants.Color.WHITE,
			BackgroundTransparency = 1,
			TextWrapped = true,
			ZIndex = zIndex + 1,
		}),
		[LEAVE_BUTTON_KEY] = Roact.createElement(LeaveButton, {
			position = UDim2.new(0, 0, 1, 0),
			anchorPoint = Vector2.new(0, 1),
			objRef = self.leaveButtonRef,
			zIndex = zIndex,
		}),
		[DONT_LEAVE_BUTTON_KEY] = Roact.createElement(ResumeButton, {
			position = UDim2.new(1, 0, 1, 0),
			anchorPoint = Vector2.new(1, 1),
			onResume = self.resume,
			zIndex = zIndex,
		}),
		Redirect = Roact.createElement("Frame", {
			Size = UDim2.new(1.5, 0, 0, 1),
			Position = UDim2.new(0.5, 0, 1, 100),
			AnchorPoint = Vector2.new(0.5, 0),
			Selectable = true,
			BackgroundTransparency = 1,
			[Roact.Event.SelectionGained] = function()
				GuiService.SelectedCoreObject = nil
				self.enterNextGameList()
			end
		}),
	})
	local playNextGameView
	if #self.props.gamesList ~= 0 then
		playNextGameView = Roact.createElement(PlayNextGameView, {
			screenId = NEXT_GAME_LIST,
			focused = self.state.enterGameList,
			onLeaveNextGameList = self.leaveNextGameList,
			gamesData = self.props.gamesList,
			zIndex = zIndex,
		})
	end
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(25,25,25),
		BackgroundTransparency = 0.7,
		BorderSizePixel = 0,
		ZIndex = zIndex,
	},{
		LeaveGameAlert = leaveGameAlert,
		PlayNextGameView = playNextGameView,
	})
end

function LeaveGame:_selectButton()
	if self.props.focused then
		local buttonRef = self.leaveButtonRef
		local buttonObj = buttonRef and buttonRef.current or nil
		if buttonObj ~= nil then
			GuiService.SelectedCoreObject = buttonObj
		end
	end
end
function LeaveGame:didMount()
	if #self.props.gamesList ~= self.props.numOfGames then
		self.props.GetRecentlyPlayedGames(self.props.numOfGames, true)
	end
	delay(0, function()
		if self.props.focused and self.ref.current then
			GuiService:AddSelectionParent(self.screenId, self.ref.current)
		end
		self:_selectButton()
	end)
	self.motor = Otter.createSingleMotor(0)
	self.motor:onStep(function(value)
		local t = value/100
		if self.ref.current ~= nil then
			self.ref.current.Position = UDim2.new(0.5, 0, 0, Utility:Round(Utility:Lerp(t, LEAVE_GAME_ALERT_SHOW_Y, LEAVE_GAME_ALERT_HIDE_Y)))
		end
	end)
	self.motor:start()
	local eventName = "OpenedLeaveGameScreen"
	self.analytics.EventStream:setRBXEventStream(EVENT_CONTEXT, eventName)
end

function LeaveGame:didUpdate(previousProps, previousState)
	local targetPercentage = self.state.enterGameList and 100 or 0
	self.motor:setGoal(Otter.spring(targetPercentage, self.motorOptions))

	if self.state.enterGameList == true and
		self.props.focused == previousProps.focused then
		return
	end
	GuiService:RemoveSelectionGroup(self.screenId)
	if self.props.focused and self.ref.current then
		GuiService:AddSelectionParent(self.screenId, self.ref.current)
	end
	self:_selectButton()
end

function LeaveGame:willUnmount()
	GuiService:RemoveSelectionGroup(self.screenId)
	self.motor:destroy()
end

local function mapStateToProps(state, props)
	local currentUniverseId = game.GameId
	if state.RecentlyPlayedGamesFetchingStatus.fetching ~= false then
		return {
			gamesList = {}
		}
	end
	local recentlyPlayedGamesState = state.RecentlyPlayedGames
	local gameSort = recentlyPlayedGamesState.gameSort or {}
	--Fliter our the current game if it is in the sort
	local filteredSort = {}
	for i in ipairs(gameSort) do
		if gameSort[i].universeId ~= currentUniverseId then
			table.insert(filteredSort, gameSort[i])
		end
	end
	return {
		gamesList = filteredSort,
	}
end
local function mapDispatchToProps(dispatch)
	return
	{
		GetRecentlyPlayedGames = function(numOfGames, forceUpdate)
			return dispatch(ApiFetchRecentlyPlayedGames(numOfGames, forceUpdate))
		end,
	}
end
return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(LeaveGame)