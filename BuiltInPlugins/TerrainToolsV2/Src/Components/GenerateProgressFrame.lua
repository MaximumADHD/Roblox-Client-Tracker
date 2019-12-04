local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ProgressFrame = require(Plugin.Src.Components.ProgressFrame)

local CoreGui = game:GetService("CoreGui")

local GenerateProgressFrame = Roact.PureComponent:extend(script.Name)

function GenerateProgressFrame:render()
	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		TerrainGenerationProgressFrame = Roact.createElement("ScreenGui", {}, {
			ProgressFrame = Roact.createElement(ProgressFrame, {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),

				Progress = self.props.GenerateProgress,
				IsPaused = self.props.IsPaused,

				OnPauseButtonClicked = self.props.OnPauseRequested,
				OnCancelButtonClicked = self.props.OnCancelRequested,
			})
		})
	})
end

return GenerateProgressFrame
