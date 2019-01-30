local Roact = require(script.Parent.Parent.Parent.modules.roact)

return function(propsIn)
	local props = {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Event.Activated] = propsIn.OnActivated,
	}
	propsIn.OnActivated = nil

	for k, v in pairs(propsIn) do
		props[k] = v
	end

	return Roact.createElement("ImageButton", props)
end