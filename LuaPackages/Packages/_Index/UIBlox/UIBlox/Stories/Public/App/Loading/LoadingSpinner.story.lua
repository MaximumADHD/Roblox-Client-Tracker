local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local LoadingSpinner = require(Packages.UIBlox.App.Loading.LoadingSpinner)

return {
	stories = {
		DefaultRate = Roact.createElement(LoadingSpinner, {
			position = UDim2.fromScale(0.5, 0.5),
			anchorPoint = Vector2.new(0.5, 0.5),
		}),
		HalfRate = Roact.createElement(LoadingSpinner, {
			position = UDim2.fromScale(0.5, 0.5),
			anchorPoint = Vector2.new(0.5, 0.5),
			rotationRate = 180,
		}),
	},
}
