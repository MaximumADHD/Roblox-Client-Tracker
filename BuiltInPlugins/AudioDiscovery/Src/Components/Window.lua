local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local DiscoverAudio = require(Plugin.Src.Thunks.DiscoverAudio)

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local LeftPanel = require(Plugin.Src.Components.LeftPanel)
local RightPanel = require(Plugin.Src.Components.RightPanel)

local Window = Roact.PureComponent:extend("Window")

function Window:render()
	local props = self.props
	local localization = props.Localization

	local TOP_BAR_HEIGHT = 34

	return Roact.createElement(Pane, {
		LayoutOrder = 2,
		Size = UDim2.new(1, 0, 1, 0),
		Layout = Enum.FillDirection.Horizontal,
	}, {
		Left = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			Size = UDim2.new(0.65, 0, 1, 0),
			Style = "Box",
			LayoutOrder = 1,
		}, {
			Top = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, TOP_BAR_HEIGHT),
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Padding = 5,
				LayoutOrder = 1,
			}, {
				Info = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = 1,
					Text = localization:getText("Plugin", "LeftPaneInfo") .. (" (%d)"):format(#props.Rows),
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = Enum.Font.SourceSansBold,
				}),
				Refresh = Roact.createElement(Button, {
					Text = localization:getText("Plugin", "Refresh"),
					OnClick = props.Refresh,
					Size = UDim2.fromOffset(80, 24),
					Position = UDim2.fromScale(1, 0),
					AnchorPoint = Vector2.new(1, 0),
					Style = "Round",
				}),
			}),
			Main = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 1, -TOP_BAR_HEIGHT),
				ClipsDescendants = true,
				LayoutOrder = 2,
			}, {
				Child = Roact.createElement(LeftPanel),
			}),
		}),
		Right = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			Size = UDim2.new(0.35, 0, 1, 0),
			Style = "Box",
			LayoutOrder = 2,
		}, {
			Top = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Padding = 5,
				LayoutOrder = 1,
			}, {
				Info = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Text = localization:getText("Plugin", "RightPaneInfo"),
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = Enum.Font.SourceSansBold,
				}),
			}),
			Main = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 1, -34),
				ClipsDescendants = true,
				LayoutOrder = 2,
			}, {
				Child = Roact.createElement(RightPanel),
			}),
		}),
	})
end

Window = withContext({
	Localization = Localization
})(Window)

return RoactRodux.connect(
	function(state, props)
		return {
			Rows = state.Audio.Rows,
		}
	end,
	function(dispatch)
		return {
			Refresh = function()
				dispatch(DiscoverAudio())
			end
		}
	end
)(Window)
