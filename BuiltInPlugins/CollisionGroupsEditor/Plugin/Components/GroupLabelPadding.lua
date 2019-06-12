local Roact = require(script.Parent.Parent.Parent.modules.Roact)

return function(props)
	return Roact.createElement("UIPadding", {
		PaddingRight = UDim.new(0, 8),
		PaddingLeft = UDim.new(0, 4),
	})
end