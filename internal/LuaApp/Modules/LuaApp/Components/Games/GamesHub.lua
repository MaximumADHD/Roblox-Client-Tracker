local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local GameCarousel = require(Modules.LuaApp.Components.Games.GameCarousel)

local GamesHub = Roact.Component:extend("GamesHub")

local SIDE_PADDING = 15
local INTERNAL_PADDING = 20

-- This is a SUPER HACKY way of getting the screen resolution, as part of the work-around for lacking SizeFromContents.
--   MPowell 10/2017
local function GetScreenRes()
	local screenGui = Instance.new("ScreenGui", game.StarterGui)
	local screenRes = screenGui.AbsoluteSize
	screenGui:Destroy()
	return screenRes
end

function GamesHub:render()
	local gameSorts = self.props.gameSorts
	local games = self.props.games

	local width = GetScreenRes().x

	local elements = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = "LayoutOrder",
			FillDirection = "Vertical",
			Padding = UDim.new(0, INTERNAL_PADDING),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}
	local height = 0
	local curLayoutOrder = 1
	local function NextLayoutOrder()
		local oldLayoutOrder = curLayoutOrder
		curLayoutOrder = curLayoutOrder + 1
		return oldLayoutOrder
	end

	local count = 0
	for _, sort in ipairs(gameSorts) do
		if sort.isDefaultSort then
			elements["Sort " .. sort.name] = Roact.createElement(GameCarousel, {
				sort = sort,
				games = games,
				width = width,
				LayoutOrder = NextLayoutOrder(),
			})
			height = height + GameCarousel.height(sort.name, width)
			count = count + 1
		end
	end

	height = height + INTERNAL_PADDING*(count-1)

	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(1, 0, 0, height + SIDE_PADDING*2),
		BackgroundColor3 = Constants.Color.GRAY4,
		ScrollBarThickness = 0,
		BorderSizePixel = 0,
	}, elements)
end

return GamesHub