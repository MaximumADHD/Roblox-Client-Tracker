local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local function TopBarLeaderstats(props)
	return WithLayoutValues(function(layoutValues)
		local topBarContainer = RobloxGui:FindFirstChild("TopBarContainer")
		if topBarContainer == nil then
			return nil
		end

		local leaderstatsContainer = topBarContainer:FindFirstChild("LeaderstatsContainer")
		if leaderstatsContainer == nil then
			return nil
		end

		local statColumns = {}
		statColumns["Layout"] = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, layoutValues.EntryPadding)
		})

		local statCount = math.min(layoutValues.MaxLeaderstats, #props.gameStats)
		for i = 1, statCount do
			local gameStat = props.gameStats[i]

			statColumns["Column" ..i] = Roact.createElement("Frame", {
				Size = UDim2.new(0, layoutValues.StatEntrySizeX , 1, 0),
				LayoutOrder = i,
				BackgroundTransparency = 1,
			}, {
				ColumnName = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 10),
					Text = gameStat.name,
					Position = UDim2.new(0, 0, 0, 4),
					Font = Enum.Font.SourceSans,
					TextSize = 14,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextColor3 = layoutValues.TextColor,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextXAlignment = Enum.TextXAlignment.Center,
				}),

				ColumnValue = Roact.createElement("TextLabel", {
					Text = gameStat.text,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Size = UDim2.new(1, 0, 0, 10),
					Position = UDim2.new(0, 0, 0, 19),
					Font = Enum.Font.SourceSansBold,
					TextSize = 14,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextColor3 = layoutValues.TextColor,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextXAlignment = Enum.TextXAlignment.Center,
				})
			})
		end

		local leaderstatsWidth = layoutValues.StatEntrySizeX * statCount + layoutValues.EntryPadding * (statCount - 1)
		leaderstatsContainer.Size = UDim2.new(0, leaderstatsWidth, 1, 0)

		return Roact.createElement(Roact.Portal, {
			target = leaderstatsContainer,
		}, statColumns)
	end)
end

local function mapStateToProps(state)
	return {
		gameStats = state.gameStats,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(TopBarLeaderstats)