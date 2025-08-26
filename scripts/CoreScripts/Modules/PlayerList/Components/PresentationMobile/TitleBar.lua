--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = script.Parent.Parent.Parent
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local TitleBar = Roact.PureComponent:extend("TitleBar")

TitleBar.validateProps = t.strictInterface({
	Size = t.UDim2,
	Position = t.optional(t.UDim2),
	LayoutOrder = t.optional(t.integer),
	entrySize = t.integer,
	contentsVisible = t.boolean,
	showBackground = t.optional(t.boolean),
	isSmallTouchDevice = t.boolean,

	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		serverAddId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),
})

function TitleBar:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local children = {}

			children.UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})

			children.PlayersHeader = Roact.createElement("TextLabel", {
				LayoutOrder = 0,
				Size = UDim2.new(0, layoutValues.PlayerNameSizeXMobile, 1, 0),
				Text = RobloxTranslator:FormatByKey("InGame.PlayerList.Players"),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = style.Font.Footer.Font,
				TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
				TextColor3 = style.Theme.TextMuted.Color,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 14),
				}),
			})

			local maxLeaderstats = layoutValues.MaxLeaderstats

			for i, gameStat in ipairs(self.props.gameStats) do
				if i > maxLeaderstats then
					break
				end
				local statName = GameTranslator:TranslateGameText(CoreGui, gameStat.name)
				children["Stat_" .. gameStat.name] = Roact.createElement("TextLabel", {
					LayoutOrder = i,
					Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
					Text = statName,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					Font = style.Font.Footer.Font,
					TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
					TextTransparency = 0,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextTruncate = Enum.TextTruncate.AtEnd,
				})
			end

			return Roact.createElement("Frame", {
				Size = self.props.Size,
				Position = self.props.Position,
				LayoutOrder = self.props.LayoutOrder,
				Visible = self.props.contentsVisible,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, children)
		end)
	end)
end

local function mapStateToProps(state)
	return {
		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
	}
end

if FFlagPlayerListReduceRerenders then
	return React.memo(RoactRodux.connect(mapStateToProps, nil)(TitleBar))
end

return RoactRodux.connect(mapStateToProps, nil)(TitleBar)
