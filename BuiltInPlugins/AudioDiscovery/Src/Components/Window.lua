local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local DiscoverAudio = require(Plugin.Src.Thunks.DiscoverAudio)
local SetDialog = require(Plugin.Src.Actions.SetDialog)
local Unpause = require(Plugin.Src.Actions.Unpause)

local Framework = require(Plugin.Packages.Framework)
local UI = Framework.UI
local DropShadow = UI.DropShadow
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
	
	local pane = Roact.createElement(Pane, {
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

	if props.Paused then
		return Roact.createElement(Pane, {
			Style = "Box",
		}, {
			Pane = pane,
			Overlay = Roact.createElement(Pane, {
				Active = true,
				Style = "Box",
				BackgroundTransparency = 0.2,
				ZIndex = 2,
			}, {
				Dialog = Roact.createElement(Pane, {
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(400, 150),
				}, {
					DropShadow = Roact.createElement(DropShadow, {}, {
						Child = Roact.createElement(Pane, {
							Style = "Box",
							Layout = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Right,
							Padding = 20,
							Spacing = 5,
						}, {
							Title = Roact.createElement(TextLabel, {
								TextSize = 24,
								TextXAlignment = Enum.TextXAlignment.Left,
								Text = localization:getText("PausedDialog", "Title"),
								AutomaticSize = Enum.AutomaticSize.Y,
								Size = UDim2.fromScale(1, 0),
								LayoutOrder = 1,
							}),
							Text = Roact.createElement(TextLabel, {
								TextSize = 17,
								TextXAlignment = Enum.TextXAlignment.Left,
								Text = localization:getText("PausedDialog", "Text"),
								RichText = true,
								AutomaticSize = Enum.AutomaticSize.Y,
								Size = UDim2.fromScale(1, 0),
								TextWrapped = true,
								LayoutOrder = 2,
							}),
							Close = Roact.createElement(Button, {
								Text = localization:getText("PausedDialog", "Close"),
								OnClick = self.props.Unpause,
								Size = UDim2.fromOffset(120, 32),
								LayoutOrder = 3,
								Style = "Round",
							}),
						}),
					})
				})
			}),
		})

	elseif props.Dialog then
		return Roact.createElement(Pane, {
			Style = "Box",
		}, {
			Pane = pane,
			Overlay = Roact.createElement(Pane, {
				Active = true,
				Style = "Box",
				BackgroundTransparency = 0.2,
				ZIndex = 2,
			}, {
				Dialog = Roact.createElement(Pane, {
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(400, 250),
				}, {
					DropShadow = Roact.createElement(DropShadow, {}, {
						Child = Roact.createElement(Pane, {
							Style = "Box",
							Layout = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Right,
							Padding = 20,
							Spacing = 5,
						}, {
							Title = Roact.createElement(TextLabel, {
								TextSize = 24,
								TextXAlignment = Enum.TextXAlignment.Left,
								Text = localization:getText("Dialog", "Title"),
								AutomaticSize = Enum.AutomaticSize.Y,
								Size = UDim2.fromScale(1, 0),
								LayoutOrder = 1,
							}),
							Text = Roact.createElement(TextLabel, {
								TextSize = 17,
								TextXAlignment = Enum.TextXAlignment.Left,
								Text = localization:getText("Dialog", "Text"),
								RichText = true,
								AutomaticSize = Enum.AutomaticSize.Y,
								Size = UDim2.fromScale(1, 0),
								TextWrapped = true,
								LayoutOrder = 2,
							}),
							Close = Roact.createElement(Button, {
								Text = localization:getText("Dialog", "Close"),
								OnClick = props.CloseDialog,
								Size = UDim2.fromOffset(120, 32),
								LayoutOrder = 3,
								Style = "Round",
							}),
						}),
					})
				})
			}),
		})
	else
		return pane
	end
end

Window = withContext({
	Localization = Localization
})(Window)

return RoactRodux.connect(
	function(state, props)
		return {
			Paused = state.Audio.Paused,
			Dialog = state.Audio.Dialog,
			Rows = state.Audio.Rows,
		}
	end,
	function(dispatch)
		return {
			Refresh = function()
				dispatch(DiscoverAudio())
			end,
			CloseDialog = function()
				dispatch(SetDialog(false))
			end,
			Unpause = function()
				dispatch(Unpause())
				dispatch(DiscoverAudio())
			end
		}
	end
)(Window)
