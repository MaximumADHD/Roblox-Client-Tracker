local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Foundation = require(Packages.Foundation)
local Loading = Foundation.Loading
local IconSize = Foundation.Enums.IconSize

local LoadingStatePage = Roact.PureComponent:extend("LoadingStatePage")

function LoadingStatePage:render()
	return Roact.createElement(Loading, {
		size = IconSize.Medium,
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
	})
end

return LoadingStatePage
