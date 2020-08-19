local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local LoadingSpinner = require(UIBlox.App.Loading.LoadingSpinner)

local LoadingStatePage = Roact.PureComponent:extend("LoadingStatePage")

function LoadingStatePage:render()
	return Roact.createElement(LoadingSpinner, {
		size = UDim2.fromOffset(42, 42),
		position = UDim2.fromScale(0.5, 0.5),
		anchorPoint = Vector2.new(0.5, 0.5),
	})
end

return LoadingStatePage
