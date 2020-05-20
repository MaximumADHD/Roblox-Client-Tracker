local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local FFlagMinimizePlayerListWhenTopBarOpen
	= require(RobloxGui.Modules.Flags.FFlagMinimizePlayerListWhenTopBarOpen)

local FFlagPlayerListFixTitleBarTransparency = require(RobloxGui.Modules.Flags.FFlagPlayerListFixTitleBarTransparency)

local TitleBar = Roact.PureComponent:extend("TitleBar")

TitleBar.validateProps = t.strictInterface({
	Size = t.UDim2,
	LayoutOrder = t.integer,
	entrySize = t.integer,
	contentsVisible = FFlagMinimizePlayerListWhenTopBarOpen and t.boolean or nil,
	backgroundTransparency = FFlagPlayerListFixTitleBarTransparency and t.union(t.number, t.table) or nil,

	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),
})

function TitleBar:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local children = {}

			children.layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})

			local entrySizeX = self.props.entrySize

			children.playersHeader = Roact.createElement("TextLabel", {
				LayoutOrder = 1,
				Size = UDim2.new(0, entrySizeX, 1, 0),
				Text = RobloxTranslator:FormatByKey("InGame.PlayerList.Players"),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = style.Font.Footer.Font,
				TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
				TextTransparency = style.Theme.TextMuted.Transparency,
				TextColor3 = style.Theme.TextMuted.Color,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 15),
				})
			})

			for i, gameStat in ipairs(self.props.gameStats) do
				if i > layoutValues.MaxLeaderstats then
					break
				end
				local statName = GameTranslator:TranslateGameText(CoreGui, gameStat.name)
				children["stat_" .. gameStat.name] = Roact.createElement("TextLabel", {
					LayoutOrder = i + 1,
					Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
					Text = statName,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					Font = style.Font.Footer.Font,
					TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
					TextTransparency = style.Theme.TextMuted.Transparency,
					TextColor3 = style.Theme.TextMuted.Color,
					TextTruncate = Enum.TextTruncate.AtEnd,
				})
			end

			return Roact.createElement("Frame", {
				Size = self.props.Size,
				LayoutOrder = self.props.LayoutOrder,
				BackgroundTransparency = FFlagPlayerListFixTitleBarTransparency and self.props.backgroundTransparency
					or layoutValues.OverrideBackgroundTransparency,
				BackgroundColor3 = style.Theme.BackgroundContrast.Color,
				BorderSizePixel = 0,
			}, {
				Divider = Roact.createElement("Frame", {
					Visible = (not FFlagMinimizePlayerListWhenTopBarOpen) or self.props.contentsVisible,
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = style.Theme.Divider.Transparency,
					BackgroundColor3 = style.Theme.Divider.Color,
					BorderSizePixel = 0,
				}),

				ChildrenFrame = Roact.createElement("Frame", {
					Visible = (not FFlagMinimizePlayerListWhenTopBarOpen) or self.props.contentsVisible,
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0, -2), -- 2 pixel text offset due to 4 pixel rounded top.
					Size = UDim2.new(1, 0, 1, 0),
				}, children),
			})
		end)
	end)
end

return TitleBar