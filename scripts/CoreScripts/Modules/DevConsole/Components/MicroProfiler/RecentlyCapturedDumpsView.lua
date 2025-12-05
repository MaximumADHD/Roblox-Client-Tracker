local CorePackages = game:GetService("CorePackages")

local Constants = require(script.Parent.Parent.Parent.Constants)
local MicroProfilerPanel = require(script.Parent.MicroProfilerPanel)

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local RecentlyCapturedDumpsView = Roact.Component:extend("RecentlyCapturedDumpsView")

function RecentlyCapturedDumpsView:render()
	local recentDumpPaths: { string } = self.props.RecentDumpPaths or {}
	local dumpRows: { any } = {}

	for _, dumpPath in ipairs(self.props.RecentDumpPaths) do
		table.insert(dumpRows, {
			DumpPathLabel = Roact.createElement("TextBox", {
				Font = Constants.Font.Log,
				Text = dumpPath,
				TextColor3 = Constants.Color.Text,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				TextEditable = false,
				ClearTextOnFocus = false,
				ClipsDescendants = true,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants.MicroProfilerFormatting.RecentDumpPathPadding),
					PaddingRight = UDim.new(0, Constants.MicroProfilerFormatting.RecentDumpPathPadding),
				}),
			}),
		})
	end

	if #dumpRows == 0 then
		table.insert(dumpRows, {
			NoDumpsLabel = Roact.createElement("TextLabel", {
				Font = Constants.Font.MainWindow,
				Text = "No recently captured MicroProfiler dumps.",
				TextColor3 = Constants.Color.Text,
				TextSize = Constants.MicroProfilerFormatting.OptionTextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants.MicroProfilerFormatting.OptionTextPadding),
				}),
			}),
		})
	end

	return Roact.createElement(MicroProfilerPanel, {
		Title = "Recently captured MicroProfiler dumps",
		LayoutOrder = self.props.LayoutOrder,
		Sections = {
			{
				Name = "RecentlyCapturedDumps",
				Rows = dumpRows,
			},
		},
	})
end

local function mapStateToProps(state, props)
	return {
		RecentDumpPaths = state.MicroProfiler.recentDumpPaths,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(RecentlyCapturedDumpsView)
