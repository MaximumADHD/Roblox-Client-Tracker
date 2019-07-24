--[[
	Example Component that shows we can properly launch and respond to http network requests.

	Use Asynchronous http request to get 10 games for a user, and display the names in a text field
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local SetGames = require(Plugin.Src.Actions.SetGames)
local LoadExistingGames = require(Plugin.Src.Thunks.LoadExistingGames)

local Theming = require(Plugin.Src.ContextServices.Theming)

local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing


local StartScreen = Roact.Component:extend("StartScreen")

function StartScreen:init(props)
	self.state = {}
end

function StartScreen:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)

			local games = self.props.Games
			local gamesLock = self.props.GamesLock
			local dispatchClearGames = self.props.DispatchClearGames
			local dispatchLoadExistingGames = self.props.DispatchLoadExistingGames

			local displayText
			if gamesLock then
				displayText = localization:getText("General", "LoadingGames")
			elseif next(games) == nil then
				displayText = localization:getText("General", "NoGamesAvailable")
			else
				local d = {}
				for _,v in pairs(games) do
					table.insert(d, v.name)
				end
				displayText = table.concat(d, "\n")
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.BackgroundColor,
			}, {
				Roact.createElement("TextButton", {
					Size = UDim2.new(0.2, 0, 0.16, 0),
					Position = UDim2.new(0.3, 0, 0.1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BorderSizePixel = 3,
					Style = 4,
					TextSize = 18,
					Text = localization:getText("General","ResetGames"),
					[Roact.Event.Activated] = function()
						if not gamesLock then
							dispatchClearGames()
						end
					end,
				}),

				Roact.createElement("TextButton", {
					Size = UDim2.new(0.2, 0, 0.16, 0),
					Position = UDim2.new(0.7, 0, 0.1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BorderSizePixel = 3,
					Style = 4,
					TextSize = 18,
					Active = not gamesLock,
					Text = localization:getText("General","LoadGames"),
					[Roact.Event.Activated] = function()
						if not gamesLock then
							dispatchLoadExistingGames()
						end
					end,
				}),

				Roact.createElement("TextLabel", {
					Size = UDim2.new(0.8, 0, 0.56, 0),
					Position = UDim2.new(0.5, 0, 0.4, 0),
					AnchorPoint = Vector2.new(0.5, 0),
					BorderSizePixel = 3,
					TextSize = 10,
					TextWrapped = true,
					Text = displayText,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or { MainWindow = {}, }
	return {
		games = state.ExistingGame.games,
		gamesLock = state.ExistingGame.gamesLock,
	}
end

local function useDispatchForProps(dispatch)
	return {
		dispatchClearGames = function()
			dispatch(SetGames())
		end,
		dispatchLoadExistingGames = function()
			dispatch(LoadExistingGames())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(StartScreen)
