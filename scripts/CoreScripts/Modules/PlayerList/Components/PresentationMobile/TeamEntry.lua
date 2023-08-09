--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local StatEntry = require(script.Parent.StatEntry)

local GetFFlagEnableAccessibilitySettingsEffectsInCoreScripts = require(RobloxGui.Modules.Flags.GetFFlagEnableAccessibilitySettingsEffectsInCoreScripts)

local TeamEntry = Roact.PureComponent:extend("TeamEntry")

function TeamEntry:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local teamName, teamColor
			if self.props.teamName then
				teamName = GameTranslator:TranslateGameText(CoreGui, self.props.teamName)
				teamColor = self.props.teamColor.Color
			else
				teamName = layoutValues.NeutralTeamName
				teamColor = layoutValues.NeutralTeamColor.Color
			end

			local settings = style.Settings

			local textStyle = style.Theme.TextEmphasis
			local textSize = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize
			local textFont = style.Font.CaptionHeader.Font

			local children = {}

			children.UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})

			children.NameFrame = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, layoutValues.PlayerNameSizeXMobile, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = textFont,
				TextSize = textSize,
				LayoutOrder = 0,
				TextColor3 = textStyle.Color,
				TextStrokeTransparency = textStyle.StrokeTransparency,
				TextStrokeColor3 = textStyle.StrokeColor,
				BackgroundTransparency = 1,
				Text = teamName,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, layoutValues.TeamEntryTextPaddingMobile),
				}),
			})

			for i, gameStat in ipairs(self.props.gameStats) do
				if i > layoutValues.MaxLeaderstats then
					break
				end
				children["GameStat_" .. gameStat.name] = Roact.createElement(StatEntry, {
					statValue = self.props.leaderstats[gameStat.name],
					isTitleEntry = false,
					isTeamEntry = true,
					textStyle = textStyle,
					layoutOrder = i,
				})
			end

			return Roact.createElement("Frame", {
				LayoutOrder = self.props.layoutOrder,
				Size = UDim2.new(1, 0, 0, layoutValues.TeamEntrySizeY),
				Position = self.props.Position,

				BackgroundTransparency = if GetFFlagEnableAccessibilitySettingsEffectsInCoreScripts() then settings.PreferredTransparency * 0.5 else 0.5,
				BackgroundColor3 = teamColor,
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

return RoactRodux.connect(mapStateToProps, nil)(TeamEntry)
