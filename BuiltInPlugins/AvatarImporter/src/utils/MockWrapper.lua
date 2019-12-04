local root = script.Parent.Parent.Parent

local lib = root.lib
local Roact = require(lib.Roact)
local RoactRodux = require(lib.RoactRodux)

local function MockWrapper(props)
	local store = props.store
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, props[Roact.Children])
end

return MockWrapper
