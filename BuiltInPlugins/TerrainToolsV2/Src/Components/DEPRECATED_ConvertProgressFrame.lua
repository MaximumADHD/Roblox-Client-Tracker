local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local DEPRECATED_ProgressFrame = require(Plugin.Src.Components.DEPRECATED_ProgressFrame)

local CoreGui = game:GetService("CoreGui")

local DEPRECATED_ConvertProgressFrame = Roact.PureComponent:extend(script.Name)

function DEPRECATED_ConvertProgressFrame:render()
	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		ConvertProgressFrame = Roact.createElement("ScreenGui", {}, {
			ProgressFrame = Roact.createElement(DEPRECATED_ProgressFrame, {
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

return DEPRECATED_ConvertProgressFrame
