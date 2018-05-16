local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local FitTextLabel = require(Modules.LuaApp.Components.FitTextLabel)
local Line = require(Modules.LuaApp.Components.Line)
local TextTable = require(Modules.LuaApp.Components.TextTable)
local Constants = require(Modules.LuaApp.Constants)

local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)

local Details = Roact.Component:extend("Details")

local STAT_SECTION_LANDSCAPE_HEIGHT = 60
local STAT_SECTION_PORTRAIT_HEIGHT = 256

local function Layout(props)
	return Roact.createElement("UIListLayout", {
		Padding = props.Padding,
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Vertical,
	})
end

function Details:render()
	local gameDetail = self.props.gameDetail
	local layoutOrder = self.props.LayoutOrder
	local padding = self.props.padding
	local isMaxWidth = self.props.isMaxWidth

	local paddingDim = UDim.new(0, padding)
	local statsHeight = isMaxWidth and STAT_SECTION_LANDSCAPE_HEIGHT or STAT_SECTION_PORTRAIT_HEIGHT
	local statsFillDirection = isMaxWidth and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical

	local curLayout = 0
	local function nextLayout()
		curLayout = curLayout + 1
		return curLayout
	end

	return Roact.createElement(FitChildren.FitFrame, {
		LayoutOrder = layoutOrder,
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 0),
	}, {
		Layout = Roact.createElement(Layout, {
			Padding = paddingDim,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = paddingDim,
			PaddingRight = paddingDim,
			PaddingBottom = paddingDim,
			PaddingLeft = paddingDim,
		}),
		Description = Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			Text = gameDetail.description,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = nextLayout(),
		}),
		TopLine = Roact.createElement(Line, {
			LayoutOrder = nextLayout(),
		}),
		Stats = Roact.createElement(TextTable, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, statsHeight),
			FillDirection = statsFillDirection,
			LayoutOrder = nextLayout(),

			table = {
				{"Feature.GameDetails.Label.Playing", gameDetail.playing},
				{"Feature.GameDetails.Label.Visits", gameDetail.visits},
				{"Feature.GameDetails.Label.Created", gameDetail.created},
				{"Feature.GameDetails.Label.Updated", gameDetail.updated},
				{"Feature.GameDetails.Label.MaxPlayers", gameDetail.maxPlayers},
				{"Feature.GameDetails.Label.Genre", gameDetail.genre},
			},
			minorAxisProps = {
				{
					TextColor3 = Constants.Color.GRAY2,
				},
			},
		}),
		BottomLine = Roact.createElement(Line, {
			LayoutOrder = nextLayout(),
		}),
		Security = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 10),
			BackgroundTransparency = 1,
			LayoutOrder = nextLayout(),
		}, {
			Copylock = Roact.createElement(LocalizedTextLabel, {
				Size = UDim2.new(1, -100, 1, 0),
				Text = "Feature.GameDetails.Label.GameCopyLocked",
				TextColor3 = Constants.Color.GRAY3,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			ReportAbuse = Roact.createElement(LocalizedTextLabel, {
				Size = UDim2.new(0, 100, 1, 0),
				Position = UDim2.new(1, -100, 0, 0),
				Text = "Feature.GameDetails.Label.ReportAbuse",
				TextColor3 = Constants.Color.RED_PRIMARY,
				TextXAlignment = Enum.TextXAlignment.Right,
				BackgroundTransparency = 1,
			})
		}),
	})
end

return Details