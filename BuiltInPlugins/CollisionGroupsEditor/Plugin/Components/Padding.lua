local Roact = require(script.Parent.Parent.Parent.Roact)

return function(props)
	return Roact.createElement("UIPadding", {
		PaddingBottom = props.Padding,
		PaddingTop = props.Padding,
		PaddingLeft = props.Padding,
		PaddingRight = props.Padding,
	})
end