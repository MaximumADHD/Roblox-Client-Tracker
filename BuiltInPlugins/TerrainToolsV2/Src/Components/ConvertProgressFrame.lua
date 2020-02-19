local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ProgressFrame = require(Plugin.Src.Components.ProgressFrame)

local CoreGui = game:GetService("CoreGui")

local ConvertProgressFrame = Roact.PureComponent:extend(script.Name)

function ConvertProgressFrame:render()
	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		ConvertProgressFrame = Roact.createElement("ScreenGui", {}, {
			ProgressFrame = Roact.createElement(ProgressFrame, {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),

				Title = self.props.Title,
				Progress = self.props.Progress,
				IsPaused = self.props.IsPaused,

				OnPauseButtonClicked = self.props.OnPauseRequested,
				OnCancelButtonClicked = self.props.OnCancelRequested,
			})
		})
	})
end

return ConvertProgressFrame
