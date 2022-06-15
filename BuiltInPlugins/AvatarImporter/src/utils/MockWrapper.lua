local root = script.Parent.Parent.Parent

local Roact = require(root.Packages.Roact)
local RoactRodux = require(root.Packages.RoactRodux)

local function MockWrapper(props)
	local store = props.store
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, props[Roact.Children])
end

return MockWrapper
