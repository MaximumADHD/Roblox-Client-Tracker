local paths = require(script.Parent.Parent.Paths)

local RootApp = paths.Roact.Component:extend("ComponentRootApp")

function RootApp:init()
    self.state = {
        store = paths.Rodux.Store.new(paths.ReducerRoot, nil, {paths.Rodux.thunkMiddleware})
    }        
end

function RootApp:render()
    return paths.Roact.createElement(paths.RoactRodux.StoreProvider, {
        store = self.state.store,
    }, {        
        paths.Roact.createElement(paths.ComponentRootPanel)
    })
end

return RootApp