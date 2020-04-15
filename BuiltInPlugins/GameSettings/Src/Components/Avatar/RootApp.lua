local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Rodux = require(Plugin.Rodux)
local RoactRodux = require(Plugin.RoactRodux)

local ReducerRoot = require(Plugin.Src.Reducers.MorpherEditorRoot)

local RootPanel = require(Plugin.Src.Components.Avatar.RootPanel)

local RootApp = Roact.Component:extend("ComponentRootApp")

function RootApp:init()
	self.state = {
		store = Rodux.Store.new(ReducerRoot, nil, {Rodux.thunkMiddleware})
	}
end

function RootApp:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.state.store,
	}, {
		Roact.createElement(RootPanel, {
			Mouse = self.props.Mouse
		})
	})
end

return RootApp