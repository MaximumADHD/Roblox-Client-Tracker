local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local InputPane = require(Components.InputPane)

local EventEmulator = Roact.PureComponent:extend("EventEmulator")


function EventEmulator:render()
	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 1, 0),
		Background = Decoration.Box,
	},{
		InputPane = Roact.createElement(InputPane)
	})
end

ContextServices.mapToProps(EventEmulator, {
	Theme = ContextServices.Theme,
})

return EventEmulator