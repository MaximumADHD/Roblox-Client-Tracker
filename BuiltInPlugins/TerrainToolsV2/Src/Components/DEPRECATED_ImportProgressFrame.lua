local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local DEPRECATED_ProgressFrame = require(Plugin.Src.Components.DEPRECATED_ProgressFrame)

local CoreGui = game:GetService("CoreGui")

local DEPRECATED_ImportProgressFrame = Roact.PureComponent:extend(script.Name)

function DEPRECATED_ImportProgressFrame:render()
	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		TerrainImportProgressFrame = Roact.createElement("ScreenGui", {}, {
			ProgressFrame = Roact.createElement(DEPRECATED_ProgressFrame, {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),

				Progress = self.props.ImportProgress,
			})
		})
	})
end

return DEPRECATED_ImportProgressFrame
