local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local CellExtender = Roact.PureComponent:extend("CellExtender")

CellExtender.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	size = t.UDim2,

	backgroundStyle = t.strictInterface({
		Color = t.Color3,
		Transparency = t.number,
	}),
	overlayStyle = t.strictInterface({
		Color = t.Color3,
		Transparency = t.number,
	}),
	doubleOverlay = t.boolean,
})

function CellExtender:render()
	return Roact.createElement("Frame", {
		LayoutOrder = self.props.layoutOrder,
		Size = self.props.size,
		BackgroundTransparency = self.props.backgroundStyle.Transparency,
		BackgroundColor3 = self.props.backgroundStyle.Color,
		BorderSizePixel = 0,
	}, {
		DoubleOverLay = Roact.createElement("Frame", {
			ZIndex = 1,
			Visible = self.props.doubleOverlay,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = self.props.overlayStyle.Transparency,
			BackgroundColor3 = self.props.overlayStyle.Color,
			BorderSizePixel = 0,
		}),

		OverlayFrame = Roact.createElement("Frame", {
			ZIndex = 2,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = self.props.overlayStyle.Transparency,
			BackgroundColor3 = self.props.overlayStyle.Color,
			BorderSizePixel = 0,
		}),
	})
end

return CellExtender