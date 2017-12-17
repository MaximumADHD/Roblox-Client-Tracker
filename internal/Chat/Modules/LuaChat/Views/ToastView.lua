local Modules = script.Parent.Parent
local Components = Modules.Components

local ToastComponent = require(Components.ToastComponent)
local BaseScreen = require(Modules.Views.Phone.BaseScreen)

local ToastView = BaseScreen:Template()
ToastView.__index = ToastView

function ToastView.new(appState, route)
	local self = {}
	self.appState = appState
	self.route = route
	setmetatable(self, ToastView)

	self.ToastComponent = ToastComponent.new(appState, route)
	self.rbx = self.ToastComponent.rbx

	return self
end

return ToastView